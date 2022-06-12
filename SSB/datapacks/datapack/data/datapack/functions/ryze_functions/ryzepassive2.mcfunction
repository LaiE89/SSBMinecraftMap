scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon armor_stand ^ ^1 ^-1 {Tags:["realmwarp2"],Small:1,Invisible:1,Invulnerable:1}
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run particle minecraft:flash
execute as @s[scores={RaycastTimer=..1111}] positioned ^ ^ ^0.5 run function datapack:ryze_functions/ryzepassive2