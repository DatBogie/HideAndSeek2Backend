team modify hs2.hiders color blue
team modify hs2.hiders deathMessageVisibility never
team modify hs2.hiders nametagVisibility never
team modify hs2.hiders friendlyFire true
team modify hs2.hiders prefix ""

team modify hs2.seekers color blue
team modify hs2.seekers deathMessageVisibility never
team modify hs2.seekers nametagVisibility never
team modify hs2.seekers friendlyFire false
team modify hs2.seekers prefix ""

clear @a

tag @a remove hs2.sheriff
tag @r[team=hs2.hiders] add hs2.sheriff

title @a[team=hs2.seekers] subtitle {text:"Kill everyone to win!",italic:true}
title @a[team=hs2.seekers] title {text:"Murderer",bold:true,color:"red"}

title @a[team=hs2.hiders,tag=hs2.sheriff] subtitle {text:"Shoot the murderer to win!",italic:true}
title @a[team=hs2.hiders,tag=hs2.sheriff] title {text:"Sheriff",color:"green",bold:true}

title @a[team=hs2.hiders,tag=!hs2.sheriff] subtitle {text:"Deduce who the murderer is and survive.",italic:true}
title @a[team=hs2.hiders,tag=!hs2.sheriff] title {text:"Innocent",bold:true,color:"blue"}

scoreboard players operation murder_tick hs2.timer = Murder.GiveWeaponsAfter hs2.config
scoreboard players set WEAPONS_GIVEN hs2.timer 0

function hs2:seeker_start with storage hs2:round

scoreboard players operation __temp_time hs2.timer = Murder.GiveWeaponsAfter hs2.config
scoreboard players set __temp_mul hs2.timer 20
scoreboard players operation __temp_time hs2.timer /= __temp_mul hs2.timer
scoreboard players reset __temp_mul hs2.timer
tellraw @a [{text:"Weapons given in ",color:"yellow",},{score:{name:"__temp_time",objective:"hs2.timer"},color:"red"},{text:"s",color:"red"},{text:"...",color:"yellow"}]
scoreboard players reset __temp_time hs2.timer

scoreboard players set @a hs2.murder_gold 0