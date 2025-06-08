# params: {
#  "chance": <int>
# }

execute store result score @s hs2.random run random value 1..10000
$execute if score @s hs2.random matches 1..$(chance) run return 1
return fail