tag @e[tag=RyzeCurTarget] remove RyzeCurTarget 
tag @e[tag=RyzeFluxTarget] remove RyzeFluxTarget
scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ryze,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick3 2222
execute as @s[scores={kits.raycastTick3=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ryze,tag=!InLabyrinth] at @s run tag @s add RyzeFluxTarget
execute as @s[scores={kits.raycastTick3=2222}] as @p[tag=Ryze] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["RyzeFluxBall"]}
execute at @s[scores={kits.raycastTick3=2222}] run playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..8]
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players add @s kits.timer3 1
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players set @s kits.ability1CD 99
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players set @s[scores={kits.timer2=5..}] kits.ability3CD 0
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players remove @s[scores={kits.timer2=5..}] kits.timer2 5

execute as @s[scores={kits.raycastTick3=..15}] positioned ^ ^ ^0.5 run function kits:ryze/ryzepassive4
