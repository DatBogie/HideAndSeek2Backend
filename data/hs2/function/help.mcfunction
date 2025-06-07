# params: {
#   "cmd": <string> // The command to ask about
# }

# Valid Command
$execute if data storage hs2:help $(cmd) run tellraw @s [{text:"Displaying help for '$(cmd)':\n",color:yellow,underlined:true},{text:"  > '",color:white,underlined:false},{nbt:"$(cmd)",storage:"hs2:help",color:white,underlined:false},{text:"'",color:white,underlined:false}]

# Invalid Command
$execute unless data storage hs2:help $(cmd) run tellraw @s {text:"'$(cmd)' is not a valid command, or does not have a help blurb defined. Please contact Dat_Bogie if you think this is a mistake.",color:red}