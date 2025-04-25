execute store result score %distance.in.source.x kits.math run data get entity @p[tag=Luffy] Pos[0] 100
execute store result score %distance.in.source.y kits.math run data get entity @p[tag=Luffy] Pos[1] 100
execute store result score %distance.in.source.z kits.math run data get entity @p[tag=Luffy] Pos[2] 100
execute store result score %distance.in.target.x kits.math run data get entity @e[type=area_effect_cloud,tag=LuffyPistolAngle,limit=1,sort=nearest] Pos[0] 100
execute store result score %distance.in.target.y kits.math run data get entity @e[type=area_effect_cloud,tag=LuffyPistolAngle,limit=1,sort=nearest] Pos[1] 100
execute store result score %distance.in.target.z kits.math run data get entity @e[type=area_effect_cloud,tag=LuffyPistolAngle,limit=1,sort=nearest] Pos[2] 100
function kits:generic/calc/distance

execute if score %sqrt.out kits.math matches 3500.. run damage @s 27 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches 3000..3499 run damage @s 24 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches 2500..2999 run damage @s 21 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches 2000..2499 run damage @s 18 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches 1500..1999 run damage @s 15 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches 1000..1499 run damage @s 12 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches 500..999 run damage @s 9 bypass:player_attack by @p[tag=Luffy]
execute if score %sqrt.out kits.math matches ..499 run damage @s 6 bypass:player_attack by @p[tag=Luffy]

tag @s add LuffyKB
tag @s remove LuffyGrabbed
effect clear @s levitation

execute if score %sqrt.out kits.math matches 2500.. run function kits:char/luffy/pistol/damagebig
execute if score %sqrt.out kits.math matches 1000..2499 run function kits:char/luffy/pistol/damagemedium
execute if score %sqrt.out kits.math matches ..999 run function kits:char/luffy/pistol/damagesmall

tag @e[tag=LuffyKB] remove LuffyKB
execute as @e[type=area_effect_cloud,tag=LuffyPistol] run function kits:char/luffy/pistol/pistolending