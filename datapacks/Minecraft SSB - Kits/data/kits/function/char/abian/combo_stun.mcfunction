## Combo Stun
# Stun duration
scoreboard players remove @s kits.specific.abianComboStun 1

# Freezes enemy in place
tp @s

# FX
particle enchanted_hit ~ ~1 ~ 0 0 0 0.5 2 force
playsound entity.player.hurt neutral @a[distance=..15] ~ ~ ~ 0.25 1 0.25
