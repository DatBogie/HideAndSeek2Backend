# params: {
#  "map": <string> // The name of the map to register
# }

$execute unless entity @e[type=armor_stand,tag=hs2.hider_spawn,tag=hs2.$(map)_spawn] run tp @s -411 31 1199 facing -412 31 1199
$execute at @s as @e[type=armor_stand,tag=hs2.hider_spawn,tag=hs2.$(map)_spawn,sort=random,limit=1] run tp @p @s

scoreboard players set @s alive 1

give @s wind_charge[use_cooldown={seconds:30}]
function hs2:give_gtfo

execute if score BlockHunt hs2.config matches 1.. run function hs2:block_hider_setup