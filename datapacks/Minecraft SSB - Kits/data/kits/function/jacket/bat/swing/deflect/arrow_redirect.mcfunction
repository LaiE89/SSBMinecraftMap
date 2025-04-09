## Execute at Jacket
# Summons AEC in front of Jacket
summon area_effect_cloud ^ ^ ^0.001 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["JacketBatSwingDeflectArrowDir"]}

# Gets Jacket's position then multiplies it by 10000 for accuracy (scoreboards can not hold decimals)
execute store result score @s kits.x run data get entity @s Pos[0] 10000
execute store result score @s kits.y run data get entity @s Pos[1] 10000
execute store result score @s kits.z run data get entity @s Pos[2] 10000

# Execute at AEC
execute as @e[limit=1,sort=nearest,tag=JacketBatSwingDeflectArrowDir,type=area_effect_cloud] at @s run function kits:jacket/bat/swing/deflect/arrow_redirect2

# Trigonometry
scoreboard players operation @s kits.dx -= @s kits.x
scoreboard players operation @s kits.dy -= @s kits.y
scoreboard players operation @s kits.dz -= @s kits.z
