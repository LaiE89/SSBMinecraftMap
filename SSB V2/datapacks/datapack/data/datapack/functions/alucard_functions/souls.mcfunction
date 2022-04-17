particle minecraft:dust 0 0 0 0.7 ~ ~0.5 ~ 0.5 0 0.5 0 10
particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.5 0 0.5 0 1
playsound minecraft:entity.player.breath neutral @a[distance=..10] ~ ~ ~ 2 1 1
effect give @p[tag=Alucard] minecraft:instant_health
scoreboard players add @p[tag=Alucard,scores={Timer2=..9}] Timer2 1
execute at @s run particle minecraft:soul ~ ~0.5 ~ 0.4 1 0.4 0 50
kill @s