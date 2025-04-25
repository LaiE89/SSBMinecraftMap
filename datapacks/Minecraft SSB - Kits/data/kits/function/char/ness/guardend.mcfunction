playsound minecraft:entity.enderman.teleport neutral @a[distance=..20] ~ ~ ~ 1 1.5 1
effect clear @s minecraft:resistance
effect clear @s minecraft:mining_fatigue
attribute @s minecraft:attack_damage modifier remove damage.guard.ness
tag @s remove NessGuard
