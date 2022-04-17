scoreboard players add @s RaycastTimer3 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer3 2222
execute as @s[scores={RaycastTimer3=2222..}] positioned ^ ^ ^ run summon armor_stand ~ ~1 ~ {Tags:["SitoeRitualStand"],Invisible:1,Invulnerable:1,DisabledSlots:2039583}
execute as @s[scores={RaycastTimer3=2222..}] run scoreboard players set @s Ability4CD 0
execute as @s[scores={RaycastTimer3=..1111}] positioned ^ ^ ^0.5 run function datapack:sitoe_functions/sitoepassive5