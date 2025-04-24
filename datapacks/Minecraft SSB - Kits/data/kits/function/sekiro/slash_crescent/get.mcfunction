## Gets Data
# get first intercept (r)
$execute rotated ~ 0 rotated ~$(yaw) ~$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r kits.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r kits.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r kits.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r2 kits.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r2 kits.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r2 kits.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
function kits:sekiro/slash_crescent/calc_init {"objective":"kits.x"}
function kits:sekiro/slash_crescent/calc_init {"objective":"kits.y"}
function kits:sekiro/slash_crescent/calc_init {"objective":"kits.z"}

# calculate abs values of step
scoreboard players operation %vfxSlashCrescent.absStep kits.x = %vfxSlashCrescent.step kits.x
scoreboard players operation %vfxSlashCrescent.absStep kits.y = %vfxSlashCrescent.step kits.y
scoreboard players operation %vfxSlashCrescent.absStep kits.z = %vfxSlashCrescent.step kits.z
execute if score %vfxSlashCrescent.absStep kits.x matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep kits.x *= %vfxSlashCrescent.-1 kits.constant
execute if score %vfxSlashCrescent.absStep kits.y matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep kits.y *= %vfxSlashCrescent.-1 kits.constant
execute if score %vfxSlashCrescent.absStep kits.z matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep kits.z *= %vfxSlashCrescent.-1 kits.constant

# estimate step dist |x|+|y|+|z|
scoreboard players operation %vfxSlashCrescent.dist kits.constant = %vfxSlashCrescent.absStep kits.x
scoreboard players operation %vfxSlashCrescent.dist kits.constant += %vfxSlashCrescent.absStep kits.y
scoreboard players operation %vfxSlashCrescent.dist kits.constant += %vfxSlashCrescent.absStep kits.z

# estimate total dist
scoreboard players operation %vfxSlashCrescent.ttlDist kits.constant = %vfxSlashCrescent.dist kits.constant
scoreboard players operation %vfxSlashCrescent.ttlDist kits.constant *= %vfxSlashCrescent.accuracy kits.constant

## Run
function kits:sekiro/slash_crescent/run