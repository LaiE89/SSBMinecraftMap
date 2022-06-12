scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222
execute at @s[scores={RaycastTimer2=2222..}] run particle minecraft:squid_ink ^ ^3 ^-2 0.5 1 0.5 0 150
execute at @s[scores={RaycastTimer2=2222..}] run particle minecraft:falling_dust minecraft:netherrack ^ ^3 ^-2 0.5 1 0.5 0 150
execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^2 ^-2 run particle minecraft:smoke ~ ~0.5 ~ 0.4 1 0.4 0 500
execute as @s[scores={RaycastTimer2=2222..}] run playsound minecraft:entity.ender_dragon.flap neutral @p[distance=..20] ~ ~ ~ 10 1 1
execute as @s[scores={RaycastTimer2=2222..}] run scoreboard players remove @s Timer3 10
execute as @s[scores={RaycastTimer2=2222..}] run scoreboard players set @s Ability3CD 1

execute as @s[scores={RaycastTimer2=..1111}] positioned ^ ^ ^0.5 run function datapack:spawn_functions/spawnpassive2 