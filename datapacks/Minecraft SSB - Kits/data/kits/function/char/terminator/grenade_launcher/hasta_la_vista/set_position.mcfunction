## Execute at HLV Grenade Upon Fired by Terminator
# Copies terminator's rotation
data modify entity @s Rotation set from entity @p[tag=Terminator] Rotation

# Teleports upwards
tp @s ~ ~1 ~
