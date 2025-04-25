# example call: function datapack:vfx/encircling_slash/play {"LowestSliceLength":"30","Inaccuracy":"3","Yaw":"200","Pitch":"90","R":"100","G":"100","B":"100","Size":"50","Distance":"400"}
## Plays Encircling Slash
# reset for safe measure
function kits:char/arcueid/chain_vfx/end

# fixed constants
scoreboard players set %VFXEncirclingSlash0 kits.constant 0
scoreboard players set %VFXEncirclingSlash-1 kits.constant -1
scoreboard players set %VFXEncirclingSlashS kits.constant 100

# dyanamic constants
$scoreboard players set %VFXEncirclingSlashM kits.constant $(Inaccuracy)
$scoreboard players set %VFXEncirclingSlashYaw kits.constant $(Yaw)
$scoreboard players set %VFXEncirclingSlashPitch kits.constant $(Pitch)
$scoreboard players set %VFXEncirclingSlashR kits.constant $(R)
$scoreboard players set %VFXEncirclingSlashG kits.constant $(G)
$scoreboard players set %VFXEncirclingSlashB kits.constant $(B)
$scoreboard players set %VFXEncirclingSlashSize kits.constant $(Size)
$scoreboard players set %VFXEncirclingSlashDistance kits.constant $(Distance)

# calculate summation of yaw and pitch
scoreboard players operation %VFXEncirclingSlashRotMaxRange kits.constant += %VFXEncirclingSlashYaw kits.constant
scoreboard players operation %VFXEncirclingSlashRotMaxRange kits.constant += %VFXEncirclingSlashPitch kits.constant
scoreboard players operation %VFXEncirclingSlashRotMaxRange kits.constant += %VFXEncirclingSlashRotMaxRange kits.constant

# store dynamic constants
execute store result storage kits:vfx EncirclingSlash.Yaw int 1 run scoreboard players get %VFXEncirclingSlashYaw kits.constant
execute store result storage kits:vfx EncirclingSlash.Pitch int 1 run scoreboard players get %VFXEncirclingSlashPitch kits.constant
execute store result storage kits:vfx EncirclingSlash.RotMaxRange int 1 run scoreboard players get %VFXEncirclingSlashRotMaxRange kits.constant
execute store result storage kits:vfx EncirclingSlash.R float 0.01 run scoreboard players get %VFXEncirclingSlashR kits.constant
execute store result storage kits:vfx EncirclingSlash.G float 0.01 run scoreboard players get %VFXEncirclingSlashG kits.constant
execute store result storage kits:vfx EncirclingSlash.B float 0.01 run scoreboard players get %VFXEncirclingSlashB kits.constant
execute store result storage kits:vfx EncirclingSlash.Size float 0.01 run scoreboard players get %VFXEncirclingSlashSize kits.constant
execute store result storage kits:vfx EncirclingSlash.Distance float 0.01 run scoreboard players get %VFXEncirclingSlashDistance kits.constant

# get facing position
execute store result score %VFXEncirclingSlashFx kits.x run data get entity @s Rotation[0] 1
execute store result score %VFXEncirclingSlashFy kits.y run data get entity @s Rotation[1] 1

# summon
summon area_effect_cloud ~ ~ ~ {Tags:["VFX","VFX_ChainsawmanChains"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=VFX_ChainsawmanChains] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=VFX_ChainsawmanChains] at @s run function kits:char/chainsawman/chain_vfx/run