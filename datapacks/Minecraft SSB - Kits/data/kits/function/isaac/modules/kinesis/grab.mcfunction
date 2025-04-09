## Execute at Object Being Pulled by Isaac
# Gets grabbed by isaac
tag @s add IsaacObjectKinesisGrabbed

# Puts isaac in a grabbing state
tag @p[tag=Isaac] add IsaacKinesisGrabbing

# Sound
playsound minecraft:entity.illusioner.prepare_blindness neutral @a[distance=..20] ~ ~ ~ 1 1 1
