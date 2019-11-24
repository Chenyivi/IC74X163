module Soble(
	clk,
	clr_n,
	ld_n,
	enp,
	ent,
	a,
	b,
	c,
	d,
	qa,
	qb,
	qc,
	qd,
	rco
);

input	clk,clr,ld,enp,ent,a,b,c,d;
output	qa,qb,qc,qd,rco;


assign add_cnt = ;       
assign end_cnt = add_cnt && cnt== 8-1 ; 

always @(posedge clk or negedge clr)begin
	if(!clr)begin
		cnt <= 4'b0;
		qa <= 1'b0;
		qb <= 1'b0;
		qc <= 1'b0;
		qd <= 1'b0;
		rcq <= 1'b0;
	end
	else if(add_cnt)begin
			if(end_cnt)
				cnt <= 0;
			else
				cnt <= cnt + 1;
		 end
end


endmodule
