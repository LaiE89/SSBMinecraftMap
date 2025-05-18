# =============== Frag Grenade ===============
execute at @s rotated ~ 0 positioned ^0.45 ^1.25 ^-1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["ArmorPraetorSuitFragGrenade","launch","projectile"],DisabledSlots:2039583,Rotation:[0F,-15F]}
data modify entity @e[type=armor_stand,tag=ArmorPraetorSuitFragGrenade,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
#data modify entity @e[type=armor_stand,tag=ArmorPraetorSuitFragGrenade,sort=nearest,limit=1] Rotation[1] set value -45
execute as @e[tag=ArmorPraetorSuitFragGrenade,type=armor_stand] at @s run function kits:generic/physics/launch {"sVert":"0.05","sHorz":"1","power":"0.002"}
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..15] ~ ~ ~ 2 0 1
