tag @s add DragonbornForceDamage
tag @s add DragonbornForced
damage @s 6 bypass:player_attack by @e[type=area_effect_cloud,tag=DragonbornForce,limit=1,sort=nearest] from @p[tag=Dragonborn]
playsound minecraft:entity.player.big_fall neutral @a[distance=..20] ~ ~ ~ 10 0.75 1
scoreboard players set @e[type=area_effect_cloud,tag=DragonbornForce] kits.raycastTick 0
execute as @e[type=area_effect_cloud,tag=DragonbornForce,limit=1,sort=nearest] at @s positioned ~ ~1.5 ~ run function kits:dragonborn/forceknockback
tag @s remove DragonbornForced
