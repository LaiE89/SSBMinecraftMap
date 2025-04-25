# example call: function kits:char/gojo/vfx/domain/play {"accuracy":"300","radius":"1000","speed":"3","particle":"block_marker{block_state:{Name:black_concrete}}"}
## Plays Domain Expansion
# summon
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxDomain"],Duration:$(accuracy)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxDomain] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxDomain.accuracy kits.constant $(accuracy)
$scoreboard players set %vfxDomain.radius kits.constant $(radius)
$scoreboard players set %vfxDomain.newRadiusStep kits.z -$(radius)
$scoreboard players set %vfxDomain.speed kits.constant $(speed)
scoreboard players set %vfxDomain.10 kits.constant 10
scoreboard players set %vfxDomain.2 kits.constant 2
scoreboard players set %vfxDomain.-1 kits.constant -1

# calculate inaccuracy
scoreboard players set %vfxDomain.inaccuracy kits.constant 100000
scoreboard players operation %vfxDomain.inaccuracy kits.constant /= %vfxDomain.accuracy kits.constant

# calculate step
scoreboard players operation %vfxDomain.radiusStep kits.z = %vfxDomain.radius kits.constant
scoreboard players operation %vfxDomain.radiusStep kits.z /= %vfxDomain.accuracy kits.constant

# store
execute store result storage kits:vfx domain.accuracy float 0.01 run scoreboard players get %vfxDomain.accuracy kits.constant
execute store result storage kits:vfx domain.inaccuracyRot float 0.01 run scoreboard players get %vfxDomain.inaccuracy kits.constant
execute store result storage kits:vfx domain.inaccuracyPos float 0.001 run scoreboard players get %vfxDomain.inaccuracy kits.constant
execute store result storage kits:vfx domain.radiusStep double 0.01 run scoreboard players get %vfxDomain.radiusStep kits.z
execute store result storage kits:vfx domain.circleRadius double 0.01 run scoreboard players get %vfxDomain.circleRadius kits.z
$data modify storage kits:vfx domain.particle set value "$(particle)"