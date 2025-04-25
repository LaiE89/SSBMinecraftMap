# example call: function kits:generic/functions/slowcast/summon {"distance":"10","slowcaster":"genericSlowcaster"}
## Slowcast Summon Function
# summon
$tag @s add $(slowcaster)
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["genericFunctions","$(slowcaster)"],Duration:$(distance)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=$(slowcaster)] kits.raycast.dist $(distance)
$tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=$(slowcaster)] ~ ~ ~ ~ ~