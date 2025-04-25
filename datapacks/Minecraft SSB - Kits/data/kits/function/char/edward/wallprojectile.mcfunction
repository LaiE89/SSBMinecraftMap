execute as @e[type=area_effect_cloud,tag=EdwardWallProjectileOrigin] at @s run particle explosion ^ ^ ^1 0 0 0 0 1 force
execute as @e[type=area_effect_cloud,tag=EdwardWallProjectileOrigin] at @s run playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute as @e[type=area_effect_cloud,tag=EdwardWallProjectileOrigin] at @s run summon armor_stand ~ ~-1.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Invisible:1b,Tags:["EdwardWallProjectile","projectile"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:dirt",Count:1b}}}
execute as @e[type=area_effect_cloud,tag=EdwardWallProjectileOrigin] at @s run data modify entity @e[type=minecraft:armor_stand,tag=EdwardWallProjectile,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[type=area_effect_cloud,tag=EdwardWallProjectileOrigin] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=EdwardWallProjectile] run data modify entity @s equipment.head.id set from entity @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] block_state.Name
tag @p[tag=Edward] remove EdwardCastingWall
