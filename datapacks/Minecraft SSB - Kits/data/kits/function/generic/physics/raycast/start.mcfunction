# note: add "function none" in the macro parameters if no action is needed
# example call: function kits:generic/functions/raycast/start {"length":"100","hitEnd":"function","hitBlock":"function","hitEntity":"function","vfx":"function"}
## Raycast Start Function
# run raycast
$scoreboard players set @s kits.raycast.step $(length)
tag @s add genericRaycaster
$function kits:generic/functions/raycast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s kits.raycast.step
tag @s remove genericRaycaster