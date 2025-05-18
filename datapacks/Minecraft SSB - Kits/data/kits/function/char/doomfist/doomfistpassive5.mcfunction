scoreboard players add @s kits.raycastTick 1
particle dust{color:[0.000,1.000,1.000],scale:2} ~ ~ ~ 0 0 0 0 5 force
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tp @s ~ ~2 ~
execute as @s[scores={kits.raycastTick=..1111}] positioned ~ ~-0.5 ~ run function kits:char/doomfist/doomfistpassive5
