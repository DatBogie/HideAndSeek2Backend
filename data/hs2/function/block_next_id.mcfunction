scoreboard players operation @s hs2.block_id = NextIndex hs2.block_id
execute at @s align xyz run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:dirt"},Tags:["hs2.block_just_tagged","hs2.block"],teleport_duration:4}
execute at @s align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["hs2.block_just_tagged","hs2.block_hitbox"],width:.5f,height:1f}
execute at @s run scoreboard players operation @e[tag=hs2.block_just_tagged,limit=2,distance=..2] hs2.block_id = @s hs2.block_id
execute at @s run tag @e[tag=hs2.block_just_tagged,limit=2,distance=..2] remove hs2.block_just_tagged
scoreboard players add NextIndex hs2.block_id 1