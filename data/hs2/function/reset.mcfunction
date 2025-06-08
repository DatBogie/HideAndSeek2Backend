# params: {
#  "map": <string> // The name of the map to register
# }

setblock -300 0 1200 bedrock
setblock -301 0 1200 bedrock

team leave @a
team add hs2.hiders ["",{text:"Hiders",color:"blue",bold:true}]
team modify hs2.hiders color blue
team modify hs2.hiders friendlyFire true
team modify hs2.hiders nametagVisibility never
team modify hs2.hiders prefix ["",{text:"[Hider] ",color:"blue",bold:true}]
team modify hs2.hiders deathMessageVisibility always
team add hs2.seekers ["",{text:"Seekers",color:"red",bold:true}]
team modify hs2.seekers color red
team modify hs2.seekers friendlyFire false
team modify hs2.seekers nametagVisibility hideForOtherTeams
team modify hs2.seekers prefix ["",{text:"[Seeker] ",color:"red",bold:true}]
team modify hs2.hiders deathMessageVisibility always
$execute unless entity @e[type=armor_stand,tag=hs2.respawn_spawn,tag=hs2.$(map)_spawn] run spawnpoint @a -410 5 1200
$execute as @e[type=armor_stand,tag=hs2.respawn_spawn,tag=hs2.$(map)_spawn,sort=random,limit=1] at @s run spawnpoint @a ~ ~ ~

scoreboard players reset @a alive
scoreboard objectives add alive deathCount

scoreboard objectives add hs2.config dummy
scoreboard objectives modify hs2.config displayname "H&S2 Config"

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

scoreboard objectives add hs2.murder_knifeThrown minecraft.used:minecraft.stick
scoreboard players reset @a hs2.murder_knifeThrown

kill @e[tag=hs2.murder_raycast_hit]
scoreboard players reset @a hs2.raycast_length

execute as @e[type=armor_stand,tag=hs2.spawn,tag=!hs2.murder_gold_spawn] run data merge entity @s {Invisible:false,Marker:false,Small:true,CustomNameVisible:true,equipment:{head:{id:"player_head",components:{profile:{id:[I;-1040225899,-1126871523,-1271360250,1313847604],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQ3OGQ4MDkxODlmZTBkMmIwZjUzNjFmZjJlN2Y0ODM3OWQ1NjJhNjNiMTBmMTVjNjAzMWJmZTNmZDAwMDhkIn19fQ=="}]}}}}}
execute as @e[type=armor_stand,tag=hs2.spawn,tag=hs2.murder_gold_spawn] run data merge entity @s {Invisible:false,Marker:false,Small:true,CustomNameVisible:true,equipment:{head:{id:"player_head",components:{profile:{id:[I;-1892310622,358172463,-1782396045,-1940931313],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY5NjcxN2JlZjYxYzM3Y2U0ZGNkMGIwNjdkYTRiNTdjOGExYjBmODNjMjkyNjg2OGIwODM0NDRmN2VhZGU1NCJ9fX0="}]}}}}}

function hs2:set_help_entries

scoreboard objectives add hs2.murder_bow_used minecraft.used:minecraft.bow
scoreboard players reset @a hs2.murder_bow_used

kill @e[type=item_display,tag=hs2.murder_bow]

scoreboard objectives add hs2.score dummy "Scores"
scoreboard objectives setdisplay list hs2.score

scoreboard objectives add hs2.maps dummy "Registered Maps"
scoreboard players set default hs2.maps 1

scoreboard objectives add hs2.murder_killedby_friendly killedByTeam.blue
scoreboard players reset @a hs2.murder_killedby_friendly

scoreboard objectives add hs2.murder_killed_player minecraft.killed:minecraft.player
scoreboard players reset 2a hs2.murder_killed_player

tag @a[tag=hs2.seeker] remove hs2.seeker
tag @a[tag=hs2.hider] remove hs2.hider

scoreboard objectives add hs2.random dummy
scoreboard players reset @a hs2.random

scoreboard objectives add hs2.random.p dummy
scoreboard players reset @a hs2.random.p
scoreboard players set Scale hs2.random.p 100

kill @e[tag=hs2.murder_gold]

scoreboard objectives add hs2.murder_gold dummy
scoreboard players reset @a hs2.murder_gold

say hi