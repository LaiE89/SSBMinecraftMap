## When Shield is Used
# Buffs
effect give @s regeneration 2 4 true
scoreboard players set @s kits.ability3CD 5

# FX
execute rotated ~ 0 positioned ~ ~-1 ~ run function kits:char/siris/vfx/particles/light
function kits:char/siris/vfx/particles/magic/shield
playsound item.trident.thunder neutral @a[distance=..20] ~ ~ ~ 0.5 1 0.5

# Confirms spell
scoreboard players set @s kits.timer -1
