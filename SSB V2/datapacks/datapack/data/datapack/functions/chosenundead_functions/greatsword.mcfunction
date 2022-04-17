execute as @e[distance=..4,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function datapack:damage2
particle minecraft:block minecraft:dirt ~ ~0.5 ~ 1.5 0 1.5 0 100
particle minecraft:sweep_attack ^ ^1.5 ^2 0 0 0 0 1
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0 1