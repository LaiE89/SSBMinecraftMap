particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 1 2 1
playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.firework_rocket.twinkle_far neutral @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:sekiro/prosthetic/firecrackerdamage

execute if entity @p[tag=Sekiro,tag=!SekiroChasingSlice] run schedule function kits:sekiro/chasingslice/reset 10t replace
tag @p[tag=Sekiro,tag=!SekiroChasingSlice] add SekiroChasingSlice