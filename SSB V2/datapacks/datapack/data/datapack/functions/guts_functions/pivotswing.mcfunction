effect give @e[tag=!Guts,tag=!InLabyrinth,distance=..5] minecraft:nausea 5 9 true
effect give @e[tag=!Guts,tag=!InLabyrinth,distance=..5] minecraft:blindness 1 0 true
effect give @e[tag=!Guts,tag=!InLabyrinth,distance=..5] minecraft:slowness 5 1 true
effect give @e[tag=!Guts,tag=!InLabyrinth,distance=..5] minecraft:weakness 5 0 false
execute as @e[tag=!Guts,tag=!InLabyrinth,distance=..5] at @s run function datapack:damage1
particle minecraft:dust 0 0 0 2 ~ ~0.8 ~ 2 0 2 0 300
particle minecraft:block minecraft:redstone_block ~ ~0.8 ~ 2 0 2 0 10
particle minecraft:campfire_signal_smoke ~ ~0.8 ~ 2 0 2 0 10
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 10 0 1
scoreboard players reset @s Timer
tag @s remove GutsPivotSwing
