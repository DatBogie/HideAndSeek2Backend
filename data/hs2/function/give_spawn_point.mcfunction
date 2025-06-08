# params: {
#  "type": <string> // respawn|hider|seeker
#  "map": <string>
# }

$give @s villager_spawn_egg[item_name="Spawn $(type)_spawn",lore=[{text:"Map: $(map)",italic:false},{text:"Type: $(type)",italic:false}],entity_data={id:"armor_stand",Tags:[hs2.spawn,hs2.$(type)_spawn,hs2.$(map)_spawn],Small:true,NoBasePlate:true,NoGravity:true,CustomName:"$(type)_spawn_$(map)",CustomNameVisible:true,equipment:{head:{id:"player_head",components:{profile:{id:[I;-1040225899,-1126871523,-1271360250,1313847604],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQ3OGQ4MDkxODlmZTBkMmIwZjUzNjFmZjJlN2Y0ODM3OWQ1NjJhNjNiMTBmMTVjNjAzMWJmZTNmZDAwMDhkIn19fQ=="}]}}}}}]