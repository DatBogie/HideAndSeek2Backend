scoreboard players set @s hs2.raycast_length 0
tag @s add hs2.raycast_success
summon item_display ~ ~ ~ {Tags:["hs2.murder_raycast_hit","hs2.murder_just_tagged"],item:{id:"iron_sword"},transformation:{left_rotation:[-0.27059808f,-0.65328145f,0.27059808f,0.65328145f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0f,0f]}}
tp @n[type=item_display,tag=hs2.murder_just_tagged] ~ ~ ~ facing entity @s
tag @n[type=item_display,tag=hs2.murder_just_tagged] remove hs2.murder_just_tagged