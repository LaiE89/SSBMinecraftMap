effect give @s minecraft:resistance infinite 0 true
effect give @s minecraft:speed infinite 1 true
execute rotated ~ 90 run function kits:char/itadori/vfx/particles/aurarage
execute rotated ~180 0 positioned ~ ~ ~ run function kits:char/itadori/vfx/particles/aurarage2
playsound minecraft:entity.warden.sonic_charge neutral @a[distance=..20] ~ ~ ~ 3 1 1
tag @s add ItadoriRage
