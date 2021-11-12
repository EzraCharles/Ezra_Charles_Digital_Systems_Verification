`ifndef Parametric_Multiplexer
    `define Parametric_Multiplexer

package parameters_pkg;

localparam W_IN = 2;
localparam B_BUS = 2;
typedef logic [B_BUS-1:0]   datawidth;
typedef logic [W_IN-1:0]    selwidth;
typedef logic [2**W_IN-1:0][B_BUS-1:0] arr_pp;
typedef logic [B_BUS-1:0] arr_pu [2**W_IN-1:0];
typedef logic [B_BUS-1:0] arr_pu [2**W_IN-1:0];
typedef logic arr_uu [2**W_IN-1:0][B_BUS-1:0];
typedef enum logic {EXECUTE, FETC, DECODE, WB} op_codes_e_t;
typedef op_codes_e_t [2**W_IN-1:0] codes_t;
typedef struct packed {
    logic [2**W_IN-1:0][B_BUS-1:0] addr;
    logic [2**W_IN-1:0][B_BUS-1:0] data;
    enum {RD,WR} op;
} mem_ctl_st_t;

endpackage
