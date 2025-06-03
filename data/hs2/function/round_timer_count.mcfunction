scoreboard players set round_tick hs2.timer 0
scoreboard players add round_count hs2.timer 1
execute store result bossbar hs2:round_timer max run scoreboard players get RoundTimeLimit hs2.config
execute store result bossbar hs2:round_timer value run scoreboard players get round_count hs2.timer