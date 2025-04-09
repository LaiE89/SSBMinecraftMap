summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["BradFBombFire"]}
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Brad,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=BradFBomb,limit=1,sort=nearest] from @p[tag=Brad]
playsound minecraft:block.glass.break neutral @a[distance=..50] ~ ~ ~ 5 0.8 1
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 5 1 1
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
kill @s
