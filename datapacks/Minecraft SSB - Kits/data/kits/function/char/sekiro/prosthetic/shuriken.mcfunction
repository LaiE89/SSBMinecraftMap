particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force
summon area_effect_cloud ~ ~1 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["SekiroShuriken","projectile"]}
tp @e[type=area_effect_cloud,tag=SekiroShuriken,limit=1,sort=nearest] @s
tp @e[type=area_effect_cloud,tag=SekiroShuriken,limit=1,sort=nearest] ~ ~1 ~

function kits:char/sekiro/spiritemblems/cost {Emblems:1}
playsound minecraft:block.dispenser.launch neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
scoreboard players set @s kits.ability3CD 0