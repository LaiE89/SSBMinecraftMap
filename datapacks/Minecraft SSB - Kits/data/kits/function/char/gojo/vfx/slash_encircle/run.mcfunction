## Runs Encircling Slash
# get vector from pos to point
function kits:char/gojo/vfx/slash_encircle/get with storage kits:vfx slashEncircle

# find largest component
scoreboard players operation %vfxSlashEncircle.max kits.z = %vfxSlashEncircle.absVx kits.x
scoreboard players operation %vfxSlashEncircle.max kits.z > %vfxSlashEncircle.absVy kits.y

# normalize vector to unit vector
scoreboard players operation %vfxSlashEncircle.x kits.x *= %vfxSlashEncircle.100 kits.constant
scoreboard players operation %vfxSlashEncircle.y kits.y *= %vfxSlashEncircle.100 kits.constant
scoreboard players operation %vfxSlashEncircle.px kits.x *= %vfxSlashEncircle.100 kits.constant
scoreboard players operation %vfxSlashEncircle.py kits.y *= %vfxSlashEncircle.100 kits.constant
scoreboard players operation %vfxSlashEncircle.vx kits.x *= %vfxSlashEncircle.100 kits.constant
scoreboard players operation %vfxSlashEncircle.vy kits.y *= %vfxSlashEncircle.100 kits.constant
scoreboard players operation %vfxSlashEncircle.max kits.z /= %vfxSlashEncircle.inaccuracy kits.constant
scoreboard players operation %vfxSlashEncircle.vx kits.x /= %vfxSlashEncircle.max kits.z
scoreboard players operation %vfxSlashEncircle.vy kits.y /= %vfxSlashEncircle.max kits.z

# slash
function kits:char/gojo/vfx/slash_encircle/slash with storage kits:vfx slashEncircle

# recursive call
scoreboard players remove %vfxSlashEncircle.itt kits.z 1
execute if score %vfxSlashEncircle.itt kits.z matches 0.. run function kits:char/gojo/vfx/slash_encircle/run
execute if score %vfxSlashEncircle.itt kits.z matches ..-1 run function kits:char/gojo/vfx/slash_encircle/end_all