scoreboard players add @s kits.timer2 1
execute if entity @s[scores={kits.timer2=5..}] run playsound minecraft:entity.ravager.step neutral @a[distance=..20] ~ ~ ~ 3 0.75 1
scoreboard players reset @s[scores={kits.timer2=5..}] kits.timer2
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.05 10 force
execute if entity @e[type=minecraft:area_effect_cloud,tag=GarchompDragonRushLocation] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=GarchompDragonRushLocation,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.75
execute if entity @e[type=minecraft:area_effect_cloud,tag=GarchompDragonRushLocation,distance=..3] run function kits:char/cynthia/garchomp/dragonrushend
execute unless entity @e[type=minecraft:area_effect_cloud,tag=GarchompDragonRushLocation] run function kits:char/cynthia/garchomp/dragonrushend
execute unless block ~ ~ ~ #kits:passable run function kits:char/cynthia/garchomp/dragonrushend
execute if score @s kits.criterion.death matches 1.. run function kits:char/cynthia/garchomp/dragonrushend
execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run function kits:char/cynthia/garchomp/dragonrushdamage
