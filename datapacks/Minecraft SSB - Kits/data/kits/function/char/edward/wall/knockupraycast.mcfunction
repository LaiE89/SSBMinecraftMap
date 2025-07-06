scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute if entity @s[scores={kits.raycastTick=2222..}] run tp @s ~ ~-2 ~
execute if entity @s[scores={kits.raycastTick=10}] run tp @s ~ ~ ~
execute as @s[scores={kits.raycastTick=..9}] positioned ~ ~0.5 ~ run function kits:char/edward/wall/knockupraycast
