execute store result score @p[tag=Alucard] kits.timer5 run random value 0..2

execute if score @p[tag=Alucard] kits.timer5 matches 0 run summon item ~ ~1 ~ {Tags:["AlucardSoul"],Motion:[0.0,0.2,0.1],Item:{id:"minecraft:crimson_roots",Count:1b},Age:5900,PickupDelay:32767}
execute if score @p[tag=Alucard] kits.timer5 matches 1 run summon item ~ ~1 ~ {Tags:["AlucardSoul"],Motion:[-0.1,0.2,-0.1],Item:{id:"minecraft:crimson_roots",Count:1b},Age:5900,PickupDelay:32767}
execute if score @p[tag=Alucard] kits.timer5 matches 2 run summon item ~ ~1 ~ {Tags:["AlucardSoul"],Motion:[0.1,0.2,-0.1],Item:{id:"minecraft:crimson_roots",Count:1b},Age:5900,PickupDelay:32767}
