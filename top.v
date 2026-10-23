module top(

input [15:0] sw,
input btnL, btnU, btnD, btnR, btnC,

output [15:0] led

);

wire [3:0] connector_line;

wire [1:0] mux_sel;

wire[1:0] demux_sel;

assign mux_sel= { btnU,btnL };
assign demux_sel= {  btnR,btnD };


mux_4 mux_in(

.in_ceo(sw[3:0]),
.in_you(sw[7:4]),
.in_fred(sw[11:8]),
.in_jill(sw[15:12]),

.sel(mux_sel),
.enable(btnC),
.y(connector_line)

);

demux_4 demux_out(

.in(connector_line),
.sel(demux_sel),
.enable(btnC),
.out_library(led[3:0]),
.out_fire(led[7:4]),
.out_school(led[11:8]),
.out_rib(led[15:12])

);

endmodule