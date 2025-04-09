## Gets Vector From Position to Point
# get pos and point
$execute store result score %VFXEncirclingSlashX kits.x run random value -$(Yaw)..$(Yaw)
$execute store result score %VFXEncirclingSlashY kits.y run random value -$(Pitch)..$(Pitch)
$execute store result score %VFXEncirclingSlashPx kits.x run random value -$(Yaw)..$(Yaw)
$execute store result score %VFXEncirclingSlashPy kits.y run random value -$(Pitch)..$(Pitch)

# adds facing position
scoreboard players operation %VFXEncirclingSlashX kits.x += %VFXEncirclingSlashFx kits.x
scoreboard players operation %VFXEncirclingSlashY kits.y += %VFXEncirclingSlashFy kits.y
scoreboard players operation %VFXEncirclingSlashPx kits.x += %VFXEncirclingSlashFx kits.x
scoreboard players operation %VFXEncirclingSlashPy kits.y += %VFXEncirclingSlashFy kits.y

# get vector from pos to point
scoreboard players operation %VFXEncirclingSlashVx kits.x = %VFXEncirclingSlashPx kits.x
scoreboard players operation %VFXEncirclingSlashVy kits.y = %VFXEncirclingSlashPy kits.y
scoreboard players operation %VFXEncirclingSlashVx kits.x -= %VFXEncirclingSlashX kits.x
scoreboard players operation %VFXEncirclingSlashVy kits.y -= %VFXEncirclingSlashY kits.y

# get absolute values of the vector components
scoreboard players operation %VFXEncirclingSlashAbsVx kits.x = %VFXEncirclingSlashVx kits.x
scoreboard players operation %VFXEncirclingSlashAbsVy kits.y = %VFXEncirclingSlashVy kits.y
execute if score %VFXEncirclingSlashAbsVx kits.x < %VFXEncirclingSlash0 kits.constant run scoreboard players operation %VFXEncirclingSlashAbsVx kits.x *= %VFXEncirclingSlash-1 kits.constant
execute if score %VFXEncirclingSlashAbsVy kits.y < %VFXEncirclingSlash0 kits.constant run scoreboard players operation %VFXEncirclingSlashAbsVy kits.y *= %VFXEncirclingSlash-1 kits.constant
