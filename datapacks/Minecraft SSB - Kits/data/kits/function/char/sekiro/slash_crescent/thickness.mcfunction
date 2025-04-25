## Controls Thickness
# increase peak
scoreboard players operation %vfxSlashCrescent.peak kits.dz += %vfxSlashCrescent.dist kits.constant

# reset crescent slash values
scoreboard players set %vfxSlashCrescent.runItt kits.dz 0
scoreboard players operation %vfxSlashCrescent.pos kits.x = %vfxSlashCrescent.r kits.x
scoreboard players operation %vfxSlashCrescent.pos kits.y = %vfxSlashCrescent.r kits.y
scoreboard players operation %vfxSlashCrescent.pos kits.z = %vfxSlashCrescent.r kits.z
scoreboard players reset %vfxSlashCrescent.accSteps
scoreboard players reset %vfxSlashCrescent.4A/dxd
scoreboard players reset %vfxSlashCrescent.dxd
scoreboard players reset %vfxSlashCrescent.d/2
scoreboard players reset %vfxSlashCrescent.x-d/2
scoreboard players reset %vfxSlashCrescent.parabolaOut

# reset crescent slash pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.r kits.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.r kits.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.r kits.z

# rerun crescent slash
scoreboard players remove %vfxSlashCrescent.thickness kits.dz 1
function kits:char/sekiro/slash_crescent/run