## Expands Lightning Branch
$particle $(particle) ~ ~ ~ 0 0 0 0 1
scoreboard players remove %vfxRadialForkedLightning.lengthBranch kits.z 1
execute if score %vfxRadialForkedLightning.lengthBranch kits.z matches 1 if score %vfxRadialForkedLightning.numBranches kits.z matches 1.. positioned ^ ^ ^0.5 run function kits:char/gojo/vfx/radial_forked_lightning/branch
execute if score %vfxRadialForkedLightning.lengthBranch kits.z matches 1.. positioned ^ ^ ^0.5 run function kits:char/gojo/vfx/radial_forked_lightning/expand with storage kits:vfx radialForkedLightning