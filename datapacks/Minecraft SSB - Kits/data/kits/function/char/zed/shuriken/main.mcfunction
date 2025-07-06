execute at @s[tag=razorshuriken,tag=!facingrazorshuriken] run tp @s ~ ~ ~ facing entity @p[tag=Zed]
tag @s[tag=razorshuriken,tag=!facingrazorshuriken] add facingrazorshuriken
execute at @s[tag=razorshuriken] run tp @s ^ ^ ^-1.5

execute at @s[tag=razorshuriken2,tag=!facingrazorshuriken2] run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=ZedShadow,limit=1,sort=nearest]
tag @s[tag=razorshuriken2,tag=!facingrazorshuriken2] add facingrazorshuriken2
execute at @s[tag=razorshuriken2] run tp @s ^ ^ ^-1.5

execute at @s[tag=razorshuriken3,tag=!facingrazorshuriken3] run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=ZedUltShadow,limit=1,sort=nearest]
tag @s[tag=razorshuriken3,tag=!facingrazorshuriken3] add facingrazorshuriken3
execute at @s[tag=razorshuriken3] run tp @s ^ ^ ^-1.5

execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 2 bypass:player_attack by @p[tag=Zed]
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.08 0.08 0.08 0 5 force
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~1 ~ 0.2 0 0.2 0 40 force