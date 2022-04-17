scoreboard players add @s RaycastTimer4 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer4 2222
execute as @s[scores={RaycastTimer4=2222}] positioned ^ ^ ^ run tp @e[tag=DoomfistKB] ^ ^ ^-1.5
execute as @s[scores={RaycastTimer4=2222}] run execute at @e[tag=DoomfistKB] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..40] ~ ~ ~ 3 0 1
execute as @s[scores={RaycastTimer4=2222}] run execute at @e[tag=DoomfistKB] run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 1 100
execute as @s[scores={RaycastTimer4=2222}] run execute at @e[tag=DoomfistKB] run particle minecraft:block minecraft:dirt ~ ~1 ~ 1 1 1 1 100
execute as @s[scores={RaycastTimer4=2222}] run execute as @e[tag=DoomfistKB] at @s run function datapack:damage2
execute as @s[scores={RaycastTimer4=31}] positioned ^ ^ ^ run tp @e[tag=DoomfistKB] ^ ^ ^
execute as @s[scores={RaycastTimer4=..30}] rotated ~ 0 positioned ^ ^ ^0.5 run function datapack:doomfist_functions/doomfistpassive9