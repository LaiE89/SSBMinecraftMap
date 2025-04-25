## Execute at All Objects
scoreboard players add @s[tag=!IsaacObjectKinesisGrabbed] kits.timer 1

# Collectable objects
execute if entity @s[tag=IsaacObjectCollectable] if entity @p[distance=..1,tag=Isaac] run function kits:char/isaac/objects/collect_general

# Explosives
execute if entity @s[tag=IsaacObjectExplosiveDetonating] run function kits:char/isaac/plasma_cutter/explosive_canister/detonating

# Kinesis effects
execute if entity @s[tag=IsaacObjectKinesisGrabbed] run function kits:char/isaac/modules/kinesis/object
execute if entity @s[tag=IsaacObjectKinesisThrown] run function kits:char/isaac/modules/kinesis/thrown_object/main

# Despawn time
kill @s[scores={kits.timer=200..}]
