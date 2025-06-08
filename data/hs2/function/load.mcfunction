tellraw @a ["",{text:"Loaded: "},{text:"W",bold:true,obfuscated:true,color:"#B7BDF8"},{text:"Hide & Seek 2",bold:true,color:"#B7BDF8"},{text:"W",bold:true,obfuscated:true,color:"#B7BDF8"}]
tag @a remove hs2.was_seeker
function hs2:reset with storage hs2:round
tag @a[tag=hs2.end_hiders] remove hs2.end_hiders