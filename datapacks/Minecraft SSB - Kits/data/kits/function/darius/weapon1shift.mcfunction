effect give @s minecraft:mining_fatigue 1 9 true
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["DariusDecimate"]}
scoreboard players set @s kits.ability1CD 0
