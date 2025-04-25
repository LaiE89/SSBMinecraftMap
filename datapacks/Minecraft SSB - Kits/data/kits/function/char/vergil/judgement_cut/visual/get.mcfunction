## Gets Vector From Position to Point
# get pos and point
execute store result score %VFXJudgementCutX kits.x run random value -200..200
execute store result score %VFXJudgementCutY kits.y run random value -90..90
execute store result score %VFXJudgementCutPx kits.x run random value -200..200
execute store result score %VFXJudgementCutPy kits.y run random value -90..90

# get vector from pos to point
scoreboard players operation %VFXJudgementCutVx kits.x = %VFXJudgementCutPx kits.x
scoreboard players operation %VFXJudgementCutVy kits.y = %VFXJudgementCutPy kits.y
scoreboard players operation %VFXJudgementCutVx kits.x -= %VFXJudgementCutX kits.x
scoreboard players operation %VFXJudgementCutVy kits.y -= %VFXJudgementCutY kits.y

# calculate absolute max
scoreboard players operation %VFXJudgementCutAbsVx kits.x = %VFXJudgementCutVx kits.x
scoreboard players operation %VFXJudgementCutAbsVy kits.y = %VFXJudgementCutVy kits.y
execute if score %VFXJudgementCutAbsVx kits.x < %VFXJudgementCut0 kits.constant run scoreboard players operation %VFXJudgementCutAbsVx kits.x *= %VFXJudgementCut-1 kits.constant
execute if score %VFXJudgementCutAbsVy kits.y < %VFXJudgementCut0 kits.constant run scoreboard players operation %VFXJudgementCutAbsVy kits.y *= %VFXJudgementCut-1 kits.constant

# retry if vector is too small
scoreboard players operation %VFXJudgementCutDist kits.z += %VFXJudgementCutAbsVx kits.x
scoreboard players operation %VFXJudgementCutDist kits.z += %VFXJudgementCutAbsVy kits.y
execute if score %VFXJudgementCutDist kits.z < %VFXJudgementCutRes kits.constant run function kits:char/vergil/judgement_cut/visual/get