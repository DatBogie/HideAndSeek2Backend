setblock -300 0 1200 bedrock
execute if block -301 0 1200 redstone_block run return fail
scoreboard players set STARTED hs2.timer 0
scoreboard players set @a alive 1
clear @a
gamemode adventure @a
spawnpoint @a -410 5 1200

kill @e[tag=hs2.dead_player]
kill @e[type=item]

# Select teams
team join hs2.hiders @a
team join hs2.seekers @r[tag=!hs2.was_seeker]

scoreboard players reset @a[team=!hs2.hiders] alive
scoreboard players set count hs2.timer 0
scoreboard players set tick hs2.timer 0
scoreboard players set tick_end hs2.timer 0
# scoreboard objectives setdisplay sidebar alive

# Set persmission level >=3
# deop @a
# tellraw @a ["",{text:"De-opped everyone!",color:"gold"}]

# Setup players
execute as @a[team=hs2.seekers] run function hs2:seeker_setup
execute as @a[team=hs2.hiders] run function hs2:hider_setup

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

execute if score BlockHunt hs2.config matches 1.. run function hs2:block_setup

scoreboard players set seeker_eye_tick hs2.timer 0
tag @a[tag=hs2._kill_] remove hs2._kill_