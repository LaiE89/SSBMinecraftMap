# example call: function kits:generic/functions/precisecast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)","vfx":"$(vfx)"}
## Precisecast Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s kits.raycast.step matches 0 run return run $(hitEnd)
execute positioned ^ ^ ^0.5 run function kits:generic/functions/precisecast/check_block
$execute if score @s kits.raycast.step matches -1 run return run function kits:generic/functions/precisecast/hit_block {"hitBlock":"$(hitBlock)"}
$execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,type=!#kits:non_entity,tag=!genericPrecisecaster] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run return run function kits:generic/functions/precisecast/hit_entity {"hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)"}

# recursive call
scoreboard players remove @s kits.raycast.step 1
$execute if score @s kits.raycast.step matches 0.. positioned ^ ^ ^0.5 run function kits:generic/functions/precisecast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)","vfx":"$(vfx)"}