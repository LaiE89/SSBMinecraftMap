## When Blink is Used
# Detects if user is facing an enemy
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~1.5 ~ run function kits:gojo/special/blink/detect
