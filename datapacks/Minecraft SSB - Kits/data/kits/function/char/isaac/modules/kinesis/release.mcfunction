## When Kinesis is Released
# Stops grabbing
tag @s remove IsaacKinesisGrabbing

# Throws grabbed object
execute as @e[limit=1,sort=nearest,tag=IsaacObjectKinesisGrabbed,type=armor_stand] at @s run function kits:char/isaac/modules/kinesis/throw
