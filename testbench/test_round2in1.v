/*
 * Copyright 2013, Homer Hsing <homer.hsing@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

`timescale 1ns / 1ps
`define P 20

module test_round2in1;

    // Inputs
    reg [1599:0] s;
    reg [63:0] round_const_1, round_const_2;

    // Outputs
    wire [1599:0] out;

    // Instantiate the Unit Under Test (UUT)
    round2in1 uut (
        .in(s), 
        .rc1(round_const_1), 
        .rc2(round_const_2),
        .out(out)
    );

    initial begin
        // Initialize Inputs
        s = 0;
        round_const_1 = 0;
        round_const_2 = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Add stimulus here
        s[1599:1536] = 64'h6baa9455e3e70682;
        s[1535:1472] = 64'hd4713d60c8a70639;
        s[1471:1408] = 64'h7a024204f7c1bd87;
        s[1407:1344] = 64'h8133287637ebdcd9;
        s[1343:1280] = 64'h4f65d4d9259f4329;
        s[1279:1216] = 64'haf19922ad9b8a714;
        s[1215:1152] = 64'h8f4ff31e78de5857;
        s[1151:1088] = 64'h6f25e2a25a921187;
        s[1087:1024] = 64'h42af9fc385776e9a;
        s[1023:960] = 64'h3983ca8ea7e9d49;
        s[959:896] = 64'hd71037d1b83e90ec;
        s[895:832] = 64'ha0116be5ab0c1681;
        s[831:768] = 64'h55485822de1b372a;
        s[767:704] = 64'h101fbcccded733e8;
        s[703:640] = 64'h9148624feac1c14f;
        s[639:576] = 64'h1759edc372ae2244;
        s[575:512] = 64'h1beb37117d41e602;
        s[511:448] = 64'h8c25166a1ff39849;
        s[447:384] = 64'h71eacd0549a3e80e;
        s[383:320] = 64'hcc45782198a6416d;
        s[319:256] = 64'h935ddd725129fb7c;
        s[255:192] = 64'h2f1205544a5308cc;
        s[191:128] = 64'h2fcd81b5d24bace4;
        s[127:64] = 64'h79fdef7c42930b33;
        s[63:0] = 64'he07405eb215663ab;
        round_const_1 = 64'h864a7a50b48d73f1;
        round_const_2 = 64'h864a7a50b48d73f1;
        #`P;
        #`P;
        if(out[1599:1536] !== 64'h788dff2395ebaf99) begin $display("E"); $finish; end
        if(out[1535:1472] !== 64'hdcbf7f45dcc05849) begin $display("E"); $finish; end
        if(out[1471:1408] !== 64'h3f6e6e2bfbd57e83) begin $display("E"); $finish; end
        if(out[1407:1344] !== 64'hdc88d42aa6d6686b) begin $display("E"); $finish; end
        if(out[1343:1280] !== 64'ha39b3e89d55c5bf1) begin $display("E"); $finish; end
        if(out[1279:1216] !== 64'h9804c6fe9e561ac5) begin $display("E"); $finish; end
        if(out[1215:1152] !== 64'h06074c871f54cadd) begin $display("E"); $finish; end
        if(out[1151:1088] !== 64'he62fa422ae737cdf) begin $display("E"); $finish; end
        if(out[1087:1024] !== 64'hf5920df2e21c65a0) begin $display("E"); $finish; end
        if(out[1023:960] !== 64'h5655922305270e76) begin $display("E"); $finish; end
        if(out[959:896] !== 64'h4174c4f4614249b4) begin $display("E"); $finish; end
        if(out[895:832] !== 64'h139822ad93523d60) begin $display("E"); $finish; end
        if(out[831:768] !== 64'h8374c4de7b86b667) begin $display("E"); $finish; end
        if(out[767:704] !== 64'h60b67d7b23cabc08) begin $display("E"); $finish; end
        if(out[703:640] !== 64'h83451a631c17a1ec) begin $display("E"); $finish; end
        if(out[639:576] !== 64'h429c5222acab0a1d) begin $display("E"); $finish; end
        if(out[575:512] !== 64'h5353e3ff6062b34d) begin $display("E"); $finish; end
        if(out[511:448] !== 64'h0596c58e52bc71bb) begin $display("E"); $finish; end
        if(out[447:384] !== 64'hd2517ec43037e630) begin $display("E"); $finish; end
        if(out[383:320] !== 64'h2437a73f832a4b45) begin $display("E"); $finish; end
        if(out[319:256] !== 64'hcc882b3d1d7932b8) begin $display("E"); $finish; end
        if(out[255:192] !== 64'h484e5cd226c59ba0) begin $display("E"); $finish; end
        if(out[191:128] !== 64'h04c4fd2a07df850c) begin $display("E"); $finish; end
        if(out[127:64] !== 64'he1247c4f9f913b6e) begin $display("E"); $finish; end
        if(out[63:0] !== 64'hd5fcdb016d06dd68) begin $display("E"); $finish; end
        $display("Good!");
        $finish;
    end
endmodule

`undef P
