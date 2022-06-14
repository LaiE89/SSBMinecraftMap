execute if entity @p[tag=Doomfist,distance=..6] run function datapack:damage1
execute if entity @p[tag=Doomfist,distance=..6] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 0.4 0.4 0 1

execute if entity @p[tag=Doomfist,distance=6.1..] run effect give @s minecraft:wither 1 1 true

kill @e[type=area_effect_cloud,tag=handcannonshot]