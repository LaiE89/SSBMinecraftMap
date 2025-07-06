scoreboard players add @s kits.specific.raidenCrescentTick 1
execute unless block ~ ~0.5 ~ #kits:passable run scoreboard players set @s kits.specific.raidenCrescentTick 2222

execute as @s[scores={kits.specific.raidenCrescentTick=2222..}] positioned ^ ^ ^ run tp @s ~ ~-2 ~
execute as @s[scores={kits.specific.raidenCrescentTick=5}] positioned ^ ^ ^ run tp @s ~ ~ ~

execute as @s[scores={kits.specific.raidenCrescentTick=..4}] positioned ~ ~0.5 ~ run function kits:char/raiden/raidenpassive5
