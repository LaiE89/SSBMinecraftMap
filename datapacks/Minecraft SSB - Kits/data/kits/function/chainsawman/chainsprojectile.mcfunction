execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Denji,tag=!InLabyrinth] at @s run function kits:chainsawman/chains
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Denji,tag=!InLabyrinth] run kill @s
particle dust{color:[0.502,0.502,0.502],scale:1} ~ ~1.4 ~ 0.05 0.05 0.05 0 50 force

tp @s[tag=!facingchainsawchain] ~ ~ ~ facing entity @p[tag=Denji]
tp @s[tag=facingchainsawchain] ^ ^ ^-2
tag @s[tag=!facingchainsawchain] add facingchainsawchain
