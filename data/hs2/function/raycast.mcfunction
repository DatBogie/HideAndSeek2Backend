execute if score @s hs2.raycast_length matches 100.. run return fail
execute unless block ~ ~ ~ #air run function hs2:raycast_hit
execute unless block ~ ~ ~ #air run return 0
execute positioned ^ ^ ^.1 run function hs2:raycast