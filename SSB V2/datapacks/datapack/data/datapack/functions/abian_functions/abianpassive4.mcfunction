scoreboard players add @s RaycastTimer 1

execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["AbianStarstorm2","projectile"],Invisible:1,Invulnerable:1,NoGravity:1b,DisabledSlots:2039583}
execute if entity @s[scores={RaycastTimer=30}] run summon armor_stand ~ ~ ~ {Tags:["AbianStarstorm2","projectile"],Invisible:1,Invulnerable:1,NoGravity:1b,DisabledSlots:2039583}
kill @e[type=armor_stand,tag=AbianStarstorm]

execute as @s[scores={RaycastTimer=..29}] positioned ~ ~0.5 ~ run function datapack:abian_functions/abianpassive4