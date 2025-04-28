## Execute at Result Damage
execute unless entity @e[type=!#kits:non_entity,distance=..2,tag=!Siris,tag=!InLabyrinth,tag=!Invincible] positioned as @e[type=!#kits:non_entity,tag=!InLabyrinth,tag=!Invincible,tag=!Siris,limit=1,sort=nearest,distance=..10] run tp @s ~ ~1.5 ~ 

# VFX (damage procs also in vfx function)
scoreboard players add @s kits.timer2 1
execute if score @s kits.timer2 matches 4.. run function kits:char/siris/vfx/animations/slashes/animate
