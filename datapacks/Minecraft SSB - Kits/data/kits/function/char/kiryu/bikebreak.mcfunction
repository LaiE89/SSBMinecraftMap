particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 1 1 1
playsound minecraft:block.bell.use neutral @a[distance=..30] ~ ~ ~ 2 2 1
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] at @s run function kits:char/kiryu/bikesmashdamage
kill @e[type=block_display,tag=KiryuBike]
kill @e[type=item_display,tag=KiryuBike]
kill @s