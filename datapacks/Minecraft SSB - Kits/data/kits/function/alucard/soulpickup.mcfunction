particle dust{color:[0.000,0.000,0.000],scale:0.7} ~ ~0.5 ~ 0.25 0.25 0.25 0 50 force
particle block{block_state:"minecraft:redstone_block"} ~ ~0.5 ~ 0.25 0 0.25 0 10 force
playsound minecraft:entity.player.breath neutral @a[distance=..10] ~ ~ ~ 2 1 1
effect give @p[tag=Alucard] minecraft:regeneration 1 3 true
scoreboard players add @p[tag=Alucard,scores={kits.timer2=..9}] kits.timer2 1
kill @s