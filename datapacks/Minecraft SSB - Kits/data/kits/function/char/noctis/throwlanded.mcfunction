particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
function kits:char/noctis/warp
kill @e[type=minecraft:area_effect_cloud,tag=noctisthrowplace]
tag @p[tag=Noctis] remove NoctisThrow
kill @s
