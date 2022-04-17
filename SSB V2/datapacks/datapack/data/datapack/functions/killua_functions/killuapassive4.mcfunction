scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222

execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run tp @e[tag=KilluaKnockback] ^ ^ ^-1
execute if entity @s[scores={RaycastTimer2=31}] run tp @e[tag=KilluaKnockback] ^ ^ ^

execute as @s[scores={RaycastTimer2=..30}] positioned ^ ^ ^0.5 run function datapack:killua_functions/killuapassive4
