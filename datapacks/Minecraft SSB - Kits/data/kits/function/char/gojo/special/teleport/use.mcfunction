## When teleport is used
# detects if user is facing an enemy
scoreboard players set @s kits.raycastTick 40
execute positioned ~ ~1.5 ~ run function kits:char/gojo/special/teleport/detect