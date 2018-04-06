
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity uart is

    Generic(word : integer := 8;
            sample : integer := 16;
            W : integer := 5;
            M : integer := 27
    
    );
    --Ports
    Port (clk : in std_logic;
          reset : in std_logic;
          rx : in std_logic;
          --rd_uart : in std_logic;
          --wr_uart : in std_logic;
			 --wr_data : in std_logic_vector(word-1 downto 0);
          tx : out std_logic;
          rx_full : out std_logic;
          tx_full : out std_logic;
          rx_empty : out std_logic;
          r_data : out std_logic_vector(word-1 downto 0);
			 rx1 : out std_logic;
			 tx1 : out std_logic
    );
end uart;

architecture Behavioral of uart is
    
    --Components
    component transmiter is
      --Generics  
      Generic(word : integer := 8;
              sample : integer := 16
      );  
    
      -- Ports
      Port (clk : in std_logic;
            reset : in std_logic;
            tx_start : in std_logic;
            w_data : in std_logic_vector (word-1 downto 0);
            s_tick : in std_logic;
            tx : out std_logic;
            tx_done : out std_logic
      );
      
    end component;
    
    component receiver is
        --Generics
        Generic(
            word : integer := 8;
            sample : integer := 16
        );
        --Ports
        Port ( clk : in std_logic;
               reset : in std_logic; 
               s_tick : in std_logic;
               rx : in std_logic;
               dout : out std_logic_vector(word-1 downto 0);
               rx_done : out std_logic
        );
        
    end component;
    
    component m_mod is
        --Generics
      Generic(N : integer := 4;
              M : integer := 10
              );
        -- Ports
      Port (clk : in std_logic;
            reset : in std_logic;
            m_tick : out std_logic;
            output : out std_logic_vector(N-1 downto 0)
            );
    end component;
    
    component fifo is
        --Generics
        generic(N : integer := 8;
                W : integer := 4
        );
        --Ports
        port(
        clk : in std_logic;
        reset : in std_logic;
        w_data : in std_logic_vector(N-1 downto 0);
        rd : in std_logic;
        wr : in std_logic;
        full : out std_logic;
        empty : out std_logic;
        r_data : out std_logic_vector(N-1 downto 0)
        );
    end component;
    
    --Signals
    signal tick : std_logic;
    signal data_r : std_logic_vector (word-1 downto 0);
    signal rx_done_tick : std_logic;
    signal data_t : std_logic_vector (word-1 downto 0);
    signal tx_done_tick : std_logic;
    signal fifo_em : std_logic;
    signal fifo_n_em : std_logic;
	 signal tx_h : std_logic;

begin

    m_mod_map: m_mod generic map(N => word, M => M) port map (clk => clk,
                                                           reset => reset,
                                                           output => open,
                                                           m_tick => tick
    );

    receiver_map: receiver generic map(word => word, sample => sample) port map(clk => clk,
                                                                                reset => reset,
                                                                                s_tick => tick,
                                                                                dout => data_r,
                                                                                rx => rx,
																										  rx_done => rx_done_tick
    );
    
--    fifo_receiver_map: fifo generic map (N => word, W => W) port map (clk => clk,
--                                                                   reset => reset,
--                                                                   r_data => r_data,
--                                                                   w_data => data_r,
--                                                                   full => rx_full,
--                                                                   empty => rx_empty,
--                                                                   rd => rd_uart,
--                                                                   wr => rx_done_tick
--    );
--    
    transmiter_map: transmiter generic map (word => word, sample => sample) port map(clk => clk,
                                                                                     reset => reset,
                                                                                     s_tick => tick,
                                                                                     w_data => data_t,
                                                                                     tx_done => tx_done_tick,
                                                                                     tx => tx_h,
                                                                                     tx_start => fifo_n_em                                                                                   
    );

    fifo_transmiter_map: fifo generic map (N => word, W => W) port map (clk => clk,
                                                                        reset => reset,
                                                                        r_data => data_t,
                                                                        w_data => data_r,
                                                                        full => tx_full,
                                                                        empty => fifo_em,
                                                                        rd => tx_done_tick,
                                                                        wr => rx_done_tick
    );
    
    fifo_n_em <= not fifo_em;
	 
	 check : process (reset) is
	 begin
		if (reset = '1') then
			rx_empty <= '0';
		else	 
			rx_empty <= '1';
		end if;
	 end process check; 	
	 
	 rx_full <= clk;
	 
	 r_data <= data_r;
	 
	 rx1 <= rx;
	 
	 tx1 <= tx_h;
	 
	 tx <= tx_h;

end Behavioral;