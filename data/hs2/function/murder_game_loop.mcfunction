execute if score WEAPONS_GIVEN hs2.timer matches 1.. as @a[scores={hs2.murder_knifeThrown=1..}] at @s run function hs2:murder_trigger_raycast
execute if score WEAPONS_GIVEN hs2.timer matches 1.. as @a[scores={hs2.murder_knifeThrown=1..}] unless data entity @s Inventory[{id:"minecraft:stick"}] run function hs2:murder_give_knife
execute as @a[scores={hs2.murder_knifeThrown=1..}] run scoreboard players reset @s hs2.murder_knifeThrown

execute unless score WEAPONS_GIVEN hs2.timer matches 1.. if score murder_tick hs2.timer matches 1.. run function hs2:murder_give_weapons_tick
execute unless score WEAPONS_GIVEN hs2.timer matches 1.. if score murder_tick hs2.timer matches 0 run function hs2:murder_give_weapons

execute as @e[type=item_display,tag=hs2.murder_bow] at @s if entity @p[distance=..3,team=hs2.hiders,tag=!hs2.sheriff] run function hs2:murder_bow_picked_up

execute as @a[tag=hs2.hider,scores={hs2.murder_killedby_friendly=1..}] at @s run kill @p[team=hs2.hiders,tag=hs2.sheriff,scores={hs2.murder_killed_player=1..}]
execute as @a[scores={hs2.murder_killedby_friendly=1..}] run scoreboard players reset @s hs2.murder_killedby_friendly
execute as @a[scores={hs2.murder_killed_player=1..}] run scoreboard players reset @s hs2.murder_killed_player

execute as @e[type=arrow,nbt={pickup:true}] run data merge entity @s {pickup:false}

function hs2:murder_gold_tick with storage hs2:round

execute as @a[nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run scoreboard players add @s hs2.murder_gold 1
execute as @a[nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run clear @s gold_ingot 1

execute as @a[team=hs2.hiders,tag=!hs2.sheriff,scores={hs2.murder_gold=10..}] run function hs2:murder_give_sheriff_bow
execute as @a[team=hs2.hiders,tag=!hs2.sheriff,scores={hs2.murder_gold=10..}] run scoreboard players remove @s hs2.murder_gold 10

execute as @a run title @s actionbar [{text:"Gold: ",color:"gold"},{score:{name:"@s",objective:hs2.murder_gold},color:"gold"}]