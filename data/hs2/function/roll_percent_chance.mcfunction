scoreboard players operation @s hs2.random.p *= Scale hs2.random.p
execute store result storage hs2:random chance int 1 run scoreboard players get @s hs2.random.p
return run function hs2:roll_percent_chance_check with storage hs2:random