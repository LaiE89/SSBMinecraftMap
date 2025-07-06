execute store result score @s kits.timer run data get entity @s Age
execute if score @s kits.timer matches 12 run execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/edward/wall/knockup 
execute if score @s kits.timer matches 12 run execute as @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] at @s store result score @s kits.timer run data get entity @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] transformation.scale[0]
execute if score @s kits.timer matches 12 run execute as @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] at @s if score @s kits.timer matches 3 run summon minecraft:interaction ~1.5 ~3 ~0.5 {width:3,height:3,Tags:["EdwardWallInteraction"]}
execute if score @s kits.timer matches 12 run execute as @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] at @s if score @s kits.timer matches 1 run summon minecraft:interaction ~0.5 ~3 ~1.5 {width:3,height:3,Tags:["EdwardWallInteraction"]}

execute if score @s kits.timer matches 12.. run execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible] run function kits:char/edward/wall/break
execute if score @s kits.timer matches 12.. run execute as @e[distance=..2,tag=projectile,tag=!EdwardWallProjectile] at @s run function kits:char/edward/wall/projectilebreak
execute if score @s kits.timer matches 12.. run execute as @e[distance=..2,type=#minecraft:arrows] at @s run function kits:char/edward/wall/projectilebreak
execute if score @s kits.timer matches 12.. run execute as @e[type=interaction,tag=EdwardWallInteraction,sort=nearest,limit=1] at @s run function kits:char/edward/wall/interaction

execute if score @s kits.timer matches 99.. run function kits:char/edward/wall/break
