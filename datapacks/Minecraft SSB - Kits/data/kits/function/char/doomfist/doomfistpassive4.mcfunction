scoreboard players add @s kits.raycastTick 1
particle spit ~ ~ ~ 0 0 0 0 5 force
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={kits.raycastTick=31}] run tp @s ~ ~ ~
execute as @s[scores={kits.raycastTick=..30}] positioned ~ ~0.5 ~ run function kits:char/doomfist/doomfistpassive4
