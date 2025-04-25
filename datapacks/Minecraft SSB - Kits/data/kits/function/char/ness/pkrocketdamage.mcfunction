damage @s 15 bypass:player_attack by @p[tag=Ness]
effect give @s minecraft:blindness 1 0 true
effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true
particle explosion ~ ~1 ~ 0.2 0.2 0.2 0 10 force
particle flash ~ ~1 ~ 0 0 0 0 10 force
playsound minecraft:entity.generic.explode neutral @a[distance=..40] ~ ~ ~ 2 1.5 1
effect clear @p[tag=Ness] levitation
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..40] ~ ~ ~ 2 0 1
kill @e[type=area_effect_cloud,tag=pkrocketplace]
tag @p[tag=Ness] remove NessPKRocket
