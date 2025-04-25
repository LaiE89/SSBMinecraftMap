scoreboard players add @s kits.raycastTick 1
execute if entity @e[type=area_effect_cloud,distance=..2,tag=KanekiKagune] run scoreboard players set @s kits.raycastTick 2222
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tag @e[type=area_effect_cloud,tag=KanekiKagune,sort=nearest,limit=1] add KanekiPulling
execute as @s[scores={kits.raycastTick=41}] positioned ^ ^ ^ run tag @e[type=area_effect_cloud,tag=KanekiKagune,sort=nearest,limit=1] add KanekiPulling

execute as @s[scores={kits.raycastTick=..40}] positioned ^ ^ ^0.5 run function kits:char/kaneki/kanekipassive6
