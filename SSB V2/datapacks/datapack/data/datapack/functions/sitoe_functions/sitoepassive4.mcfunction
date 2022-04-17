scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222
execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run particle minecraft:flash ~ ~1 ~
execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute if entity @s[scores={RaycastTimer2=35}] run particle minecraft:flash ~ ~1 ~
execute if entity @s[scores={RaycastTimer2=35}] run tp @s ^ ^ ^
execute as @s[scores={RaycastTimer2=2222..}] run scoreboard players set @s Ability3CD 0
execute if entity @s[scores={RaycastTimer2=35}] run scoreboard players set @s Ability3CD 0
execute as @s[scores={RaycastTimer2=..34}] positioned ^ ^ ^0.5 run function datapack:sitoe_functions/sitoepassive4