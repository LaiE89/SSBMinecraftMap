# note: call this function on every tick; executed at the area effect cloud with the $(slowcaster) tag
# note: the "slowcaster" macro in the start function must match the one in the summon function
# note: add "function none" in the macro parameters if no action is needed
# example call: function kits:generic/functions/slowcast/start {"speed":"10","slowcaster":"genericSlowcaster","hitEnd":"function","hitBlock":"function","hitEntity":"function","vfx":"function"}
## Slowcast Start Function
# limit travel distance
scoreboard players remove @s kits.raycast.dist 1
$execute if score @s kits.raycast.dist matches -1..0 run return run function kits:generic/functions/slowcast/hit_end {"slowcaster":"$(slowcaster)","hitEnd":"$(hitEnd)"}

# run slowcast
$scoreboard players set @s kits.raycast.step $(speed)
$function kits:generic/functions/slowcast/step {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
scoreboard players reset @s kits.raycast.step