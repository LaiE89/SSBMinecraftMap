scoreboard players add @s kits.specific.raidenCrescentTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.specific.raidenCrescentTick 2222

execute as @s[scores={kits.specific.raidenCrescentTick=2222..}] positioned ^ ^ ^ run tp @s ~ ~1 ~
execute as @s[scores={kits.specific.raidenCrescentTick=2222..}] positioned ^ ^ ^ run effect give @s slowness 1 9 true

execute as @s[scores={kits.specific.raidenCrescentTick=..1111}] positioned ~ ~-0.5 ~ run function kits:char/raiden/raidenpassive4
