scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @s[type=minecraft:player] if entity @s[gamemode=!spectator] as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tp @p[tag=KiritoBlitz] ^ ^ ^-1 facing entity @s
execute if entity @s[type=minecraft:player] if entity @s[gamemode=!spectator] as @s[scores={kits.raycastTick=6}] positioned ~ ~ ~ run tp @p[tag=KiritoBlitz] ^ ^ ^ facing entity @s

execute unless entity @s[type=minecraft:player] as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run tp @p[tag=KiritoBlitz] ^ ^ ^-1 facing entity @s
execute unless entity @s[type=minecraft:player] as @s[scores={kits.raycastTick=6}] positioned ~ ~ ~ run tp @p[tag=KiritoBlitz] ^ ^ ^ facing entity @s
execute as @s[scores={kits.raycastTick=..5}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/kirito/blitzendlocation
