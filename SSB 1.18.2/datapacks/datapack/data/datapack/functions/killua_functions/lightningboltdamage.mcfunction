function datapack:damage2
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 3 1 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..50] ~ ~ ~
particle minecraft:explosion ~ ~1 ~
kill @e[type=area_effect_cloud,tag=KilluaThunder]