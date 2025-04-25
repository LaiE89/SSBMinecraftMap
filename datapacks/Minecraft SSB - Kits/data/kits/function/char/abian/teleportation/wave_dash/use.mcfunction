## When Wave Dash is Used
# Detects if user is facing an enemy
scoreboard players set @s kits.specific.abiankits.raycastTick 0
execute positioned ~ ~1.5 ~ run function kits:char/abian/teleportation/wave_dash/detect
