tp @s -411 31 1199 facing -412 31 1199

scoreboard players set @s alive 1

give @s wind_charge[use_cooldown={seconds:30}]
function hs2:give_gtfo

execute if score BlockHunt hs2.config matches 1.. run function hs2:block_hider_setup