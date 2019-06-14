# HD9310 1hz for cmd
!HEX F1 D9 06 42 14 00 00 01 05 00 E8 03 00 00 60 EA 00 00 D0 07 00 00 C8 00 00 00 36 AF

# GPS+BDS+GLO
!HEX F1 D9 06 0C 04 00 07 24 04 00 45 2C

# GPS+BDS
#!HEX F1 D9 06 0C 04 00 05 04 04 00 23 C4

# GPS+GLO
#!HEX F1 D9 06 0C 04 00 13 24 00 00 4D 54

!WAIT 100

#enable GEO
!HEX F1 D9 06 16 0C 00 01 01 02 01 03 01 04 01 05 01 11 00 4D FB

#disable GEO

#!HEX F1 D9 06 16 0C 00 01 00 02 00 03 00 04 00 05 00 11 00 48 D8

!WAIT 100

#enable SBAS

!HEX F1 D9 06 0E 14 00 89 01 7F 01 80 01 78 00 7B 00 87 00 8A 00 8C 00 7D 00 8D 00 4D 9F

!WAIT 100

#disable some extra msg list

#disable RTCM 1005

!HEX F1 D9 06 01 03 00 F8 05 00 07 31

#disable GGA

!HEX F1 D9 06 01 03 00 F0 00 00 FA 0F

#disable GSA

!HEX F1 D9 06 01 03 00 F0 02 00 FC 13

#disable GSV

!HEX F1 D9 06 01 03 00 F0 04 00 FE 17 

#disable ZDA

!HEX F1 D9 06 01 03 00 F0 07 00 01 1D 

#disable RMC

!HEX F1 D9 06 01 03 00 F0 05 00 FF 19 

#track elev mask 15 navigation mask 5

!HEX F1 D9 06 0B 08 00 92 0A 86 3E C2 B8 B2 3D E2 12

!WAIT 100

#reset tracking channels

!HEX F1 D9 06 40 01 00 80 C7 A1

!WAIT 200

#set output rate to HD9310 5hz

!HEX F1 D9 06 42 14 00 00 05 05 00 C8 00 00 00 60 EA 00 00 D0 07 00 00 C8 00 00 00 17 CE





@
# set to 1hz

!HEX F1 D9 06 42 14 00 00 01 05 00 E8 03 00 00 60 EA 00 00 D0 07 00 00 C8 00 00 00 36 AF









@
