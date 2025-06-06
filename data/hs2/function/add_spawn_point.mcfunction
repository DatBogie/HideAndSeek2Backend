# params: {
#   "type": <string> // {-1:respawn,0:hider,1:seeker}
#   "pos": <vec3>
# }

$summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:[hs2.spawn,hs2.$(type)_spawn]}