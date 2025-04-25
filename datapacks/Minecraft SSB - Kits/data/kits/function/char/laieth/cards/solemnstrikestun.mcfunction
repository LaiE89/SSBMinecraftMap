scoreboard players remove @s kits.specific.laiethStun 1

# Freezes enemy in place
tp @s

# FX
particle electric_spark ~ ~1 ~ 0 0 0 1 5 force
playsound entity.player.hurt neutral @a[distance=..15] ~ ~ ~ 0.25 1 0.25
