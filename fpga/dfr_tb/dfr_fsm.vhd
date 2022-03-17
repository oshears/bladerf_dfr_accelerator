library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY DFR_FSM IS
   PORT(
      clk         : IN   STD_LOGIC;
      reset       : IN   STD_LOGIC;
      dfr_done    : IN   STD_LOGIC;
      dfr_busy    : IN   STD_LOGIC;
      dfr_input_count : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dfr_input_count_reset : OUT STD_LOGIC;
      dfr_input_count_inc : OUT STD_LOGIC;
      dfr_resetn : OUT STD_LOGIC;
      dfr_start   : OUT   STD_LOGIC;
      dfr_output_ram_wen : OUT STD_LOGIC;
      dfr_fsm_done : OUT STD_LOGIC;
      dfr_fsm_waiting : OUT STD_LOGIC;
      dfr_fsm_led : OUT STD_LOGIC_VECTOR(3 DOWNTO 1)
   );
END DFR_FSM;


ARCHITECTURE arch OF DFR_FSM IS

   TYPE STATE_TYPE IS (DFR_FSM_IDLE, DFR_FSM_INPUT_DATA_WAIT_1, DFR_FSM_INPUT_DATA_WAIT_2, DFR_FSM_START, DFR_FSM_WAIT_BUSY, DFR_FSM_WAIT, DFR_WRITE_RAM_STATE, DFR_FSM_DONE_STATE);

   SIGNAL state   : STATE_TYPE := DFR_FSM_IDLE;
   SIGNAL next_state   : STATE_TYPE := DFR_FSM_IDLE;

   BEGIN

   PROCESS (clk, reset)
   BEGIN
      -- seems like reset stays high when the device is not in use
      IF reset = '1' THEN
         state <= DFR_FSM_IDLE;
      ELSIF (clk'EVENT AND clk = '1') THEN
         state <= next_state;
      END IF;
   END PROCESS;

   process(state,dfr_input_count,dfr_done,dfr_busy)
   begin
      -- TODO for DEBUG: Try to figure out why it is stuck in reset (none of the start, done or waiting bits are high...)
      
      dfr_input_count_reset <= '0';
      dfr_resetn <= '1';
      dfr_start <= '0';
      dfr_output_ram_wen <= '0';
      dfr_input_count_inc <= '0';
      dfr_fsm_done <= '0';
      dfr_fsm_waiting <= '0';

      dfr_fsm_led <= "111";

      next_state <= state;

      CASE state IS
         WHEN DFR_FSM_IDLE =>
            -- reset input counter
            dfr_input_count_reset <= '1';
            
            -- reset DFR
            dfr_resetn <= '0';

            -- TODO, DFR IP is stuck in busy for some reason?
            next_state <= DFR_FSM_INPUT_DATA_WAIT_1;
            -- next_state <= DFR_FSM_DONE_STATE;

            dfr_fsm_led <= "110";
         
         when DFR_FSM_INPUT_DATA_WAIT_1 =>
            -- after a one cycle delay for the ROM input data, trigger the start bit
            next_state <= DFR_FSM_INPUT_DATA_WAIT_2;
            dfr_fsm_led <= "010";
         when DFR_FSM_INPUT_DATA_WAIT_2 =>
            -- after a one cycle delay for the ROM input data, trigger the start bit
            next_state <= DFR_FSM_START;
            dfr_fsm_led <= "010";
         WHEN DFR_FSM_START =>
            -- start DFR
            dfr_start <= '1';

            next_state <= DFR_FSM_WAIT_BUSY;
            dfr_fsm_led <= "101";
         WHEN DFR_FSM_WAIT_BUSY =>
            dfr_start <= '1';

            -- wait until bus is low to indicate the signal has been latched
            if (dfr_busy = '0') then
               next_state <= DFR_FSM_WAIT;
            elsif (dfr_done = '1') then
               -- write output to RAM
               dfr_output_ram_wen <= '1';

               next_state <= DFR_WRITE_RAM_STATE;
            end if;
            dfr_fsm_led <= "100";
         WHEN DFR_FSM_WAIT =>
            dfr_fsm_waiting <= '1';
            -- if DFR is done
            if (dfr_done = '1') then

               -- write output to RAM
               dfr_output_ram_wen <= '1';

               next_state <= DFR_WRITE_RAM_STATE;
            else
               -- stay in this state otherwise
               next_state <= DFR_FSM_WAIT;
            end if;
            dfr_fsm_led <= "011";
         when DFR_WRITE_RAM_STATE =>
            -- check if counter is equal to 3
            if (dfr_input_count(2 downto 0) = "011") then
               -- go to done state
               next_state <= DFR_FSM_DONE_STATE;
            else
               -- increment counter
               dfr_input_count_inc <= '1';

               -- go to dfr start
               next_state <= DFR_FSM_INPUT_DATA_WAIT_1;
            end if;
         when DFR_FSM_DONE_STATE =>
            dfr_fsm_done <= '1';
            next_state <= DFR_FSM_DONE_STATE;
            dfr_fsm_led <= "001";
         WHEN OTHERS =>
            next_state <= DFR_FSM_IDLE;
            dfr_fsm_led <= "000";
      END CASE;
   end process;
   
END arch;