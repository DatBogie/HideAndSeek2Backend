tp @s -328.5 4.0 1290.0 facing -328.0 4.0 1290.0

function hs2:give_speedystick
give @s ender_pearl[use_cooldown={seconds:60}]
function hs2:give_seekerseye

effect give @s resistance infinite 255 true
effect give @s fire_resistance infinite 255 true
effect give @s water_breathing infinite 255 true
effect give @s jump_boost infinite 1 true
execute if score SeekersGlow hs2.config matches 1.. run effect give @s glowing infinite 255 true