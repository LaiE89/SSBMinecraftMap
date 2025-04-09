playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 2 0 1
playsound minecraft:item.trident.throw neutral @a[distance=..50] ~ ~ ~ 2 0 1

tag @e[type=area_effect_cloud,tag=ChosenUndeadSpearCharge,limit=1,sort=nearest] remove ChosenUndeadSpearCharge
tp @e[type=area_effect_cloud,tag=ChosenUndeadSpear] @s
