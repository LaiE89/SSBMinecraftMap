scoreboard players add @s kits.timer 1
scoreboard players add @s kits.timer2 1
#scoreboard players add @s kits.timer3 1
execute if entity @s[scores={kits.timer=5..}] if entity @s[scores={kits.timer2=..20}] positioned ~ ~1 ~ run function kits:char/vergil/judgement_cut_end/visual/judgementcutendvisual
execute if entity @s[scores={kits.timer=5..}] as @e[type=minecraft:area_effect_cloud,tag=judgementcutendvisual] at @s run function kits:char/vergil/judgement_cut_end/visual/judgementcutendparticles
scoreboard players reset @s[scores={kits.timer=5..}] kits.timer
#scoreboard players reset @s[scores={kits.timer3=3..}] kits.timer3
execute if entity @s[scores={kits.timer2=..20}] as @e[type=!#kits:non_entity,tag=!Invincible,tag=!VergilEnded,tag=!Vergil,distance=..7,tag=!InLabyrinth] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["judgementcutendvictimpos"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60}
execute if entity @s[scores={kits.timer2=..20}] as @e[type=!#kits:non_entity,tag=!Invincible,tag=!VergilEnded,tag=!Vergil,distance=..7,tag=!InLabyrinth] at @s run tag @s add VergilEnded
execute as @e[tag=VergilEnded] at @s run attribute @s minecraft:attack_damage modifier add damage.judgementcutend.vergil -50 add_value
execute as @e[tag=VergilEnded] at @s run attribute @s minecraft:gravity modifier add gravity.judgementcutend.vergil -1 add_multiplied_total
execute as @e[tag=VergilEnded] at @s run tp @s @s
execute at @e[tag=VergilEnded] run particle item{item:"redstone_block"} 0 0 0.05 1 0 0 0.05 1 force
execute as @e[type=area_effect_cloud,tag=judgementcutendvictimpos] at @s run tp @e[tag=VergilEnded,limit=1,sort=nearest] ~ ~ ~

execute if entity @s[scores={kits.timer2=59..}] run function kits:char/vergil/judgement_cut_end/visual/judgementcutendfinish
