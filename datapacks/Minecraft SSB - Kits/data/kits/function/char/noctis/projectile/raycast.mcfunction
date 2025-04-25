scoreboard players remove @s kits.raycastTick 1

execute if score @s kits.raycastTick matches 0 run tp @s ~ ~ ~
#execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick -1

execute if entity @s[tag=NoctisTall] as @e[dx=0,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth,limit=1,sort=nearest] run scoreboard players add @s kits.specific.noctisBleed 63
execute as @e[dx=0,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth,limit=1,sort=nearest] run execute as @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] at @s run function kits:char/noctis/throwlanded

execute if score @s kits.raycastTick matches 1.. positioned ^ ^ ^0.5 run function kits:char/noctis/projectile/raycast
