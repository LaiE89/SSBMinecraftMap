function datapack:damage1 
particle minecraft:explosion ~ ~1 ~
playsound minecraft:entity.wither.spawn neutral @a[distance=..20] ~ ~ ~ 3 2 1
kill @e[type=armor_stand,tag=SitoeBolt]