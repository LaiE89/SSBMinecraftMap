damage @s 2 bypass:player_attack by @e[type=area_effect_cloud,tag=2bspear,limit=1,sort=nearest] from @p[tag=2B]
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 1 1
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 10
effect give @s minecraft:slowness 1 9 true
