# example call: function kits:char/gojo/vfx/radial_forked_lightning/play {"rootsMin":"3","rootsMax":"5","branchesMin":"3","branchesMax":"5","branchLengthMin":"5","branchLengthMax":"10","particle":"flame"}
## Plays Forked Lightning
# dynamic constants
$scoreboard players set %vfxRadialForkedLightning.rootsMin kits.constant $(rootsMin)
$scoreboard players set %vfxRadialForkedLightning.rootsMax kits.constant $(rootsMax)
$scoreboard players set %vfxRadialForkedLightning.branchesMin kits.constant $(branchesMin)
$scoreboard players set %vfxRadialForkedLightning.branchesMax kits.constant $(branchesMax)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMin kits.constant $(branchLengthMin)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMax kits.constant $(branchLengthMax)

# store dynamic constants
execute store result storage kits:vfx radialForkedLightning.rootsMin int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMin kits.constant
execute store result storage kits:vfx radialForkedLightning.rootsMax int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMax kits.constant
execute store result storage kits:vfx radialForkedLightning.branchesMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMin kits.constant
execute store result storage kits:vfx radialForkedLightning.branchesMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMax kits.constant
execute store result storage kits:vfx radialForkedLightning.branchLengthMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMin kits.constant
execute store result storage kits:vfx radialForkedLightning.branchLengthMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMax kits.constant
$data modify storage kits:vfx radialForkedLightning.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxRadialForkedLightning"],Duration:0}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRadialForkedLightning] at @s run function kits:char/gojo/vfx/radial_forked_lightning/start with storage kits:vfx radialForkedLightning
function kits:char/gojo/vfx/radial_forked_lightning/end