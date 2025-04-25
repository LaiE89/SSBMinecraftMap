particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 1 2 1
playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.firework_rocket.twinkle_far neutral @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:char/sekiro/prosthetic/firecrackerdamage
