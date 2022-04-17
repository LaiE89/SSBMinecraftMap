function datapack:damage1
summon area_effect_cloud ~ ~ ~ {Tags:["AlucardSoul"],Radius:1,Duration:80,Particle:"dust 5 0 0 1"}
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0.1 50
playsound minecraft:entity.player.attack.crit neutral @a[distance=..15]