# example call: function kits:generic/functions/raycast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
## Raycast Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s kits.raycast.step matches 0 run return run $(hitEnd)
execute positioned ^ ^ ^0.5 run function kits:generic/functions/raycast/check_block
$execute if score @s kits.raycast.step matches -1 run return run function kits:generic/functions/raycast/hit_block {"hitBlock":"$(hitBlock)"}
$execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!genericRaycaster] run return run function kits:generic/functions/raycast/hit_entity {"hitEntity":"$(hitEntity)"}

# recursive call
scoreboard players remove @s kits.raycast.step 1
$execute if score @s kits.raycast.step matches 0.. positioned ^ ^ ^0.5 run function kits:generic/functions/raycast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}