# Teleports Behind Targeted Enemy
scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute if score @s kits.raycastTick2 matches 2222.. run tp @s ^ ^ ^-1 ~180 ~
execute if score @s kits.raycastTick2 matches 10 run tp @s ^ ^ ^ ~180 ~
execute if score @s kits.raycastTick2 matches ..9 positioned ^ ^ ^0.5 run function kits:gojo/special/blink/tp
