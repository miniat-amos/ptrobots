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


   { Memory Constant Identifiers }
   M_DSPD    =  0;  { Desired speed robot is trying to achieve. }
   M_DHD     =  1;  { Desired heading robot is trying to achieve. }
   M_TPOS    =  2;  { Current turret offset }
   M_ACC     =  3;  { accuracy value from last scan }
   M_SWAP    =  4;  { temporary swap space used by swap/xchg instruction }
   M_TRID    =  5;  { ID of last target scanned (by any scan). }
   M_TRDIR   =  6;  { Relative heading of last target scanned. }
   M_TRSPD   =  7;  { Throttle of last target scanned. }
   M_COLCNT  =  8;  { Collision count. }
   M_METERS  =  9;  { Meters travelled. 15 bits used.. (32767+1)=0 }
   M_COMBASE = 10;  { Current base of the communications queue }
   M_COMEND  = 11;  { Current end-point of the communications queue }
   { 12     What is this, if anything?  It's printed in ATR2.PAS }
   M_TRVEL   = 13;  { Absolute speed (cm/cycle) of last target scanned }
   { 14-63       res         reserved }
   M_FLAGS   = 64;  { flags register }
   M_AX      = 65;  { ax register }
   M_BX      = 66;  { bx register }
   M_CX      = 67;  { cx register }
   M_DX      = 68;  { dx register }
   M_EX      = 69;  { ex register }
   M_FX      = 70;  { fx register }
   M_SP      = 71;  { stack pointer }
   {  72-95       res         reserved for future registers }
   {  96-127      res         reserved }
   { 128-384      var         variable space }
   { 385-511      user        user space }
   { 512-767      com-queue   Communications receiving queue }
   { 768-1023     stack       System stack }
   { 1024...      code        Robot program (code segment) (ROM) }
 
implementation

end.
