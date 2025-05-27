execute at @s run summon armor_stand ~ ~ ~ {Invulnerable:true,NoGravity:true,NoBasePlate:true,ShowArms:true,Tags:[hs2.just_deceased,hs2.dead_player],equipment:{chest:{id:"minecraft:leather_chestplate"},legs:{id:"minecraft:leather_leggings"},feet:{id:"minecraft:leather_boots"}}}
loot replace entity @e[tag=hs2.just_deceased] armor.head loot hs2:playerhead
tag @e[tag=hs2.just_deceased] remove hs2.just_deceased
team leave @s
gamemode spectator
scoreboard players reset @s alive
clear