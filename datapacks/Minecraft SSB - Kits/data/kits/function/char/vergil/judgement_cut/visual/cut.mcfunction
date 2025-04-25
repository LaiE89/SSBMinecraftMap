## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s kits.x = %VFXJudgementCutPx kits.x
scoreboard players operation @s kits.y = %VFXJudgementCutPy kits.y
scoreboard players operation @s kits.x -= %VFXJudgementCutX kits.x
scoreboard players operation @s kits.y -= %VFXJudgementCutY kits.y

# rotate toward point
execute unless entity @s[scores={kits.x=-200..200}] run scoreboard players operation %VFXJudgementCutX kits.x += %VFXJudgementCutVx kits.x
execute unless entity @s[scores={kits.y=-90..90}] run scoreboard players operation %VFXJudgementCutY kits.y += %VFXJudgementCutVy kits.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %VFXJudgementCutX kits.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %VFXJudgementCutY kits.y

# particles
particle dust{color:[1.0,1.0,1.0],scale:0.5} ^ ^ ^3.00 0 0 0 0 1
particle dust{color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^2.75 0 0 0 0 1
particle dust{color:[0.0,0.5,1.0],scale:0.5} ^ ^ ^2.50 0 0 0 0 1
particle dust{color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^-2.00 0 0 0 0 1

# recurse until pos is close to point
scoreboard players reset @s kits.z
scoreboard players operation @s kits.z += @s kits.x
scoreboard players operation @s kits.z += @s kits.y
execute if entity @s[scores={kits.z=-290..290}] run function kits:char/vergil/judgement_cut/visual/end
execute unless entity @s[scores={kits.z=-290..290}] at @s run function kits:char/vergil/judgement_cut/visual/cut