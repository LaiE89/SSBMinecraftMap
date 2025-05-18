## Execute at Object Being Pulled by Isaac
# Gets grabbed by isaac
tag @s add IsaacObjectKinesisGrabbed

# Puts isaac in a grabbing state
tag @p[tag=Isaac] add IsaacKinesisGrabbing

# Sound
execute at @p[tag=Isaac] run playsound minecraft:block.trial_spawner.spawn_item_begin neutral @a[distance=..30] ~ ~ ~ 3 2 1
