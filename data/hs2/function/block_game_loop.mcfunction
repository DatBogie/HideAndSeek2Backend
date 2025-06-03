execute as @a[team=hs2.hiders] at @s run function hs2:block_update

execute as @a[team=hs2.hiders,scores={hs2.block_morphUsed=1..}] at @s anchored eyes run function hs2:raycast
execute as @a[scores={hs2.block_morphUsed=1..}] run scoreboard players reset @s hs2.block_morphUsed

execute as @e[type=interaction,tag=hs2.block_hitbox,nbt={attack:{}}] run function hs2:block_hitbox_clicked