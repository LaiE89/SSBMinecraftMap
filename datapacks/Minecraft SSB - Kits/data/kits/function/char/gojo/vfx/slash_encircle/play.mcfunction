# note: a full sphere is 180 by 90, but adding 20 helps account for potential gaps
# example call: function kits:char/gojo/vfx/slash_encircle/play {"numSlashes":"0","slashMin":"0","inaccuracy":"1","yaw":"200","pitch":"110","vfx":"function"}
## Plays Encircling Slash
# initialize
function kits:char/gojo/vfx/slash_encircle/end_all
$scoreboard players set %vfxSlashEncircle.inaccuracy kits.constant $(inaccuracy)
$scoreboard players set %vfxSlashEncircle.yaw kits.constant $(yaw)
$scoreboard players set %vfxSlashEncircle.pitch kits.constant $(pitch)
$scoreboard players set %vfxSlashEncircle.restr kits.constant $(slashMin)
$scoreboard players set %vfxSlashEncircle.itt kits.z $(numSlashes)
scoreboard players set %vfxSlashEncircle.-1 kits.constant -1
scoreboard players set %vfxSlashEncircle.100 kits.constant 100

# calculate rotation max range
scoreboard players operation %vfxSlashEncircle.rotMaxRange kits.constant += %vfxSlashEncircle.yaw kits.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange kits.constant += %vfxSlashEncircle.pitch kits.constant
scoreboard players operation %vfxSlashEncircle.rotMaxRange kits.constant += %vfxSlashEncircle.rotMaxRange kits.constant

# store
execute store result storage kits:vfx slashEncircle.yaw int 1 run scoreboard players get %vfxSlashEncircle.yaw kits.constant
execute store result storage kits:vfx slashEncircle.pitch int 1 run scoreboard players get %vfxSlashEncircle.pitch kits.constant
execute store result storage kits:vfx slashEncircle.rotMaxRange int 1 run scoreboard players get %vfxSlashEncircle.rotMaxRange kits.constant
$data modify storage kits:vfx slashEncircle.vfx set value "$(vfx)"

# get facing position
execute store result score %vfxSlashEncircle.fx kits.x run data get entity @s Rotation[0] 1
execute store result score %vfxSlashEncircle.fy kits.y run data get entity @s Rotation[1] 1

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxSlashEncircle"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashEncircle] at @s run function kits:char/gojo/vfx/slash_encircle/run