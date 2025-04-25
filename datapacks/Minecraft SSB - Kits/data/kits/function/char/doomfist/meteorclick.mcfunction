execute at @s run scoreboard players set @s kits.raycastTick 0
execute at @s run function kits:char/doomfist/doomfistpassive5
effect clear @s minecraft:levitation
execute at @s run execute as @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] at @s run function kits:char/doomfist/meteordamage
execute at @s run particle explosion_emitter ~ ~-1.5 ~ 0 0 0 0 1 force
execute at @s run particle block{block_state:"minecraft:dirt"} ~ ~-1.5 ~ 4 0 4 0 200 force
execute at @s run particle dust{color:[1.000,0.000,0.000],scale:3} ~ ~-1.5 ~ 4 0 4 0 100 force
execute at @s run playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 10 0 1
tag @s remove DoomfistMeteor
scoreboard players reset @s kits.timer2
