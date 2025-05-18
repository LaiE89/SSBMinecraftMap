tag @s add GutsCleavedDmg
damage @s 9 bypass:player_attack by @p[tag=Guts]
particle block{block_state:"minecraft:redstone_block"} ~ ~0.5 ~ 0.4 1 0.4 0 10 force
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 2 0 1
execute if entity @e[type=area_effect_cloud,tag=GutsDragonslayerCleave,tag=GutsPivotSwing] run function kits:char/guts/cleave/pivotswingdamage
