scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tag @e[type=armor_stand,tag=2bevadepos1] add 2bhologramcloser
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @e[type=armor_stand,tag=2bevadepos1] ^ ^ ^-1
execute if entity @s[scores={kits.raycastTick=15}] run tp @e[type=armor_stand,tag=2bevadepos1] ^ ^ ^

execute as @s[scores={kits.raycastTick=..14}] positioned ^ ^ ^0.5 run function kits:char/2b/evadepos1
