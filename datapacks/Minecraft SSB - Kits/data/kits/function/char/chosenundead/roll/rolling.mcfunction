scoreboard players add @s kits.timer9 1
particle dust_plume ~ ~ ~ 0 0 0 0.1 10 force
execute if score @s kits.timer9 matches 4 at @s run playsound entity.player.small_fall neutral @a[distance=..20] ~ ~ ~ 1 1 1

execute unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..1.5] as @s[scores={kits.timer9=1..4}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~-0.065 ~ ~ ~25
execute unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..1.5] as @s[scores={kits.timer9=5}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~2 ~ #kits:passable run tp @s ~ ~1.35 ~ ~ ~-25
execute unless entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..1.5] as @s[scores={kits.timer9=6..8}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~0.065 ~ ~ ~-20

execute if entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..1.5] as @s[scores={kits.timer9=1..4}] rotated ~ 0 positioned ^ ^ ^ rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~-0.065 ~ ~ ~25
execute if entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..1.5] as @s[scores={kits.timer9=5}] rotated ~ 0 positioned ^ ^ ^ rotated as @s if block ~ ~2 ~ #kits:passable run tp @s ~ ~1.35 ~ ~ ~-25
execute if entity @e[type=minecraft:area_effect_cloud,tag=DarkSoulsRoll,distance=..1.5] as @s[scores={kits.timer9=6..8}] rotated ~ 0 positioned ^ ^ ^ rotated as @s if block ~ ~1 ~ #kits:passable run tp @s ~ ~0.065 ~ ~ ~-20

execute if score @s kits.timer9 matches 9.. at @s run function kits:char/chosenundead/roll/rollend

#tp @s ^ ^ ^0.5
#execute at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
