scoreboard players add @s kits.timer3 1
scoreboard players add @s kits.timer 10
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0.5 1
scoreboard players set @s[scores={kits.timer3=5..}] kits.timer3 1
execute if entity @s[scores={kits.timer3=4}] run summon area_effect_cloud ~ ~ ~ {Tags:["raidenslash","raidenslash4"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1}
execute if entity @s[scores={kits.timer3=3}] run summon area_effect_cloud ~ ~ ~ {Tags:["raidenslash","raidenslash3"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1}
execute if entity @s[scores={kits.timer3=2}] run summon area_effect_cloud ~ ~ ~ {Tags:["raidenslash","raidenslash2"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1}
execute if entity @s[scores={kits.timer3=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["raidenslash","raidenslash1"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:1}
tp @e[type=area_effect_cloud,tag=raidenslash,nbt={Age:0}] @s

execute as @e[type=area_effect_cloud,tag=raidenslash1] at @s run function kits:char/raiden/bladeslash1

execute as @e[type=area_effect_cloud,tag=raidenslash2] at @s run function kits:char/raiden/bladeslash2
# Diagonal BL - UR
execute as @e[type=area_effect_cloud,tag=raidenslash3] at @s run function kits:char/raiden/bladeslash3
# Diagonal BR - U
execute as @e[type=area_effect_cloud,tag=raidenslash4] at @s run function kits:char/raiden/bladeslash4
# Vertical B - U
execute positioned ^ ^1.5 ^3 as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/bladedamage

scoreboard players set @s kits.timer2 0
