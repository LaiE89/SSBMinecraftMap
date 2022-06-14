effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:absorption 15 4 true
summon minecraft:lightning_bolt ~ ~ ~
particle minecraft:flash ~ ~-0.01 ~ 0 0 0 0 100
particle minecraft:block minecraft:sand ~ ~ ~ 3 3 3 0 100
playsound minecraft:entity.wither.break_block neutral @a[distance=..50] ~ ~ ~ 10 0 1
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..50] ~ ~ ~ 10 1.5 1
scoreboard players set @s Timer3 0