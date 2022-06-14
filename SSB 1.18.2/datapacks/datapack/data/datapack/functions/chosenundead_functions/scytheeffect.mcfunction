tp @s ^ ^ ^-0.25
particle minecraft:block minecraft:ice ~ ~1 ~ 0.2 0.2 0.2 0 20
particle minecraft:cloud ~ ~1 ~ 0 0 0 0 1
execute as @e[distance=..2,type=!area_effect_cloud,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function datapack:damage1
effect give @e[distance=..2,type=!area_effect_cloud,tag=!ChosenUndead,tag=!InLabyrinth] minecraft:slowness 1 2 true
playsound minecraft:block.glass.break neutral @a[distance=..5] ~ ~ ~ 0.5 0.5 0.5

