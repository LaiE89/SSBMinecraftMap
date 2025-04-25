## Tp to checkpoint
# tp aec; player follows
$data modify entity @s Pos[0] set from storage kits:kits ekko.chronobreak.chkpt$(index).pos_x
$data modify entity @s Pos[1] set from storage kits:kits ekko.chronobreak.chkpt$(index).pos_y
$data modify entity @s Pos[2] set from storage kits:kits ekko.chronobreak.chkpt$(index).pos_z
$data modify entity @s Rotation[0] set from storage kits:kits ekko.chronobreak.chkpt$(index).rot_y
$data modify entity @s Rotation[1] set from storage kits:kits ekko.chronobreak.chkpt$(index).rot_x
execute at @s run tp @p[tag=Ekko] ~ ~ ~

# vfx
execute at @s rotated ~ 0 positioned ~ ~ ~ run function kits:char/ekko/imageparticles