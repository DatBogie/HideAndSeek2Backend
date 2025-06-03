scoreboard players set tick hs2.timer 0
scoreboard players add count hs2.timer 1
title @a actionbar ["",{text:"Time until seeker release: "}, {score:{name:"count",objective:"hs2.timer"}},{text:"s/"},{score:{name:"HideTime",objective:"hs2.config"}},{text:"s"}]
execute store result bossbar hs2:round_timer max run scoreboard players get HideTime hs2.config
execute store result bossbar hs2:round_timer value run scoreboard players get count hs2.timer