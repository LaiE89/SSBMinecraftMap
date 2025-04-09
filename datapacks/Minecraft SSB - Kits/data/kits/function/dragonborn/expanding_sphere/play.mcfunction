## Plays Expanding Sphere
# summon
function kits:dragonborn/expanding_sphere/end

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