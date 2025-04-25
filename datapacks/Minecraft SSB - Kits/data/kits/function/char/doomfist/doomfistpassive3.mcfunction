scoreboard players add @s kits.raycastTick 1
execute if entity @s[tag=Doomfist] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 20 force
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tp @s ~ ~-2 ~
execute if entity @s[scores={kits.raycastTick=13}] run tp @s ~ ~ ~
execute as @s[scores={kits.raycastTick=..12}] positioned ~ ~0.5 ~ run function kits:char/doomfist/doomfistpassive3
