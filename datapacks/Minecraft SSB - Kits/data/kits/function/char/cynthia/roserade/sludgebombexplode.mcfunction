playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 0.5 1 1
playsound minecraft:block.lava.pop neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:block.coral_block.break neutral @a[distance=..30] ~ ~ ~ 10 0 1
particle item{item:"bubble_coral_block"} ~ ~0.2 ~ 0 0 0 0.2 50 force
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=RoseradeBomb,limit=1,sort=nearest] from @p[tag=Cynthia]
summon area_effect_cloud ~ ~-0.7 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["RoseradeSludgeLocation"]}
kill @s
