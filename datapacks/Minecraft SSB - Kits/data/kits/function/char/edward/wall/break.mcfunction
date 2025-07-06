playsound minecraft:item.shovel.flatten neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:block.gravel.fall neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:block.stone.break neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:block.gilded_blackstone.break neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:block.gilded_blackstone.break neutral @a[distance=..20] ~ ~ ~ 10 0 1
playsound minecraft:block.pointed_dripstone.land neutral @a[distance=..20] ~ ~ ~ 10 0 1
particle item{item:"stone"} ~ ~2 ~ 1 1 1 0.1 100 force
particle explosion ~ ~1 ~ 0 0 0 0 1 force
effect give @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!InLabyrinth,tag=!Edward] minecraft:slowness 2 9 true
kill @e[type=minecraft:block_display,tag=EdwardWall]
kill @e[type=minecraft:interaction,tag=EdwardWallInteraction]
kill @e[type=area_effect_cloud,tag=EdwardWallProjectileOrigin]
tag @p[tag=Edward] remove EdwardCastingWall
kill @s
