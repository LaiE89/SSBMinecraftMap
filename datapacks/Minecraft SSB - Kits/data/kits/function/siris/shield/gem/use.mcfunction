## When Darkfire is Used
# Applies darkfire gem to blade
tag @s add kits.specific.sirisDarkfire

# FX
particle flash ~ ~1 ~ 0 0 0  0 force
particle large_smoke ~ ~1 ~ 0 0 0 0.25 3 force
playsound block.respawn_anchor.charge neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Resets cooldowns
scoreboard players set @s kits.ability4CD 0
