## Gets Vector From Position to Point
# get pos and point
$execute store result score %vfxSlashEncircle.x kits.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.y kits.y run random value -$(pitch)..$(pitch)
$execute store result score %vfxSlashEncircle.px kits.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.py kits.y run random value -$(pitch)..$(pitch)

# add facing position
scoreboard players operation %vfxSlashEncircle.x kits.x += %vfxSlashEncircle.fx kits.x
scoreboard players operation %vfxSlashEncircle.y kits.y += %vfxSlashEncircle.fy kits.y
scoreboard players operation %vfxSlashEncircle.px kits.x += %vfxSlashEncircle.fx kits.x
scoreboard players operation %vfxSlashEncircle.py kits.y += %vfxSlashEncircle.fy kits.y

# get vector from pos to point
scoreboard players operation %vfxSlashEncircle.vx kits.x = %vfxSlashEncircle.px kits.x
scoreboard players operation %vfxSlashEncircle.vy kits.y = %vfxSlashEncircle.py kits.y
scoreboard players operation %vfxSlashEncircle.vx kits.x -= %vfxSlashEncircle.x kits.x
scoreboard players operation %vfxSlashEncircle.vy kits.y -= %vfxSlashEncircle.y kits.y

# get absolute values of the vector components
scoreboard players operation %vfxSlashEncircle.absVx kits.x = %vfxSlashEncircle.vx kits.x
scoreboard players operation %vfxSlashEncircle.absVy kits.y = %vfxSlashEncircle.vy kits.y
execute if score %vfxSlashEncircle.absVx kits.x matches ..0 run scoreboard players operation %vfxSlashEncircle.absVx kits.x *= %vfxSlashEncircle.-1 kits.constant
execute if score %vfxSlashEncircle.absVy kits.y matches ..0 run scoreboard players operation %vfxSlashEncircle.absVy kits.y *= %vfxSlashEncircle.-1 kits.constant

# retry if vector is too small
scoreboard players reset %vfxSlashEncircle.dist
scoreboard players operation %vfxSlashEncircle.dist kits.z += %vfxSlashEncircle.absVx kits.x
scoreboard players operation %vfxSlashEncircle.dist kits.z += %vfxSlashEncircle.absVy kits.y
execute if score %vfxSlashEncircle.dist kits.z < %vfxSlashEncircle.restr kits.constant run function kits:char/gojo/vfx/slash_encircle/get with storage kits:vfx slashEncircle