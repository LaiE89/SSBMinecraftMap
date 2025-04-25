## Runs Encircling Slash
# get vector from pos to point
function kits:char/arcueid/chain_vfx/get with storage kits:vfx EncirclingSlash

# find largest component
execute if score %VFXEncirclingSlashAbsVx kits.x > %VFXEncirclingSlashAbsVy kits.y run scoreboard players operation %VFXEncirclingSlashMax kits.z = %VFXEncirclingSlashAbsVx kits.x
execute if score %VFXEncirclingSlashAbsVx kits.x < %VFXEncirclingSlashAbsVy kits.y run scoreboard players operation %VFXEncirclingSlashMax kits.z = %VFXEncirclingSlashAbsVy kits.y

# forceize vector to unit vector
scoreboard players operation %VFXEncirclingSlashX kits.x *= %VFXEncirclingSlashS kits.constant
scoreboard players operation %VFXEncirclingSlashY kits.y *= %VFXEncirclingSlashS kits.constant
scoreboard players operation %VFXEncirclingSlashPx kits.x *= %VFXEncirclingSlashS kits.constant
scoreboard players operation %VFXEncirclingSlashPy kits.y *= %VFXEncirclingSlashS kits.constant
scoreboard players operation %VFXEncirclingSlashVx kits.x *= %VFXEncirclingSlashS kits.constant
scoreboard players operation %VFXEncirclingSlashVy kits.y *= %VFXEncirclingSlashS kits.constant
scoreboard players operation %VFXEncirclingSlashMax kits.z /= %VFXEncirclingSlashM kits.constant
scoreboard players operation %VFXEncirclingSlashVx kits.x /= %VFXEncirclingSlashMax kits.z
scoreboard players operation %VFXEncirclingSlashVy kits.y /= %VFXEncirclingSlashMax kits.z

# slash
function kits:char/arcueid/chain_vfx/slash with storage kits:vfx EncirclingSlash