execute if entity @s[scores={kits.timer=10..}] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[scores={kits.timer=10}] run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..50] ~ ~ ~ 10 0 1
execute if entity @s[scores={kits.timer=10..150}] run particle minecraft:falling_dust{block_state:"minecraft:white_wool"} ^ ^ ^5 0.1 0.1 0.1 0 5 force
execute if entity @s[scores={kits.timer=10..150}] run particle minecraft:falling_dust{block_state:"minecraft:white_wool"} ^ ^ ^-3 0.1 0.1 0.1 0 5 force
execute if entity @s[scores={kits.timer=40}] run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..50] ~ ~ ~ 10 0 1
execute if entity @s[scores={kits.timer=40..150}] run particle minecraft:falling_dust{block_state:"minecraft:lime_wool"} ^ ^2 ^6 0 0.5 0 0 20 force
execute if entity @s[scores={kits.timer=70}] run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..50] ~ ~ ~ 10 0 1
execute if entity @s[scores={kits.timer=70..150}] run particle minecraft:falling_dust{block_state:"minecraft:cyan_wool"} ^ ^4 ^4 0 1.5 0 0 20 force
execute if entity @s[scores={kits.timer=100}] run particle minecraft:flash ~ ~2 ~ 0 0 0 0 10
execute if entity @s[scores={kits.timer=100}] run playsound minecraft:item.trident.thunder neutral @a[distance=..50] ~ ~ ~ 10 1 1
execute if entity @s[scores={kits.timer=100..150}] run particle minecraft:falling_dust{block_state:"minecraft:blue_wool"} ^ ^6 ^1 0 2.5 0 0 20 force

execute if entity @s[scores={kits.timer=150..}] run tag @e[tag=LaiethGettingRitualed] remove LaiethGettingRitualed
execute if entity @s[scores={kits.timer=150..}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={kits.timer=150..}] run kill @e[type=area_effect_cloud,tag=LaiethGettingRitualedDamage]

execute if entity @s[scores={kits.timer=..99}] run effect give @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] minecraft:slowness 1 2 true
execute if entity @s[scores={kits.timer=100..}] unless entity @e[tag=LaiethGettingRitualed] as @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] at @s run function kits:laieth/ritualdamage
execute if entity @s[scores={kits.timer=100..}] if entity @e[tag=LaiethGettingRitualed] unless entity @e[type=area_effect_cloud,tag=LaiethGettingRitualedDamage] run summon area_effect_cloud ~ ~ ~ {Tags:["LaiethGettingRitualedDamage"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:150}
