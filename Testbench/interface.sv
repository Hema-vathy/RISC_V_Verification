////--------------interface file----------------------////
interface risc_if;
  
  logic clk, rst;
  logic [15:0] pc_current;
  logic [15:0] pc_next;   
  logic [15:0] pc_current_queue[$];
  logic [15:0] pc_next_queue[$];
  logic [`col - 1:0] memory [`row_d - 1:0];
  logic [15:0]mem_access_addr;
  logic [15:0]mem_write_data;
  logic [15:0] mem_read_data;
  logic [3:0] opcode;
  logic [1:0] alu_op;
  logic jump,beq,bne,mem_read,mem_write,alu_src,reg_dst,mem_to_reg,reg_write;
  logic [15:0] alu_in1; 
  logic [15:0] alu_in2;
  logic [15:0] ALU_out;
  logic zero_flag;
  logic [2:0] ALU_Control;
  logic  [2:0] reg_write_dest;
  logic  [15:0] reg_write_data;
  logic  [2:0] reg_read_addr_1;
  logic  [15:0] reg_read_data_1;
  logic [2:0] reg_read_addr_2;
  logic  [15:0] reg_read_data_2;
  logic [15:0] reg_array [7:0];
  logic [15:0]instr;
  logic [15:0] expected_instr;
  logic [15:0] pc2;
  logic [15:0] PC_j, PC_beq, PC_2beq,PC_2bne,PC_bne;
  logic beq_control;
  logic bne_control;
  logic [12:0] jump_shift;
  logic [2:0] expected_ALU_Cnt;
endinterface
