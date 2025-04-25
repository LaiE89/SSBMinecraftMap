scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run tag @e[type=armor_stand,tag=2bevadepos3] add 2bhologramcloser
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run tp @e[type=armor_stand,tag=2bevadepos3] ^1 ^ ^
execute if entity @s[scores={kits.raycastTick3=15}] run tp @e[type=armor_stand,tag=2bevadepos3] ^ ^ ^

execute as @s[scores={kits.raycastTick3=..14}] positioned ^-0.5 ^ ^ run function kits:char/2b/evadepos3
