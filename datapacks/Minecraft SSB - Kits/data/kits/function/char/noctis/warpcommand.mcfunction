execute as @e[type=armor_stand,tag=NoctisThrownWeapon] at @s run function kits:char/noctis/warp
execute as @e[type=armor_stand,tag=NoctisThrownWeapon] at @s run particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
kill @e[type=minecraft:area_effect_cloud,tag=noctisthrowplace]
kill @e[type=armor_stand,tag=NoctisThrownWeapon]
scoreboard players set @s kits.ability1CD 18
tag @s remove NoctisThrow
