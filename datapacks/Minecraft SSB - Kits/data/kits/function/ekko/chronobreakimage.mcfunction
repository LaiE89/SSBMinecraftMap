execute unless entity @p[gamemode=!spectator,tag=Ekko] run kill @s
execute if entity @e[type=minecraft:area_effect_cloud,tag=ChronobreakPath,nbt={Age:49}] run function kits:ekko/chronobreakimage2
