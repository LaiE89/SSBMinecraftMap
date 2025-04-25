execute if entity @e[distance=..2,type=minecraft:area_effect_cloud,tag=SekiroChasingSliceDestination] run function kits:char/sekiro/chasingslice/end
execute if entity @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] run function kits:char/sekiro/chasingslice/end

execute facing entity @e[type=minecraft:area_effect_cloud,tag=SekiroChasingSliceDestination,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1.5
