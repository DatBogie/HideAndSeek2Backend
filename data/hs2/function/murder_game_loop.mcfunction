execute if score WEAPONS_GIVEN hs2.timer matches 1.. as @a[scores={hs2.murder_knifeThrown=1..}] at @s run function hs2:murder_trigger_raycast
execute if score WEAPONS_GIVEN hs2.timer matches 1.. as @a[scores={hs2.murder_knifeThrown=1..}] unless data entity @s Inventory[{id:"minecraft:stick"}] run function hs2:murder_give_knife
execute as @a[scores={hs2.murder_knifeThrown=1..}] run scoreboard players reset @s hs2.murder_knifeThrown

execute unless score WEAPONS_GIVEN hs2.timer matches 1.. if score murder_tick hs2.timer matches 1.. run function hs2:murder_give_weapons_tick
execute unless score WEAPONS_GIVEN hs2.timer matches 1.. if score murder_tick hs2.timer matches 0 run function hs2:murder_give_weapons

execute as @e[type=item_display,tag=hs2.murder_bow] at @s if entity @p[distance=..3,team=hs2.hiders,tag=!hs2.sheriff] run function hs2:murder_bow_picked_up