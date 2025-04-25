## Runs Crescent Slash
# draw parabola
function kits:char/doomslayer/slash_crescent/parabola
execute positioned as @s run function kits:char/doomslayer/slash_crescent/draw with storage kits:vfx SlashCrescent

# calculate movement toward r2
scoreboard players operation %vfxSlashCrescent.pos kits.x += %vfxSlashCrescent.step kits.x
scoreboard players operation %vfxSlashCrescent.pos kits.y += %vfxSlashCrescent.step kits.y
scoreboard players operation %vfxSlashCrescent.pos kits.z += %vfxSlashCrescent.step kits.z

# store movement into pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.pos kits.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.pos kits.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.pos kits.z

# recursive call
scoreboard players add %vfxSlashCrescent.runItt kits.dz 1
execute if score %vfxSlashCrescent.thickness kits.dz matches 1.. if score %vfxSlashCrescent.runItt kits.dz > %vfxSlashCrescent.accuracy kits.constant run function kits:char/doomslayer/slash_crescent/thickness
execute unless score %vfxSlashCrescent.runItt kits.dz > %vfxSlashCrescent.accuracy kits.constant run function kits:char/doomslayer/slash_crescent/run