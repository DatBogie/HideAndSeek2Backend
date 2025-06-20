# params: {
#  "map": <string> // The name of the map to register
# }

scoreboard players set STARTED hs2.timer 1
bossbar set hs2:round_timer name {text:"Round",color:"blue",bold:true}
bossbar set hs2:round_timer color blue
bossbar set hs2:round_timer players @a
execute store result bossbar hs2:round_timer max run scoreboard players get RoundTimeLimit hs2.config
bossbar set hs2:round_timer value 0
bossbar set hs2:round_timer visible true
scoreboard players add count hs2.timer 1
scoreboard players reset tick hs2.timer
$execute unless entity @e[type=armor_stand,tag=hs2.hider_spawn,tag=hs2.$(map)_spawn] run tp @a[team=hs2.seekers] -411 31 1199 facing -412 31 1199
$execute as @e[type=armor_stand,tag=hs2.hider_spawn,tag=hs2.$(map)_spawn,sort=random,limit=1] at @s run tp @a[team=hs2.seekers] @s
execute unless score Murder hs2.config matches 1.. run title @a[team=hs2.seekers] title ["",{text:"Go!",italic:true,bold:true,color:"blue"}]
execute unless score Murder hs2.config matches 1.. run title @a[team=hs2.hiders] title ["",{text:"Run!",italic:true,bold:true,color:"red"}]