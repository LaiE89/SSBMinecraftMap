# desmos: https://www.desmos.com/calculator/xapdwiht7y
# y = A - [4A/(d*d)](x-d/2)(x-d/2)
# A = peak
# d = ttlDist
# x = accSteps
## Parabola Curve Function
# x
scoreboard players operation %vfxSlashCrescent.accSteps kits.dz += %vfxSlashCrescent.dist kits.constant

# 4A/(d*d)
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz = %vfxSlashCrescent.4 kits.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz *= %vfxSlashCrescent.peak kits.dz
scoreboard players operation %vfxSlashCrescent.dxd kits.dz = %vfxSlashCrescent.ttlDist kits.constant
scoreboard players operation %vfxSlashCrescent.dxd kits.dz *= %vfxSlashCrescent.dxd kits.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz *= %vfxSlashCrescent.100000 kits.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz /= %vfxSlashCrescent.dxd kits.dz

# x-d/2
scoreboard players operation %vfxSlashCrescent.x-d/2 kits.dz = %vfxSlashCrescent.accSteps kits.dz
scoreboard players operation %vfxSlashCrescent.d/2 kits.dz = %vfxSlashCrescent.ttlDist kits.constant
scoreboard players operation %vfxSlashCrescent.d/2 kits.dz /= %vfxSlashCrescent.2 kits.constant
scoreboard players operation %vfxSlashCrescent.x-d/2 kits.dz -= %vfxSlashCrescent.d/2 kits.dz

# [4A/(d*d)](x-d/2)(x-d/2)
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz *= %vfxSlashCrescent.x-d/2 kits.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz *= %vfxSlashCrescent.x-d/2 kits.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz /= %vfxSlashCrescent.100000 kits.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz -= %vfxSlashCrescent.peak kits.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.dz *= %vfxSlashCrescent.-1 kits.constant

# output
scoreboard players operation %vfxSlashCrescent.parabolaOut kits.dz = %vfxSlashCrescent.4A/dxd kits.dz
execute store result storage kits:vfx SlashCrescent.parabolaOut double 0.01 run scoreboard players get %vfxSlashCrescent.parabolaOut kits.dz