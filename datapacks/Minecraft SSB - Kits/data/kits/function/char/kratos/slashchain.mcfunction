particle dust{color:[1.000,0.000,0.000],scale:0.35} ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=kratosblade] as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Kratos,tag=!InLabyrinth,tag=!KratosSlashed] at @s run function kits:char/kratos/slashdamage
execute positioned ~ ~-1.35 ~ unless entity @a[distance=..1.5,tag=Kratos] positioned ^ ^ ^0.25 positioned ~ ~1.35 ~ run function kits:char/kratos/slashchain
