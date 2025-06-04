execute if score @s hs2.raycast_length matches 1.. run return run function hs2:ray_finished
scoreboard players set @s hs2.raycast_length 0
execute anchored eyes run function hs2:block_raycast