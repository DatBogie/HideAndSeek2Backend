# params: {
#  "map": <string> // The name of the map to register
# }
$execute if score $(map) hs2.maps matches 1.. run tellraw @s {text:"Map with name '$(map)' has already been registered!",color:"red"}
$execute unless score $(map) hs2.maps matches 1.. run tellraw @s {text:"Map '$(map)' has been registered!",color:green}
$execute unless score $(map) hs2.maps matches 1.. run scoreboard players add maps hs2.map_sel 1
$execute unless score $(map) hs2.maps matches 1.. run scoreboard players operation $(map) hs2.maps = maps hs2.map_sel