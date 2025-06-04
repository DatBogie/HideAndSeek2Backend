scoreboard players remove murder_tick hs2.timer 1
execute if score murder_tick hs2.timer matches 100 run tellraw @a [{text:"Weapons given in ",color:"yellow"},{text:"5",color:"red"},{text:"...",color:"yellow"}]
execute if score murder_tick hs2.timer matches 80 run tellraw @a [{text:"Weapons given in ",color:"yellow"},{text:"4",color:"red"},{text:"...",color:"yellow"}]
execute if score murder_tick hs2.timer matches 60 run tellraw @a [{text:"Weapons given in ",color:"yellow"},{text:"3",color:"red"},{text:"...",color:"yellow"}]
execute if score murder_tick hs2.timer matches 40 run tellraw @a [{text:"Weapons given in ",color:"yellow"},{text:"2",color:"red"},{text:"...",color:"yellow"}]
execute if score murder_tick hs2.timer matches 20 run tellraw @a [{text:"Weapons given in ",color:"yellow"},{text:"1",color:"red"},{text:"...",color:"yellow"}]