#execute as @p[tag=Ekko] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition] feet run tp @s ^ ^ ^2

scoreboard players add @s kits.timer2 1
particle enchanted_hit ~ ~ ~ 1 0.5 1 0 50 force

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,distance=..1.5] as @s[scores={kits.timer2=1..4}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~-0.065 ~ ~ ~25
execute unless entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,distance=..1.5] as @s[scores={kits.timer2=5}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~2 ~ #kits:passable run tp @s ~ ~1.35 ~ ~ ~-25
execute unless entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,distance=..1.5] as @s[scores={kits.timer2=6..8}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~0.065 ~ ~ ~-20

execute if entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,distance=..1.5] as @s[scores={kits.timer2=1..4}] rotated ~ 0 positioned ^ ^ ^ rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~-0.065 ~ ~ ~25
execute if entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,distance=..1.5] as @s[scores={kits.timer2=5}] rotated ~ 0 positioned ^ ^ ^ rotated as @s if block ~ ~2 ~ #kits:passable run tp @s ~ ~1.35 ~ ~ ~-25
execute if entity @e[type=minecraft:area_effect_cloud,tag=EkkoDivePosition,distance=..1.5] as @s[scores={kits.timer2=6..8}] rotated ~ 0 positioned ^ ^ ^ rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~0.065 ~ ~ ~-20

execute if score @s kits.timer2 matches 9.. at @s run function kits:char/ekko/phasedive/rollend
