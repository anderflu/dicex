module pixel_Array
    (
    input logic      VBN1,
    input logic      RAMP,
    input logic      RESET,
    input logic      ERASE,
    input logic      EXPOSE,
    input logic      READ,
    
    );


    PIXEL_SENSOR # ()
        .VBN1 (VBN1),
        .RAMP (RAMP),
        .RESET (RESET),
        .ERASE (ERASE),
        .EXPOSE (EXPOSE),
        .READ (READ);


endmodule