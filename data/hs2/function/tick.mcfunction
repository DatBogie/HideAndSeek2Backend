effect give @a night_vision infinite 255 true
effect give @a saturation infinite 255 true

# Start
execute if block -300 0 1200 redstone_block run function hs2:start
execute if block -301 0 1200 redstone_block run function hs2:game_loop