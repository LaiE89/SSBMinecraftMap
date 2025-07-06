tag @s add KratosRage
playsound minecraft:entity.ravager.stunned neutral @a[distance=..50] ~ ~ ~ 10 0 1
playsound minecraft:block.gravel.break neutral @a[distance=..50] ~ ~ ~ 10 0 1
playsound minecraft:block.gravel.fall neutral @a[distance=..50] ~ ~ ~ 10 0 1
effect give @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Kratos,tag=!InLabyrinth] minecraft:slowness 1 4 true
effect give @s minecraft:instant_health 1 0 true
particle flame ~ ~1 ~ 0 0 0 1 100 force
particle item{item:"sand"} ~ ~0.2 ~ 0 0 0 0.5 50 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[1.000,0.000,0.502]} ~ ~1 ~ 2 2 2 1 100 force
scoreboard players set @s kits.timer3 100
scoreboard players set @s kits.timer2 0
