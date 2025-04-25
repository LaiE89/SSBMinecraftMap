# note: add "function none" in the macro parameters if no action is needed
# example call: function kits:generic/functions/precisecast/start {"length":"100","hitEnd":"function","hitBlock":"function","hitHead":"function","hitBody":"function","hitLegs":"function","vfx":"function"}
## Precisecast Start Function
# run raycast
$scoreboard players set @s kits.raycast.step $(length)
tag @s add genericPrecisecaster
$function kits:generic/functions/precisecast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s kits.raycast.step
tag @s remove genericPrecisecaster