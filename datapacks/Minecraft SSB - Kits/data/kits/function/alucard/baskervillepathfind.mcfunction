data remove entity @s equipment.mainhand
execute as @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!AlucardBaskerville,tag=!InLabyrinth,tag=!Alucard] at @s run function kits:alucard/alucardpassive2
tp @e[type=armor_stand,tag=AlucardBaskerville,limit=1,sort=nearest] @s
execute unless entity @e[type=armor_stand,tag=AlucardBaskerville] run kill @s