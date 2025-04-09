execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["pkfired"]}
playsound minecraft:entity.generic.burn neutral @a[distance=..30] ~ ~ ~ 10 0.5 1
particle flame ~ ~ ~ 0.4 1 0.4 1 50 force
kill @s
