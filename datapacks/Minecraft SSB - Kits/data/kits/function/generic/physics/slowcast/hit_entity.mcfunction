# example call: function kits:generic/functions/slowcast/hit_entity {"slowcaster":"$(slowcaster)","hitEntity":"$(hitEntity)"}
## Slowcast Hit Entity Function
$$(hitEntity)
$tag @e[tag=$(slowcaster)] remove $(slowcaster)
scoreboard players reset @s
kill @s