function datapack:damage1
playsound minecraft:item.trident.thunder neutral @a[distance=..30] ~ ~ ~ 2 2 1
particle minecraft:firework ~ ~1 ~ 0 0 0 0.5 30
kill @e[type=area_effect_cloud,tag=soularrow]