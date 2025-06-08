execute as @a[scores={alive=2..},team=hs2.hiders] run function hs2:player_dead
execute if score Murder hs2.config matches 1.. as @a[scores={alive=1..},team=hs2.seekers] run function hs2:player_dead
execute as @a[scores={alive=1..},team=!hs2.hiders] run scoreboard players reset @s alive

execute unless entity @a[team=hs2.hiders] run scoreboard players set STARTED hs2.timer -1
execute if score Murder hs2.config matches 1.. unless entity @a[team=hs2.seekers] run scoreboard players set STARTED hs2.timer -1
execute if score Murder hs2.config matches 1.. unless entity @a[team=hs2.seekers] run tag @r add hs2.end_hiders
execute if score STARTED hs2.timer matches -1 if score tick_end hs2.timer matches ..39 run scoreboard players add tick_end hs2.timer 1
execute if score STARTED hs2.timer matches -1 if score tick_end hs2.timer matches 40.. run function hs2:game_over with storage hs2:round

execute unless score Murder hs2.config matches 1.. as @a[team=hs2.seekers,scores={hs2.enderPearlUsed=1..}] unless data entity @s Inventory[{id:"minecraft:ender_pearl"}] run give @s ender_pearl[use_cooldown={seconds:60}]
execute unless score Murder hs2.config matches 1.. as @a[scores={hs2.enderPearlUsed=1..}] run scoreboard players reset @s hs2.enderPearlUsed

execute unless score Murder hs2.config matches 1.. as @a[team=hs2.hiders,scores={hs2.windchargeUsed=1..}] unless data entity @s Inventory[{id:"minecraft:wind_charge"}] run give @s wind_charge[use_cooldown={seconds:30}]
execute unless score Murder hs2.config matches 1.. as @a[scores={hs2.windchargeUsed=1..}] run scoreboard players reset @s hs2.windchargeUsed

execute unless score Murder hs2.config matches 1.. as @a[team=hs2.seekers,scores={hs2.seekerEyeUsed=1..}] unless data entity @s Inventory[{id:"minecraft:eye_armor_trim_smithing_template"}] run function hs2:give_seekerseye
execute unless score Murder hs2.config matches 1.. as @a[team=hs2.seekers,scores={hs2.seekerEyeUsed=1..}] at @s run function hs2:trigger_seeker_eye
execute unless score Murder hs2.config matches 1.. as @a[scores={hs2.seekerEyeUsed=1..}] run scoreboard players reset @s hs2.seekerEyeUsed

execute unless score Murder hs2.config matches 1.. as @a[team=hs2.hiders,scores={hs2.gtfoUsed=1..}] unless data entity @s Inventory[{id:"minecraft:sugar"}] run function hs2:give_gtfo
execute unless score Murder hs2.config matches 1.. as @a[scores={hs2.gtfoUsed=1..}] run scoreboard players reset @s hs2.gtfoUsed

execute unless score Murder hs2.config matches 1.. if score count hs2.timer < HideTime hs2.config run function hs2:timer_tick
execute unless score Murder hs2.config matches 1.. if score tick hs2.timer matches 21.. run function hs2:timer_count
execute unless score Murder hs2.config matches 1.. if score count hs2.timer = HideTime hs2.config run function hs2:seeker_start with storage hs2:round

execute unless score Murder hs2.config matches 1.. if score STARTED hs2.timer matches 1.. if score seeker_eye_tick hs2.timer matches 0.. run scoreboard players add seeker_eye_tick hs2.timer 1
execute unless score Murder hs2.config matches 1.. if score seeker_eye_tick hs2.timer >= GiveSeekerEyeAfter hs2.config as @a[team=hs2.seekers] run function hs2:give_seekerseye
execute unless score Murder hs2.config matches 1.. if score seeker_eye_tick hs2.timer >= GiveSeekerEyeAfter hs2.config run scoreboard players set seeker_eye_tick hs2.timer -1

execute if score STARTED hs2.timer matches 1.. if score round_count hs2.timer < RoundTimeLimit hs2.config if score round_tick hs2.timer matches 20.. run function hs2:round_timer_count
execute if score STARTED hs2.timer matches 1.. if score round_count hs2.timer < RoundTimeLimit hs2.config run scoreboard players add round_tick hs2.timer 1
execute if score STARTED hs2.timer matches 1.. if score round_count hs2.timer >= RoundTimeLimit hs2.config run function hs2:time_over

execute if score BlockHunt hs2.config matches 1.. run function hs2:block_game_loop
execute if score Murder hs2.config matches 1.. run function hs2:murder_game_loop