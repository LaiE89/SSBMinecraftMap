scoreboard players add @s kits.raycastTick3 1
execute if block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222..}] run tp @s ~ ~ ~

execute as @s[scores={kits.raycastTick3=..30}] positioned ~ ~0.25 ~ run function kits:char/vergil/forceedgeup
