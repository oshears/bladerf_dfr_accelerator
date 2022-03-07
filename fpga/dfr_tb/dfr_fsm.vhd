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
      dfr_fsm_done : OUT STD_LOGIC
   );
END DFR_FSM;


ARCHITECTURE arch OF DFR_FSM IS

   TYPE STATE_TYPE IS (DFR_FSM_IDLE, DFR_FSM_START, DFR_FSM_WAIT_BUSY, DFR_FSM_WAIT, DFR_FSM_DONE_STATE);

   SIGNAL state   : STATE_TYPE;
   SIGNAL next_state   : STATE_TYPE;

   BEGIN

   PROCESS (clk, reset)
   BEGIN
      IF reset = '1' THEN
         state <= DFR_FSM_IDLE;
      ELSIF (clk'EVENT AND clk = '1') THEN
         state <= next_state;
      END IF;
   END PROCESS;

   process(state,dfr_input_count,dfr_done,dfr_busy)
   begin
      
      dfr_input_count_reset <= '0';
      dfr_resetn <= '1';
      dfr_start <= '0';
      dfr_output_ram_wen <= '0';
      dfr_input_count_inc <= '0';
      dfr_fsm_done <= '0';

      CASE state IS
         WHEN DFR_FSM_IDLE =>
            -- reset input counter
            dfr_input_count_reset <= '1';
            
            -- reset DFR
            dfr_resetn <= '0';

            next_state <= DFR_FSM_START;
         WHEN DFR_FSM_START =>
            -- start DFR
            dfr_start <= '1';

            next_state <= DFR_FSM_WAIT_BUSY;
         WHEN DFR_FSM_WAIT_BUSY =>
            dfr_start <= '1';

            -- wait until bus is low to indicate the signal has been latched
            if (dfr_busy = '0') then
               next_state <= DFR_FSM_WAIT;
            end if;
         WHEN DFR_FSM_WAIT =>
            -- if DFR is done
            if (dfr_done = '1') then

               -- write output to RAM
               dfr_output_ram_wen <= '1';

               -- check counter less than 4
               if (dfr_input_count(2) = '1') then
                  -- go to done state
                  next_state <= DFR_FSM_DONE_STATE;
               else
                  -- increment counter
                  dfr_input_count_inc <= '1';

                  -- go to dfr start
                  next_state <= DFR_FSM_START;
               end if;
            else
               -- stay in this state otherwise
               next_state <= DFR_FSM_WAIT;
            end if;
         when DFR_FSM_DONE_STATE =>
            dfr_fsm_done <= '1';
            next_state <= DFR_FSM_DONE_STATE;
         WHEN OTHERS =>
            next_state <= DFR_FSM_IDLE;
      END CASE;
   end process;
   
END arch;