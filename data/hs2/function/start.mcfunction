setblock -300 0 1200 bedrock
execute if block -301 0 1200 redstone_block run return fail
scoreboard players set @a alive 1
clear @a
gamemode adventure @a

kill @e[tag=hs2.dead_player]

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

# Start timer
