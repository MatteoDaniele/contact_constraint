stream output: 1,  			#ANIMATIONS FLIGHTGEAR
  stream name, "output_positions",
  create, yes,
  port, 8000,
  host, "127.0.0.1",				#pc-attila
  socket type, tcp,
  non blocking,
  #echo, "stream_generic_fg_out.log",
  values, 25,

drive, node, GND, structural, string, "X[1]",  direct,
drive, node, GND, structural, string, "X[2]",  direct,
drive, node, GND, structural, string, "X[3]",  direct,

drive, node, GND, structural, string, "E[1]",  direct,
drive, node, GND, structural, string, "E[2]",  direct,
drive, node, GND, structural, string, "E[3]",  direct,

drive, node, BALL, structural, string, "X[1]",  direct,
drive, node, BALL, structural, string, "X[2]",  direct,
drive, node, BALL, structural, string, "X[3]",  direct,

drive, node, BALL, structural, string, "XP[1]",  direct,
drive, node, BALL, structural, string, "XP[2]",  direct,
drive, node, BALL, structural, string, "XP[3]",  direct,

drive, node, GND, structural, string, "XP[1]",  direct,
drive, node, GND, structural, string, "XP[2]",  direct,
drive, node, GND, structural, string, "XP[3]",  direct,

drive, node, GND, structural, string, "Omega[1]",  direct,
drive, node, GND, structural, string, "Omega[2]",  direct,
drive, node, GND, structural, string, "Omega[3]",  direct,

drive, node, BALL, structural, string, "XPP[1]",  direct,
drive, node, BALL, structural, string, "XPP[2]",  direct,
drive, node, BALL, structural, string, "XPP[3]",  direct,

drive,element,BALL,body,string,"m",direct,

drive, node, BALL, structural, string, "x[1]",  direct,
drive, node, BALL, structural, string, "x[2]",  direct,
drive, node, BALL, structural, string, "x[3]",  direct;
