summon armor_stand ~ ~ ~ {Tags:["hs2.raycast_hit"],ShowArms:true,Marker:true,Invisible:true}
loot replace entity @n[type=armor_stand,tag=hs2.raycast_hit] weapon.mainhand mine ~ ~ ~
execute at @s as @n[type=block_display,tag=hs2.block] if score @s hs2.block_id = @p[team=hs2.hiders] hs2.block_id run data modify entity @s block_state.Name set from entity @n[type=armor_stand,tag=hs2.raycast_hit] equipment.mainhand.id
kill @n[type=armor_stand,tag=hs2.raycast_hit]