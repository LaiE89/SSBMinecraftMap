execute on attacker if entity @s[tag=Dragonborn,tag=DragonbornAttacked] run function kits:char/dragonborn/markedonhit
particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~0.25 ~ 0.35 0 0.35 0 50 force
scoreboard players add @p[tag=Dragonborn] kits.timer2 1
execute if score @p[tag=Dragonborn] kits.timer2 matches 70.. run function kits:char/dragonborn/markeddone
