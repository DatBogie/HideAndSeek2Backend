# params: {
#   "map": <string> // The name of the map to register
# }

$execute as @e[type=armor_stand,tag=hs2.murder_gold_spawn,tag=hs2.$(map)_spawn] if score @s hs2.timer >= Murder.GoldSpawnRate hs2.config at @s run function hs2:murder_spawn_gold
$execute as @e[type=armor_stand,tag=hs2.murder_gold_spawn,tag=hs2.$(map)_spawn] if score @s hs2.timer >= Murder.GoldSpawnRate hs2.config run scoreboard players set @s hs2.timer 0
$execute as @e[type=armor_stand,tag=hs2.murder_gold_spawn,tag=hs2.$(map)_spawn] if score @s hs2.timer < Murder.GoldSpawnRate hs2.config run scoreboard players add @s hs2.timer 1