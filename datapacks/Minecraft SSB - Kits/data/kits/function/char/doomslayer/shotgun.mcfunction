particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~1 ~ 0 0 0 0 1 force
execute positioned ~ ~1 ~ if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] run function kits:char/doomslayer/shotgunhit

tp @s[tag=facingDoomslayerSuperShotgunBullet] ^ ^ ^-2
tp @s[tag=!facingDoomslayerSuperShotgunBullet] ~ ~ ~ facing entity @p[tag=Doomslayer]
tag @s[tag=!facingDoomslayerSuperShotgunBullet] add facingDoomslayerSuperShotgunBullet
