execute at @s positioned ~ ~ ~ facing entity @p[tag=Spawn] feet run function kits:char/spawn/spawnpassive5

scoreboard players add @s kits.timer 1
execute if score @s kits.timer2 matches 1 at @s[scores={kits.timer=..7}] facing entity @e[type=area_effect_cloud,tag=SpawnChainsLocation,limit=1,sort=nearest] feet run tp @s ^1 ^ ^1.5 facing entity @e[type=area_effect_cloud,tag=SpawnChainsLocation,limit=1,sort=nearest]
execute if score @s kits.timer2 matches 1 at @s[scores={kits.timer=8..}] facing entity @p[tag=Spawn] feet run tp @s ^1 ^ ^1.5 facing entity @p[tag=Spawn]
execute if score @s kits.timer2 matches 2 at @s[scores={kits.timer=..7}] facing entity @e[type=area_effect_cloud,tag=SpawnChainsLocation,limit=1,sort=nearest] feet run tp @s ^-1 ^ ^1.5 facing entity @e[type=area_effect_cloud,tag=SpawnChainsLocation,limit=1,sort=nearest]
execute if score @s kits.timer2 matches 2 at @s[scores={kits.timer=8..}] facing entity @p[tag=Spawn] feet run tp @s ^-1 ^ ^1.5 facing entity @p[tag=Spawn]

execute as @s[scores={kits.timer=8..}] at @s if entity @p[tag=Spawn,distance=..1.5] run kill @e[type=area_effect_cloud,tag=SpawnChains]
