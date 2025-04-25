#scoreboard players add @p[tag=Noctis] kits.timer 75
#scoreboard players set @p[tag=Noctis,scores={kits.timer=101..}] kits.timer 100
scoreboard players set @p[tag=Noctis] kits.timer 100
effect give @p[tag=Noctis] minecraft:instant_health 1 0 true
execute as @p[tag=Noctis] at @s run tp @s ~ ~ ~ facing entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth,limit=1,sort=nearest]
playsound minecraft:block.respawn_anchor.charge neutral @a[distance=..30] ~ ~ ~ 5 2 1
execute at @s rotated ~ 90 run function kits:char/noctis/pointparticles2
kill @e[type=area_effect_cloud,tag=NoctisPoint,distance=..3]
