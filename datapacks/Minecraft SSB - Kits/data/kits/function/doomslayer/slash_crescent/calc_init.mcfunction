## Calculates Initial Values
# current pos = r
$scoreboard players operation %vfxSlashCrescent.pos $(objective) = %vfxSlashCrescent.r $(objective)

# calculate step size
$scoreboard players operation %vfxSlashCrescent.step $(objective) = %vfxSlashCrescent.r2 $(objective)
$scoreboard players operation %vfxSlashCrescent.step $(objective) -= %vfxSlashCrescent.r $(objective)
$scoreboard players operation %vfxSlashCrescent.step $(objective) /= %vfxSlashCrescent.accuracy kits.constant