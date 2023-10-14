// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * opamp_cascode
 *
 * This is an interface definition for 
 * Folded Cascode Operational Amplifier,
 * fully analog design done with xschem, ngspice & magic
 *
 *-------------------------------------------------------------
 */

module opamp_cascode (
`ifdef USE_POWER_PINS
    inout VCC,	    // OpAmp supply (1.8V)
    inout VSS,	    // OpAmp ground
`endif

    // Analog signals
    // Inputs
    inout IN_M,
    inout IN_P,
    // Output
    inout OUT,
    // Bias current
    inout IB,
    // Bias voltages
    inout VB_A,
    inout VB_B
);

endmodule
`default_nettype wire
