particle flash ~ ~0.5 ~ 0 0 0 0 10 force
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] at @s run damage @s 12 bypass:player_attack by @e[type=area_effect_cloud,tag=ChosenUndeadSpear,tag=!ChosenUndeadSpearCharge,limit=1,sort=nearest] from @p[tag=ChosenUndead]
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..30] ~ ~ ~ 2 1 1
kill @s
