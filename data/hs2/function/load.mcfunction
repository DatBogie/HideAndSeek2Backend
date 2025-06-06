tellraw @a ["",{text:"Loaded: "},{text:"W",bold:true,obfuscated:true,color:"#B7BDF8"},{text:"Hide & Seek 2",bold:true,color:"#B7BDF8"},{text:"W",bold:true,obfuscated:true,color:"#B7BDF8"}]
execute unless entity @e[type=armor_stand,tag=hs2.respawn_spawn] run spawnpoint @a -410 5 1200
execute as @e[type=armor_stand,tag=hs2.respawn_spawn,sort=random,limit=1] at @s run spawnpoint @a ~ ~ ~
tag @a remove hs2.was_seeker
function hs2:reset
tag @a[tag=hs2.end_hiders] remove hs2.end_hiders