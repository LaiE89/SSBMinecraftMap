## When Kinesis is Held Down
# Sets ray distance to 15 blocks if isaac is not grabbing an object
scoreboard players set @s[tag=!IsaacKinesisGrabbing] kits.raycastTick2 0

# Sets ray distance to 2 blocks if isaac is grabbing an object
scoreboard players set @s[tag=IsaacKinesisGrabbing] kits.raycastTick2 36

# Traces a ray in front of isaac
execute positioned ~ ~1 ~ run function kits:char/isaac/modules/kinesis/pull
