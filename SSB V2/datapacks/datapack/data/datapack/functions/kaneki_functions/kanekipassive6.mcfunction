scoreboard players add @s RaycastTimer 1
execute if entity @e[type=armor_stand,distance=..2,tag=KanekiKagune] run scoreboard players set @s RaycastTimer 2222
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tag @e[type=armor_stand,tag=KanekiKagune,sort=nearest,limit=1] add KanekiPulling
execute as @s[scores={RaycastTimer=41}] positioned ^ ^ ^ run tag @e[type=armor_stand,tag=KanekiKagune,sort=nearest,limit=1] add KanekiPulling

execute as @s[scores={RaycastTimer=..40}] positioned ^ ^ ^0.5 run function datapack:kaneki_functions/kanekipassive6