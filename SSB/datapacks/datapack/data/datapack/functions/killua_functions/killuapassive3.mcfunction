scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=KilluaYoyoKnockback] ^ ^ ^1
execute if entity @s[scores={RaycastTimer=21}] run tp @e[tag=KilluaYoyoKnockback] ^ ^ ^

execute as @s[scores={RaycastTimer=..20}] positioned ^ ^ ^-0.5 run function datapack:killua_functions/killuapassive3