// Author: Yeong Mo
// Date Created: 20-Sep.-2024
// Rev: 0.1
// Date Modifed: 20-Sep.-2024
// Degin Name: AND3X1
// Description: out = in_1 & in_2 & in_3
//
//
//

`timescale 1ns / 1ps


module AND3X1 (
    //1. port list
    out		,
    in_1	,
    in_2	,
    in_3
);

//2. port declaration
input in_1	;
input in_2	;
input in_3	;
output out	;


//3. modeling
and and3X1 (out, in_1, in_2, in_3);
//assign out = in_1& in_2& in_3;


endmodule
