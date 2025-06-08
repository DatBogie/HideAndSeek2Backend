effect give @a night_vision infinite 255 true
effect give @a saturation infinite 255 true

execute unless block -301 0 1200 redstone_block as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe",components:{"minecraft:item_name":"Spawn Rotator"}}}] at @s as @n[type=armor_stand,tag=hs2.spawn,distance=..5] at @s run tp @s ~ ~ ~ facing entity @p[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}]

# Start
execute if block -301 0 1200 redstone_block run function hs2:game_loop