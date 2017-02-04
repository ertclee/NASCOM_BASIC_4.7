5 REM at $3000 output a byte to I/O addr $2000, triggering BREAK
10 mb = &h3000
20 print mb
30 poke mb,  &h01
40 poke mb+1,&h00
50 poke mb+2,&h20
60 poke mb+3,&hed
70 poke mb+4,&h79
80 poke mb+5,&hc9

105 REM at USR(0), insert a jump to the $3000 code.
110 mb = &h8003
120 print mb
130 poke mb,  &hc3
140 poke mb+1,&h00
150 poke mb+2,&h30

205 REM run USR(0), triggering BREAK, and Single Step mode
210 mb = usr(0)