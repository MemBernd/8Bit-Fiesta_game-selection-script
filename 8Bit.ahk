

#IfWinActive 8BitFiestaSteam
#x::
#y::
#z::
^Esc::
   
   timeSleep := 100	;ms
   Array := Object()
   Array[0] := 0 ;Reset all
   Array[1] := 1 ;Road Rage
   Array[2] := 0 ;Trap Run
   Array[3] := 1 ;Shuttle up
   Array[4] := 1 ;Drop dead
   Array[5] := 0 ;Air Smash
   Array[6] := 0 ;Duck Hunt
   Array[7] := 1 ;Flappy Tap
   Array[8] := 0 ;Disco Time
   Array[9] := 1 ;Physball
   Array[10] := 1 ;Head Mash
   Array[11] := 0 ;Bull Shit
   Array[12] := 0 ;Battle Arena
   Array[13] := 0 ;Lava Dodge
   Array[14] := 0 ;Walking Dead
   Array[15] := 1 ;Catch up!
   Array[16] := 1 ;King ping
   Array[17] := 0 ;Trigger Box
   Array[18] := 1 ;Wolly Bolly
   Array[19] := 1 ;Toxic Balls
   Array[20] := 0 ;Stay Green
   Array[21] := 0 ;Light Fight
   Array[22] := 0 ;Holo Glam
   Array[23] := 0 ;Ufo Contact
   Array[24] := 0 ;Run n Gun
   Array[25] := 0 ;Bullet Dance
   Array[26] := 0 ;Clone Wars
   Array[27] := 1 ;Skull Pop
   Array[28] := 1 ;Rush Hour

   SendInput {Down}
   Sleep, timeSleep

   for index, element in Array {
		if !element=1
		{
			SendInput, {Enter}
			Sleep, timeSleep
		}
		if (index == 12 OR index == 19)
		{
			SendInput, {Right}
			Sleep, timeSleep
		} else if (index == 28) {
			SendInput, {Left}
			Sleep, timeSleep
			SendInput, {Left}
			Sleep, timeSleep
		} else {
			SendInput {Down}
			Sleep, timeSleep
		}
   }
	
Return
#IfWinActive