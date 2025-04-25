## When Any Collectable Object is Collected
# Determines the effects of a specific collectable object when collected
execute if entity @s[tag=IsaacObjectMedpack] as @p[tag=Isaac] at @s run function kits:char/isaac/objects/collect_medpack
execute if entity @s[tag=IsaacObjectPlasmaEnergy] as @p[tag=Isaac] at @s run function kits:char/isaac/objects/collect_plasma

# Kills collectable object
kill @s
