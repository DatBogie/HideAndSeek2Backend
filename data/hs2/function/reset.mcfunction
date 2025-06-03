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
spawnpoint @a -410 5 1200

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

scoreboard objectives add hs2.seekerEyeUsed minecraft.used:minecraft.eye_armor_trim_smithing_template
scoreboard players reset @a hs2.seekerEyeUsed

scoreboard objectives add hs2.windchargeUsed minecraft.used:minecraft.wind_charge
scoreboard players reset @a hs2.windchargeUsed

scoreboard objectives add hs2.enderPearlUsed minecraft.used:minecraft.ender_pearl
scoreboard players reset @a hs2.enderPearlUsed

scoreboard objectives add hs2.gtfoUsed minecraft.used:minecraft.sugar
scoreboard players reset @a hs2.gtfoUsed

scoreboard objectives add hs2.block_morphUsed minecraft.used:minecraft.spyglass
scoreboard players reset @a hs2.block_morphUsed

scoreboard objectives add hs2.raycast_length dummy
scoreboard players reset @a hs2.raycast_length

function hs2:block_reset

effect clear @a

execute unless score Reset hs2.config matches ..0 run function hs2:reset_config

execute as @a run attribute @s scale base set 1.0

kill @e[type=armor_stand,tag=hs2.raycast_hit]
kill @e[type=block_display,tag=hs2.block]
kill @e[type=interaction,tag=hs2.block_hitbox]

scoreboard players set STARTED hs2.timer -1

bossbar add hs2:round_timer {text:"Round",color:"blue",bold:true}
bossbar set hs2:round_timer color blue
bossbar set hs2:round_timer players @a
bossbar set hs2:round_timer style progress
bossbar set hs2:round_timer visible false
tag @a[tag=hs2.end_hiders] remove hs2.end_hiders