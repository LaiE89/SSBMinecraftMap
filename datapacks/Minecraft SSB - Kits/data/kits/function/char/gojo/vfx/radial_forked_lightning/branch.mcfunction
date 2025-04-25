## Finds Random Direction for New Branch
execute if score %vfxRadialForkedLightning.numBranches kits.z matches 1 if score %vfxRadialForkedLightning.numRoots kits.z matches 1.. run function kits:char/gojo/vfx/radial_forked_lightning/root with storage kits:vfx radialForkedLightning
scoreboard players remove %vfxRadialForkedLightning.numBranches kits.z 1
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90
execute rotated as @s run function kits:char/gojo/vfx/radial_forked_lightning/new with storage kits:vfx radialForkedLightning