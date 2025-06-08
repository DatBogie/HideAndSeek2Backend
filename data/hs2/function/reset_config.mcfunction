scoreboard players set Reset hs2.config 0
scoreboard players set HideTime hs2.config 120
scoreboard players set SeekersGlow hs2.config 1
scoreboard players set BlockHunt hs2.config 0
scoreboard players set GiveSeekerEyeAfter hs2.config 3600
scoreboard players set RoundTimeLimit hs2.config 1800
scoreboard players set Murder hs2.config 0
scoreboard players set Murder.GiveWeaponsAfter hs2.config 300
scoreboard players set Murder.GoldSpawnRate hs2.config 600
scoreboard players set Murder.GoldSpawnChance hs2.config 35

# give @s pale_oak_sign[block_entity_data={id:"sign",front_text:{color:"white",messages:["",{text:"<<",click_event:{action:"run_command",command:"function hs2:selector_prev_map"}},"",""],has_glowing_text:true}}]
# give @s pale_oak_sign[block_entity_data={id:"sign",front_text:{color:"white",messages:["",{text:">>",click_event:{action:"run_command",command:"function hs2:selector_next_map"}},"",""],has_glowing_text:true}}]