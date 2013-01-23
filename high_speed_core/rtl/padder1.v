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

module padder1(in, byte_num, out);
    input      [63:0] in;
    input      [2:0]  byte_num;
    output reg [63:0] out;
    
    always @ (*)
      case (byte_num)
        0: out = 64'h1;
        1: out = {56'h1, in[7:0]};
        2: out = {48'h1, in[15:0]};
        3: out = {40'h1, in[23:0]};
        4: out = {32'h1, in[31:0]};
        5: out = {24'h1, in[39:0]};
        6: out = {16'h1, in[47:0]};
        7: out = {8'h1,  in[55:0]};
      endcase
endmodule
