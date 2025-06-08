# params: {
#  "map": <string>
# }

$execute unless score Murder hs2.config matches 1.. unless entity @e[type=armor_stand,tag=hs2.hider_spawn,tag=hs2.$(map)_spawn] run tp @s -328.5 4.0 1290.0 facing -328.0 4.0 1290.0
$execute unless score Murder hs2.config matches 1.. at @s as @e[type=armor_stand,tag=hs2.seeker_spawn,tag=hs2.$(map)_spawn,sort=random,limit=1] run tp @p[team=hs2.seekers] @s

function hs2:give_speedystick
give @s ender_pearl[use_cooldown={seconds:60}]
# function hs2:give_seekerseye

execute unless score Murder hs2.config matches 1.. run effect give @s resistance infinite 255 true
execute unless score Murder hs2.config matches 1.. run effect give @s fire_resistance infinite 255 true
execute unless score Murder hs2.config matches 1.. run effect give @s water_breathing infinite 255 true
execute unless score Murder hs2.config matches 1.. run effect give @s jump_boost infinite 1 true
execute unless score Murder hs2.config matches 1.. if score SeekersGlow hs2.config matches 1.. run effect give @s glowing infinite 255 true