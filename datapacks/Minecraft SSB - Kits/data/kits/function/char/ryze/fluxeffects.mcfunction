execute at @e[type=area_effect_cloud,tag=RyzeFluxBall,distance=..1,limit=1,sort=nearest] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 50 force
kill @e[type=area_effect_cloud,tag=RyzeFluxBall,distance=..1,limit=1,sort=nearest]
playsound minecraft:entity.axolotl.attack neutral @a[distance=..10] ~ ~ ~ 1 0.5 1
scoreboard players set @s kits.specific.ryzeFluxTick 0
tag @s remove RyzeFluxTarget
tag @s add RyzeCurTarget
tag @s add RyzeOriginTarget
execute if entity @s[tag=RyzeFlux] as @e[type=!#kits:non_entity,tag=!RyzeCurTarget,tag=!RyzeFluxTarget,sort=nearest,distance=..10,tag=!Invincible,tag=!Ryze,tag=!InLabyrinth] at @s run function kits:char/ryze/fluxspread
tag @s remove RyzeOriginTarget
tag @s[tag=!RyzeFlux] add RyzeFlux