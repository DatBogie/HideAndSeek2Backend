# tag @a[tag=hs2.was_seeker] remove hs2.was_seeker
tag @a[team=hs2.seekers] add hs2.was_seeker
execute unless entity @a[tag=!hs2.was_seeker] run tag @a remove hs2.was_seeker
function hs2:reset
clear @a
title @a subtitle {text:"Seekers win!",color:"red",italic:true}
execute if entity @a[tag=hs2.end_hiders] run title @a subtitle {text:"Hiders win!",color:"blue",italic:true}
title @a title ["",{text:"Game Over!",bold:true,color:"red"}]
tag @a[tag=hs2.end_hiders] remove hs2.end_hiders
execute unless entity @e[type=armor_stand,tag=hs2.respawn_spawn] run tp @a -410 5 1200 facing -411 5 1200
execute at @s as @e[type=armor_stand,tag=hs2.respawn_spawn,sort=arbitrary,limit=1] run tp @p @s
gamemode creative @a

# Run Slots

# Slot 1
setblock -400 4 1221 redstone_block
setblock -400 4 1221 air

# Slot 2
setblock -400 4 1223 redstone_block
setblock -400 4 1223 air