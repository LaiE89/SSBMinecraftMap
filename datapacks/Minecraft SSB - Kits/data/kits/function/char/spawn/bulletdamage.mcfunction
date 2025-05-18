playsound minecraft:entity.blaze.hurt neutral @a[distance=..40] ~ ~ ~ 0.5 1.5 1
damage @s 1.5 bypass:player_attack_no_kb by @p[tag=Spawn]
particle block{block_state:"minecraft:redstone_block"} ~ ~1.5 ~ 0 0 0 0 20 force
kill @e[type=area_effect_cloud,tag=AKBullet,sort=nearest,limit=1]
