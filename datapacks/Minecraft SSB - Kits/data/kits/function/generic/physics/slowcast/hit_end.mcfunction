# example call: function kits:generic/functions/slowcast/hit_end {"slowcaster":"$(slowcaster)","hitEnd":"$(hitEnd)"}
## Slowcast Hit End Function
$$(hitEnd)
$tag @e[tag=$(slowcaster)] remove $(slowcaster)
scoreboard players reset @s
kill @s