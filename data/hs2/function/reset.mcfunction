setblock -300 0 1200 bedrock
setblock -301 0 1200 bedrock

team leave @a
team add hs2.hiders ["",{text:"Hider",color:"blue",bold:true}]
team modify hs2.hiders friendlyFire true
team modify hs2.hiders nametagVisibility never
team modify hs2.hiders prefix ["",{text:"[Hider] ",color:"blue",bold:true}]
team add hs2.seekers ["",{text:"Seeker",color:"red",bold:true}]
team modify hs2.seekers friendlyFire false
team modify hs2.seekers nametagVisibility hideForOtherTeams
team modify hs2.seekers prefix ["",{text:"[Seeker] ",color:"red",bold:true}]

scoreboard players reset @a alive
scoreboard objectives add alive deathCount

scoreboard objectives add hs2.config dummy

scoreboard objectives setdisplay sidebar

clone -390 4 1205 -390 7 1209 -414 5 1198

scoreboard objectives add hs2.timer dummy
scoreboard players set tick hs2.timer 0
scoreboard players set count hs2.timer 0
scoreboard players set tick_end hs2.timer 0

scoreboard players set count hs2.timer 0
scoreboard players set tick hs2.timer 0

effect clear @a

execute if score Reset hs2.config matches 1 run function hs2:reset_config