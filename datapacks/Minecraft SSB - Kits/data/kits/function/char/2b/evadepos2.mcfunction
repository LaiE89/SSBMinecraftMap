scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^ ^ run tag @e[type=armor_stand,tag=2bevadepos2] add 2bhologramcloser
execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^ ^ run tp @e[type=armor_stand,tag=2bevadepos2] ^-1 ^ ^
execute if entity @s[scores={kits.raycastTick2=15}] run tp @e[type=armor_stand,tag=2bevadepos2] ^ ^ ^

execute as @s[scores={kits.raycastTick2=..14}] positioned ^0.5 ^ ^ run function kits:char/2b/evadepos2
