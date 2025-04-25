## When Stat Check is Used
# Effects
effect give @s resistance 5 0 true
effect give @s speed 5 1 true
playsound minecraft:entity.warden.sonic_charge neutral @a[distance=..10] ~ ~ ~ 1 2 1

# FX
execute rotated ~ 90 positioned ~ ~1 ~ run function kits:char/itadori/vfx/particles/aura
execute rotated ~180 0 positioned ~ ~-0.4 ~ run function kits:char/itadori/vfx/particles/aura2

# Resets scores
scoreboard players remove @s kits.ability1CD 10
scoreboard players set @s kits.ability3CD 0
