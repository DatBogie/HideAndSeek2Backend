execute if score @s hs2.raycast_length matches 1000.. run return fail
scoreboard players add @s hs2.raycast_length 1
execute unless block ~ ~ ~ #air run function hs2:block_raycast_hit
execute unless block ~ ~ ~ #air run return 0
execute positioned ^ ^ ^.1 run function hs2:block_raycast