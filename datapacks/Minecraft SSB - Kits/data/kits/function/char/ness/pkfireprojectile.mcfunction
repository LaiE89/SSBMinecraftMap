tag @s[tag=!facingpkfire] add facingpkfire
tp @s ^ ^ ^-1.25
particle flame ~ ~1 ~ 0 0 0 0 10 force
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] run function kits:char/ness/pkfiredamage
