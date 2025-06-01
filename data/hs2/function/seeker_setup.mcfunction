give @s stick[custom_name=[{"text":"Speedy Stick","italic":false,"color":"red"}],attribute_modifiers=[{type:movement_speed,amount:.5,slot:mainhand,operation:add_multiplied_total,id:"1748286038098"},{type:attack_damage,amount:20,slot:hand,operation:add_value,id:"1748286038099"},{type:attack_speed,amount:-2.4,slot:hand,operation:add_value,id:"1748286038100"},{type:attack_knockback,amount:4,operation:add_value,id:"1748286038101"},{type:sneaking_speed,amount:2,slot:mainhand,operation:add_multiplied_total,id:"1748286038102"}]]
give @s ender_pearl[use_cooldown={seconds:60}]
tp @s -328.5 4.0 1290.0 facing -328.0 4.0 1290.0
effect give @s resistance infinite 255 true
effect give @s fire_resistance infinite 255 true
effect give @s water_breathing infinite 255 true
effect give @s jump_boost infinite 1 true
execute if score SeekersGlow hs2.config matches 1.. run effect give @s glowing infinite 255 true