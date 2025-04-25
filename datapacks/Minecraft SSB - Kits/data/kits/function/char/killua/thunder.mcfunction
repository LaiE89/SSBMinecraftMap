tp @s[tag=!castedKilluaThunder] ~ ~ ~ facing entity @p[tag=Killua]
tp @s[tag=castedKilluaThunder] ^ ^ ^-1.5
tag @s[tag=!castedKilluaThunder] add castedKilluaThunder
execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run function kits:char/killua/lightningboltdamage
particle dust{color:[0.000,1.000,1.000],scale:2} ~ ~1.3 ~ 0.4 0.4 0.4 0.05 50 force
