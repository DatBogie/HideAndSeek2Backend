function hs2:block_reset
execute as @a[team=hs2.hiders] unless score @s hs2.block_id matches 1.. run function hs2:block_next_id