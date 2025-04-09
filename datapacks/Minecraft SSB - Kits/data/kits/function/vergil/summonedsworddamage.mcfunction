damage @s 1 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=summonedswords,limit=1,sort=nearest] from @p[tag=Vergil]
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 30 force
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 30 force
playsound minecraft:entity.drowned.shoot neutral @a[distance=..20] ~ ~ ~ 3 2 1
kill @e[type=area_effect_cloud,limit=1,sort=nearest,tag=summonedswords]
