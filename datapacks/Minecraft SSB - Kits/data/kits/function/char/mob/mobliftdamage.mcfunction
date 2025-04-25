particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 2 0.4 0 1000 force
particle poof ~ ~ ~ 0.4 2 0.4 0.01 500 force
damage @s 9 bypass:player_attack by @p[tag=Mob]

scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/mob/mobpassive6
