damage @s 0.25 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=VergilSpiralSwords,limit=1,sort=nearest] from @p[tag=Vergil]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 1 3 force
playsound minecraft:item.trident.hit neutral @a[distance=..20] ~ ~ ~ 2 1.25 1
