scoreboard players add @e[type=skeleton,tag=labyrinthschoolbaldi] Timer 1
execute at @e[type=skeleton,tag=labyrinthschoolbaldi,scores={Timer=30..}] run playsound minecraft:entity.player.death neutral @a[distance=..15] ~ ~ ~ 3 0 1
scoreboard players reset @e[type=skeleton,tag=labyrinthschoolbaldi,scores={Timer=30..}] Timer