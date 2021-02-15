module cache();

parameter size = 64;		// velicina kesa
parameter index_size = 6;	// velicina indeksa


reg [31:0] cache [0:size - 1]; // registri za podatke na kesu
reg [11 - index_size:0] tag_array [0:size - 1];
reg valid_array [0:size - 1]; //0 ako nema podataka, 1 ako ima podataka
initial
	begin: initialization
		integer i;
		for (i = 0; i < size; i = i + 1)
		begin
			valid_array[i] = 1'b0;
			tag_array[i] = 6'b000000;
		end
	end

endmodule 
