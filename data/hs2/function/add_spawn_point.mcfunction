# params: {
#   "type": <string> // respawn|hider|seeker
#   "x": <float>
#   "y": <float>
#   "z": <float>
# }

$summon armor_stand $(x) $(y) $(z) {Tags:[hs2.spawn,hs2.$(type)_spawn],Small:true,NoBasePlate:true,NoGravity:true,CustomName:"$(type)_spawn",CustomNameVisible:true,equipment:{head:{id:"player_head",components:{profile:{id:[I;-1040225899,-1126871523,-1271360250,1313847604],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQ3OGQ4MDkxODlmZTBkMmIwZjUzNjFmZjJlN2Y0ODM3OWQ1NjJhNjNiMTBmMTVjNjAzMWJmZTNmZDAwMDhkIn19fQ=="}]}}}}}