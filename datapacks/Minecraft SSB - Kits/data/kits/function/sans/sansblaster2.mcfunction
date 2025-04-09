summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["sansblasterprojectile","projectile"]}
particle flash ^ ^1.5 ^0.5 0 0 0 0 5 force
execute as @e[limit=1,sort=nearest,type=area_effect_cloud,tag=sansblasterprojectile,tag=!facingsansblaster] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=sansblaster,limit=1,sort=nearest] feet
execute as @e[limit=1,sort=nearest,type=area_effect_cloud,tag=sansblasterprojectile,tag=!facingsansblaster] at @s run tp @s ~ ~1.5 ~
tag @e[limit=1,sort=nearest,type=area_effect_cloud,tag=sansblasterprojectile,tag=!facingsansblaster] add facingsansblaster
