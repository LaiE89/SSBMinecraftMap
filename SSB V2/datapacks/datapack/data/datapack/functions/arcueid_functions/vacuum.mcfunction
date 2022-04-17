execute at @s[tag=ArcueidVacuumThrown] run particle minecraft:sweep_attack ~ ~1 ~
execute at @s[tag=!ArcueidVacuumThrown] run particle minecraft:dust 2 0 0.5 2 ^ ^1 ^2 0 0 0 0 10
execute at @s[tag=!ArcueidVacuumThrown] run particle minecraft:dust 2 0 0.5 2 ^ ^1 ^-1 0 0 0 0 10
execute as @e[distance=..2.5,tag=!Arcueid,tag=!InLabyrinth] at @s run function datapack:damage1