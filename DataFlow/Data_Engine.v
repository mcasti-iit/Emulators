// ------------------------------------------------------------------------------ 
//  Project Name        : 
//  Design Name         : 
//  Starting date:      : 
//  Target Devices      : 
//  Tool versions       : 
//  Project Description : 
// ------------------------------------------------------------------------------
//  Company             : IIT - Italian Institute of Technology  
//  Engineer            : Maurizio Casti
// ------------------------------------------------------------------------------ 
// ==============================================================================
//  PRESENT REVISION
// ==============================================================================
//  File        : Data_Engine.v
//  Revision    : 1.0
//  Author      : M. Casti
//  Date        : 
// ------------------------------------------------------------------------------
//  Description : SpiNNaker emulator for Data Flow operations
//     
// ==============================================================================
//  Revision history :
// ==============================================================================
// 
//  Revision 1.0:  07/16/2018
//  - Initial revision
//  (M. Casti - IIT)
// 
// ------------------------------------------------------------------------------

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ---------------------------- SpiNNaker emulator ------------------------------
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
`timescale 1ns / 1ps


module Data_Engine (

  // AER Device asynchronous output interface
  output reg  [31:0] Dout,
  output reg        DoutVld,
  input  wire       DoutRdy,

  // AER Device asynchronous input interface
  input  wire [31:0] Din,
  input  wire       DinVld,
  output reg        DinRdy,
  
  // Control interface
  input wire		clk,
  input wire 		rst
  );


// Constants

  
//--------------------------------------------------
// Drive the output Data interface
//--------------------------------------------------
initial
begin
  Dout = 0;
  DoutVld  = 1'b0;  // active HIGH

  wait (rst);
  wait (!rst);
  
  #1;              // To avoid clock edge
  
  forever
  begin
    @ (posedge clk);
    
    if (DoutRdy) begin
      # 1;
      Dout = Dout + 1;
      DoutVld = 1'b1;
    end
  end
end
//--------------------------------------------------

//--------------------------------------------------
// Listening to the input Data interface
//--------------------------------------------------
initial
begin
  DinRdy = 1'b1;  // active LOW!

  wait (rst);
  wait (!rst);

  forever
  begin
    # 1000;
    @ (posedge clk);
      DinRdy = 1'b1;
    @ (posedge clk);
      DinRdy = 1'b0;
  end
end
//--------------------------------------------------

endmodule
