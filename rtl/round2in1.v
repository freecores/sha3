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

/* if "set_v"==1, out <= in;
 * otherwise, out <= round(round(out));
 */

module round2in1(in, rc1, rc2, out);
    input  [1599:0] in;
    input  [63:0]   rc1, rc2; /* round const */
    output [1599:0] out;
    wire   [1599:0] tmp;

    round_1
      round1 (in,  rc1, tmp),
      round2 (tmp, rc2, out);
endmodule
