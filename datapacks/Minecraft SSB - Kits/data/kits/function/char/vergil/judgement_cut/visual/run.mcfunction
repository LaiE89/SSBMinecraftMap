## Runs Judgement Cut
# constants
# increase M to make each step larger
scoreboard players set %VFXJudgementCut0 kits.constant 0
scoreboard players set %VFXJudgementCut-1 kits.constant -1
scoreboard players set %VFXJudgementCutRes kits.constant 10
scoreboard players set %VFXJudgementCutS kits.constant 100
scoreboard players set %VFXJudgementCutM kits.constant 1

# get vector from pos to point
function kits:char/vergil/judgement_cut/visual/get

# find largest component
execute if score %VFXJudgementCutAbsVx kits.x > %VFXJudgementCutAbsVy kits.y run scoreboard players operation %VFXJudgementCutMax kits.z = %VFXJudgementCutAbsVx kits.x
execute if score %VFXJudgementCutAbsVx kits.x < %VFXJudgementCutAbsVy kits.y run scoreboard players operation %VFXJudgementCutMax kits.z = %VFXJudgementCutAbsVy kits.y

# forceize vector to unit vector
scoreboard players set %VFXJudgementCutS kits.constant 100
scoreboard players operation %VFXJudgementCutX kits.x *= %VFXJudgementCutS kits.constant
scoreboard players operation %VFXJudgementCutY kits.y *= %VFXJudgementCutS kits.constant
scoreboard players operation %VFXJudgementCutPx kits.x *= %VFXJudgementCutS kits.constant
scoreboard players operation %VFXJudgementCutPy kits.y *= %VFXJudgementCutS kits.constant
scoreboard players operation %VFXJudgementCutVx kits.x *= %VFXJudgementCutS kits.constant
scoreboard players operation %VFXJudgementCutVy kits.y *= %VFXJudgementCutS kits.constant
scoreboard players operation %VFXJudgementCutMax kits.z /= %VFXJudgementCutM kits.constant
scoreboard players operation %VFXJudgementCutVx kits.x /= %VFXJudgementCutMax kits.z
scoreboard players operation %VFXJudgementCutVy kits.y /= %VFXJudgementCutMax kits.z

# cut
function kits:char/vergil/judgement_cut/visual/cut