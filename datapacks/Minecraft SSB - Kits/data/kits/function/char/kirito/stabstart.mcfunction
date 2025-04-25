execute as @p[tag=Kirito] at @s run particle sweep_attack ^ ^1.5 ^1 0 0 0 0 1 force
execute as @p[tag=Kirito] at @s run scoreboard players set @s kits.raycastTick3 0
execute as @p[tag=Kirito] at @s positioned ~ ~1.25 ~ run function kits:char/kirito/stabanimation
tag @e[tag=KiritoStabbed] remove KiritoStabbed
