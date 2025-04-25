particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 2 0 2 0 100 force
particle explosion ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 2 0 2 0 100 force
playsound minecraft:entity.ghast.shoot neutral @a[distance=..10] ~ ~ ~ 10 0.75 1
kill @s
