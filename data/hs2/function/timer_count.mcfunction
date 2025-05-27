scoreboard players set tick hs2.timer 0
scoreboard players add count hs2.timer 1
title @a actionbar ["",{text:"Time until seeker release: "}, {score:{name:"count",objective:"hs2.timer"}},{text:"s/"},{score:{name:"HideTime",objective:"hs2.config"}},{text:"s"}]