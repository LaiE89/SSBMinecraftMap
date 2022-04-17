scoreboard players add @e[type=zombie,tag=labyrinthschoolheadless] Timer 1
effect give @e[type=zombie,tag=labyrinthschoolheadless,scores={Timer=40..}] instant_damage
execute at @e[type=zombie,tag=labyrinthschoolheadless,scores={Timer=40..}] run playsound minecraft:entity.cat.hiss neutral @a[distance=..5] ~ ~ ~ 3 0.5 1
execute at @e[type=zombie,tag=labyrinthschoolheadless,scores={Timer=40..}] run particle minecraft:block minecraft:redstone_block ~ ~1.4 ~ 0 0 0 0 30
scoreboard players reset @e[type=zombie,tag=labyrinthschoolheadless,scores={Timer=40..}] Timer