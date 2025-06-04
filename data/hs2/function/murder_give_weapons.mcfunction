scoreboard players set WEAPONS_GIVEN hs2.timer 1
scoreboard players reset murder_tick hs2.timer

execute as @a[team=hs2.seekers] run function hs2:murder_give_knife
execute as @a[team=hs2.hiders,tag=hs2.sheriff] run function hs2:murder_give_sheriff_bow
tellraw @a [{text:"Weapons given!",color:"yellow"}]