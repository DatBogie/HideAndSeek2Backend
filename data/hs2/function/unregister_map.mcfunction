# params: {
#  "map": <string> // The name of the map to register
# }
$execute unless score $(map) hs2.maps matches 1.. run tellraw @s {text:"No map with name '$(map)' has been registered!",color:"red"}
$execute if score $(map) hs2.maps matches 1.. run tellraw @s {text:"Map '$(map)' has been unregistered!",color:green}
$execute if score $(map) hs2.maps matches 1.. run scoreboard players remove maps hs2.map_sel 1
$execute if score $(map) hs2.maps matches 1.. run scoreboard players reset $(map) hs2.maps