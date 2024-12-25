unit atr2defs;

(*
Copyright (c) 1999, Ed T. Toton III. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

   Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.

   Redistributions in binary form must reproduce the above copyright notice, 
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

   All advertising materials mentioning features or use of this software
   must display the following acknowledgement:

        This product includes software developed by Ed T. Toton III &
        NecroBones Enterprises.

   No modified or derivative copies or software may be distributed in the
   guise of official or original releases/versions of this software. Such
   works must contain acknowledgement that it is modified from the original.

   Neither the name of the author nor the name of the business or
   contributers may be used to endorse or promote products derived
   from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND ANY 
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)
interface

const

   { Port Constant Identifiers}
   P_SPEDOMETER  =  1;
   P_HEAT        =  2;
   P_COMPASS     =  3;
   P_TURRET_OFS  =  4;
   P_TURRET_ABS  =  5;
   P_ARMOR       =  6;
   P_SCAN        =  7;
   P_ACCURACY    =  8;
   P_RADAR       =  9;
   P_RANDOM      = 10;
   P_THROTTLE    = 11;
   P_TROTATE     = 12;
   P_TAIM        = 13;
   P_STEERING    = 14;
   P_WEAPON      = 15;
   P_SONAR       = 16;
   P_SCANARC     = 17;
   P_OVERBURN    = 18;
   P_TRANSPONDER = 19;
   P_SHUTDOWN    = 20;
   P_CHANNEL     = 21;
   P_MINELAYER   = 22;
   P_MINETRIGGER = 23;
   P_SHIELD      = 24;

   { Interrupt Constant Identifiers }
   I_DESTRUCT    =  0;
   I_RESET       =  1;
   I_LOCATE      =  2;
   I_KEEPSHIFT   =  3;
   I_OVERBURN    =  4;
   I_ID          =  5;
   I_TIMER       =  6;
   I_ANGLE       =  7;
   I_TARGETID    =  8;
   I_TARGETINFO  =  9;
   I_GAMEINFO    = 10;
   I_ROBOTINFO   = 11;
   I_COLLISIONS  = 12;
   I_RESETCOLCNT = 13;
   I_TRANSMIT    = 14;
   I_RECEIVE     = 15;
   I_DATAREADY   = 16;
   I_CLEARCOM    = 17;
   I_KILLS       = 18;
   I_CLEARMETERS = 19;

implementation

end.
























