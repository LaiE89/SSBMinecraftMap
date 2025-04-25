# example call: function kits:generic/functions/slowcast/step {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
## Slowcast Step Function
# vfx
$$(vfx)

# collision check
execute positioned ^ ^ ^0.5 run function kits:generic/functions/slowcast/check_block
$execute if score @s kits.raycast.step matches -1 run return run function kits:generic/functions/slowcast/hit_block {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)"}
$execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!$(slowcaster)] run return run function kits:generic/functions/slowcast/hit_entity {"slowcaster":"$(slowcaster)","hitEntity":"$(hitEntity)"}

# recursive call
scoreboard players remove @s kits.raycast.step 1
execute if score @s kits.raycast.step matches 0 run tp @s ~ ~ ~
$execute if score @s kits.raycast.step matches 1.. positioned ^ ^ ^0.5 run function kits:generic/functions/slowcast/step {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}