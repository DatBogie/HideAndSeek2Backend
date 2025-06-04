execute unless score Murder hs2.config matches 1.. unless entity @s[team=hs2.hiders] run return fail
execute if score BlockHunt hs2.config matches 1.. at @s as @e[tag=hs2.block] if score @s hs2.block_id = @p[team=hs2.hiders] hs2.block_id run kill @s
execute if score BlockHunt hs2.config matches 1.. at @s as @e[tag=hs2.block_hitbox] if score @s hs2.block_id = @p[team=hs2.hiders] hs2.block_id run kill @s
execute at @s run summon armor_stand ~ ~ ~ {Invulnerable:true,NoGravity:true,NoBasePlate:true,ShowArms:true,Tags:[hs2.just_deceased,hs2.dead_player],equipment:{chest:{id:"minecraft:leather_chestplate"},legs:{id:"minecraft:leather_leggings"},feet:{id:"minecraft:leather_boots"}}}
loot replace entity @e[tag=hs2.just_deceased] armor.head loot hs2:playerhead
tag @e[tag=hs2.just_deceased] remove hs2.just_deceased
team leave @s
gamemode spectator
scoreboard players reset @s alive
clear