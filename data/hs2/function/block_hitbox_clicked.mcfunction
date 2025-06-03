execute on attacker if entity @s[team=hs2.seekers] run tag @s add hs2._kill_
data remove entity @s attack
execute if entity @a[tag=hs2._kill_] as @a[team=hs2.hiders] if score @s hs2.block_id = @n[type=interaction,tag=hs2.block_hitbox] hs2.block_id run kill @s
tag @a[tag=hs2._kill_] remove hs2._kill_