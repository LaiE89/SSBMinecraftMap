particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..30] ~ ~ ~ 3 0 1
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:sekiro/prosthetic/mistravendamage
kill @s