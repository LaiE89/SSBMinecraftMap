## Execute at Blue During Move Phase
# Movement
tp @s ^ ^ ^1

# FX
execute positioned ~ ~1 ~ run function kits:gojo/vfx/particles/blue2
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.25 1 0.25
