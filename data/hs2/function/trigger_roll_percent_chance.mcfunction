# params: {
#   "chance": <int>
# }

$scoreboard players set @s hs2.random.p $(chance)
execute store result score @s hs2.random.p run function hs2:roll_percent_chance