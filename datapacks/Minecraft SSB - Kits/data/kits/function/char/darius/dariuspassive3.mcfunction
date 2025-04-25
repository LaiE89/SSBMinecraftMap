scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={kits.raycastTick2=11}] run tp @s ~ ~ ~
execute as @s[scores={kits.raycastTick2=..10}] positioned ~ ~0.5 ~ run function kits:char/darius/dariuspassive3
