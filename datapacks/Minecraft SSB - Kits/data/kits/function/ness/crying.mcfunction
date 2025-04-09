particle falling_water ^-0.2 ^1.6 ^0.4 0 0 0 0 1 force
particle falling_water ^0.2 ^1.6 ^0.4 0 0 0 0 1 force
effect give @s minecraft:mining_fatigue 1 7 true
execute if entity @p[tag=Ness,scores={kits.timer3=100..}] run tag @s remove NessCrying
scoreboard players reset @p[tag=Ness,scores={kits.timer3=100..}] kits.timer3
