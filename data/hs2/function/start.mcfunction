# params: {
#  "map": <string> // The name of the map to start on
# }

execute if block -301 0 1200 redstone_block run return fail

$data modify storage hs2:round map set value $(map)

scoreboard players set STARTED hs2.timer 0
scoreboard players set @a alive 1
clear @a
gamemode adventure @a
$execute unless entity @e[type=armor_stand,tag=hs2.respawn_spawn,tag=hs2.$(map)_spawn] run spawnpoint @a -410 5 1200
$execute as @e[type=armor_stand,tag=hs2.respawn_spawn,tag=hs2.$(map)_spawn,sort=random,limit=1] at @s run spawnpoint @a ~ ~ ~

tag @a[tag=hs2.end_hiders] remove hs2.end_hiders

kill @e[tag=hs2.dead_player]
kill @e[type=item]

# Select teams
team join hs2.hiders @a
execute unless score Murder hs2.config matches 1.. run team join hs2.seekers @r[tag=!hs2.was_seeker]
execute if score Murder hs2.config matches 1.. run team join hs2.seekers @r
tag @a[team=hs2.seekers] add hs2.seeker
tag @a[team=hs2.hiders] add hs2.hider

scoreboard players reset @a[team=!hs2.hiders] alive
scoreboard players set count hs2.timer 0
scoreboard players set tick hs2.timer 0
scoreboard players set tick_end hs2.timer 0

# Setup players
execute as @a[team=hs2.seekers] run function hs2:seeker_setup with storage hs2:round
execute as @a[team=hs2.hiders] run function hs2:hider_setup with storage hs2:round

# Close gate
clone -390 4 1198 -390 7 1202 -414 5 1198

# Start game loop
setblock -301 0 1200 redstone_block

# Run Slots

# Slot 1
setblock -400 4 1215 redstone_block
setblock -400 4 1215 air

# Slot 2
setblock -400 4 1217 redstone_block
setblock -400 4 1217 air

scoreboard players set seeker_eye_tick hs2.timer 0
tag @a[tag=hs2._kill_] remove hs2._kill_

scoreboard players set round_tick hs2.timer 0
scoreboard players set round_count hs2.timer 0

bossbar set hs2:round_timer name {text:"Hide.",bold:true,color:"red"}
execute store result bossbar hs2:round_timer max run scoreboard players get HideTime hs2.config
bossbar set hs2:round_timer color red
bossbar set hs2:round_timer value 0
bossbar set hs2:round_timer players @a
bossbar set hs2:round_timer visible true

team modify hs2.hiders displayName ["",{text:"Hiders",color:"blue",bold:true}]
team modify hs2.hiders friendlyFire true
team modify hs2.hiders nametagVisibility never
team modify hs2.hiders prefix ["",{text:"[Hider] ",color:"blue",bold:true}]
team modify hs2.seekers displayName ["",{text:"Seekers",color:"red",bold:true}]
team modify hs2.seekers friendlyFire false
team modify hs2.seekers nametagVisibility hideForOtherTeams
team modify hs2.seekers prefix ["",{text:"[Seeker] ",color:"red",bold:true}]

execute if score BlockHunt hs2.config matches 1.. run function hs2:block_setup
execute if score Murder hs2.config matches 1.. run function hs2:murder_setup
kill @e[tag=hs2.murder_raycast_hit]

scoreboard players reset @a hs2.raycast_length

execute as @e[type=armor_stand,tag=hs2.spawn] run data merge entity @s {Invisible:true,Marker:true,Small:false,CustomNameVisible:false,equipment:{head:{}}}
execute as @e[type=armor_stand,tag=hs2.spawn] run data remove entity @s equipment.head

scoreboard players reset @a hs2.murder_bow_used
kill @e[type=item_display,tag=hs2.murder_bow]
scoreboard players reset @a hs2.murder_killedby_friendly
scoreboard players reset @a hs2.murder_killed_player

kill @e[type=arrow]

$execute if score Murder hs2.config matches 1.. as @e[type=armor_stand,tag=hs2.murder_gold_spawn,tag=hs2.$(map)_spawn] run scoreboard players operation @s hs2.timer = GoldSpawnRate hs2.config