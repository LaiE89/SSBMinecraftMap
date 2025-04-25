tp @s[tag=!facingKiryuSalt] ~ ~ ~ facing entity @p[tag=Kiryu]
tp @s[tag=facingKiryuSalt] ^ ^ ^-1
tag @s[tag=!facingKiryuSalt] add facingKiryuSalt
particle dust{color:[1.000,1.000,1.000],scale:0.3} ~ ~1 ~ 0 0 0 0 10 force
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run function kits:char/kiryu/saltdamage
