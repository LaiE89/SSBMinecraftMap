# example call: function kits:isaac/plasma_cutter/explosive_canister/expanding_sphere/play {"Inaccuracy":"100","Speed":"200","Limit":"5","R":"100","G":"100","B":"100","Size":"50"}
## Plays Expanding Sphere
# summon
function kits:isaac/plasma_cutter/explosive_canister/expanding_sphere/end
$summon area_effect_cloud ~ ~ ~ {Tags:["Isaac_VFX_ExpandingSphere"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:$(Limit)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Isaac_VFX_ExpandingSphere] ~ ~ ~ 0 -90

# constants (dynamic)
# all are scaled up by 100
$scoreboard players set %VFXExpandingSphereInaccuracy kits.constant $(Inaccuracy)
$scoreboard players set %VFXExpandingSphereSpeed kits.constant $(Speed)
$scoreboard players set %VFXExpandingSphereLimit kits.constant $(Limit)
$scoreboard players set %VFXExpandingSphereR kits.constant $(R)
$scoreboard players set %VFXExpandingSphereG kits.constant $(G)
$scoreboard players set %VFXExpandingSphereB kits.constant $(B)
$scoreboard players set %VFXExpandingSphereSize kits.constant $(Size)

# store dynamic constants
execute store result storage minecraft:vfx ExpandingSphere.R float 0.01 run scoreboard players get %VFXExpandingSphereR kits.constant
execute store result storage minecraft:vfx ExpandingSphere.G float 0.01 run scoreboard players get %VFXExpandingSphereG kits.constant
execute store result storage minecraft:vfx ExpandingSphere.B float 0.01 run scoreboard players get %VFXExpandingSphereB kits.constant
execute store result storage minecraft:vfx ExpandingSphere.Size float 0.01 run scoreboard players get %VFXExpandingSphereSize kits.constant

# base density
scoreboard players operation %VFXExpandingSphereBaseDensity kits.z = %VFXExpandingSphereSpeed kits.constant
scoreboard players operation %VFXExpandingSphereBaseDensity kits.z += %VFXExpandingSphereInaccuracy kits.constant
scoreboard players operation %VFXExpandingSphereBaseDensity kits.z *= %VFXExpandingSphereLimit kits.constant