execute if score @s hs2.raycast_length matches 1.. run return fail
scoreboard players set @s hs2.raycast_length 0
execute anchored eyes run function hs2:murder_raycast
scoreboard players set @s hs2.raycast_length 0