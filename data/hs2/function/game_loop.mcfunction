execute as @a[scores={alive=2..},team=hs2.hiders] run function hs2:player_dead
execute as @a[scores={alive=1..},team=!hs2.hiders] run scoreboard players reset @s alive

execute if score tick_end hs2.timer matches ..39 unless entity @a[team=hs2.hiders] run scoreboard players add tick_end hs2.timer 1
execute if score tick_end hs2.timer matches 40.. unless entity @a[team=hs2.hiders] run function hs2:game_over

execute as @a[team=hs2.seekers,scores={hs2.enderPearlUsed=1..}] unless data entity @s Inventory[{id:"minecraft:ender_pearl"}] run give @s ender_pearl[use_cooldown={seconds:60}]
execute as @a[scores={hs2.enderPearlUsed=1..}] run scoreboard players reset @s hs2.enderPearlUsed
execute as @a[team=hs2.hiders,scores={hs2.windchargeUsed=1..}] unless data entity @s Inventory[{id:"minecraft:wind_charge"}] run give @s wind_charge[use_cooldown={seconds:30}]
execute as @a[scores={hs2.windchargeUsed=1..}] run scoreboard players reset @s hs2.windchargeUsed
execute as @a[team=hs2.seekers,scores={hs2.seekerEyeUsed=1..}] unless data entity @s Inventory[{id:"minecraft:eye_armor_trim_smithing_template"}] run function hs2:give_seekerseye
execute as @a[team=hs2.seekers,scores={hs2.seekerEyeUsed=1..}] run function hs2:trigger_seeker_eye
execute as @a[scores={hs2.seekerEyeUsed=1..}] run scoreboard players reset @s hs2.seekerEyeUsed

execute if score count hs2.timer < HideTime hs2.config run function hs2:timer_tick
execute if score tick hs2.timer matches 21.. run function hs2:timer_count
execute if score count hs2.timer = HideTime hs2.config run function hs2:seeker_start