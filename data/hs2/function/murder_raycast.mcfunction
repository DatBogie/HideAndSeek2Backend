execute if score @s hs2.raycast_length matches 200.. run return run function hs2:ray_finished
scoreboard players add @s hs2.raycast_length 1
particle dust{scale:1,color:[2f,2f,2f]} ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ #air run function hs2:murder_raycast_hit_block
execute if entity @a[team=hs2.hiders,distance=..1.5,sort=nearest] run function hs2:murder_raycast_hit
execute if entity @s[tag=hs2.raycast_success] run return run function hs2:ray_finished
execute positioned ^ ^ ^.1 run function hs2:murder_raycast