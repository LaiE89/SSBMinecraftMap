scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~0.5 ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @s ~ ~-2 ~
execute as @s[scores={kits.raycastTick=5}] positioned ^ ^ ^ run tp @s ~ ~ ~

execute as @s[scores={kits.raycastTick=..4}] positioned ~ ~0.5 ~ run function kits:char/raiden/raidenpassive6
