schedule clear kits:char/guts/smash/dashend
#execute unless entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmashDestination] at @p[tag=Guts] run tp @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] ~ ~1 ~
#execute if entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmashDestination] at @p[tag=Guts] run tp @e[type=area_effect_cloud,tag=GutsDragonslayerSmash] ~ ~-4 ~
#execute if entity @e[type=area_effect_cloud,tag=GutsDragonslayerSmashDestination] at @p[tag=Guts] rotated as @e[type=area_effect_cloud,tag=GutsDragonslayerSmashPrep,limit=1,sort=nearest] rotated ~ 0 run tp @e[type=area_effect_cloud,tag=GutsDragonslayerSmashPrep] ^ ^1 ^-2
kill @e[type=area_effect_cloud,tag=GutsDragonslayerSmashDestination]
tag @e[type=area_effect_cloud,tag=GutsDragonslayerSmashPrep] remove GutsDragonslayerSmashPrep
attribute @p[tag=Guts] minecraft:gravity modifier remove gravity.smash.guts

execute at @p[tag=Guts] run playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute at @p[tag=Guts] run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute at @p[tag=Guts] run playsound minecraft:item.axe.scrape neutral @a[distance=..30] ~ ~ ~ 2 1.5 1