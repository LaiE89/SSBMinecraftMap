# example call: function kits:generic/functions/slowcast/hit_block {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)"}
## Slowcast Hit Block Function
$$(hitBlock)
$tag @e[tag=$(slowcaster)] remove $(slowcaster)
scoreboard players reset @s
kill @s