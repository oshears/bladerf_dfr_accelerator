library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY DFR_FSM IS
   PORT(
      clk                     : IN  STD_LOGIC;
      reset                   : IN  STD_LOGIC;
      dfr_done                : IN  STD_LOGIC;
      dfr_next_sample         : IN  STD_LOGIC;
      rx_sample_fifo_rreq     : IN  STD_LOGIC;
      dfr_start               : OUT STD_LOGIC;
      rx_sample_fifo_rempty   : OUT STD_LOGIC
   );
END DFR_FSM;

ARCHITECTURE a OF DFR_FSM IS

   TYPE STATE_TYPE IS (s0, s1, s2);
   SIGNAL state   : STATE_TYPE;

   BEGIN
   PROCESS (clk, reset)
   BEGIN
      IF reset = '1' THEN
         state <= s0;
      ELSIF (clk'EVENT AND clk = '1') THEN
         CASE state IS
            WHEN s0=>
               IF dfr_done = '1' THEN
                  state <= s1;
               ELSE
                  state <= s0;
               END IF;
            WHEN s1=>
               IF dfr_done = '1' THEN
                  state <= s2;
               ELSE
                  state <= s1;
               END IF;
            WHEN s2=>
               IF dfr_done = '1' THEN
                  state <= s0;
               ELSE
                  state <= s2;
               END IF;
         END CASE;
      END IF;
   END PROCESS;
   
   PROCESS (state)
   BEGIN
      CASE state IS
         WHEN s0 =>
            dfr_start <= '0';
         WHEN s1 =>
            dfr_start <= '0';
         WHEN s2 =>
            dfr_start <= '0';
      END CASE;
   END PROCESS;
   
END a;