tag @p[tag=LucarioAuraSphere] remove LucarioAuraSphere
tag @e[type=area_effect_cloud,tag=LucarioAuraSphereCharge] remove LucarioAuraSphereCharge
tp @e[type=area_effect_cloud,tag=LucarioAuraSphere] @p[tag=Lucario]

execute at @p[tag=Cynthia] run playsound minecraft:entity.illusioner.cast_spell neutral @a[distance=..50] ~ ~ ~ 2 1.25 1
execute at @p[tag=Cynthia] run playsound minecraft:entity.witch.throw neutral @a[distance=..50] ~ ~ ~ 2 0 1
