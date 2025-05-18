summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["AlucardSoul","AlucardSoulMotion"],Pose:{Head:[0f,0f,180f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:crimson_roots",Count:1}}}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=AlucardSoulMotion] at @s run function kits:char/alucard/randommotion
