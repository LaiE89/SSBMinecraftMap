## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s kits.x = %VFXEncirclingSlashPx kits.x
scoreboard players operation @s kits.y = %VFXEncirclingSlashPy kits.y
scoreboard players operation @s kits.x -= %VFXEncirclingSlashX kits.x
scoreboard players operation @s kits.y -= %VFXEncirclingSlashY kits.y

# rotate toward point
$execute unless entity @s[scores={kits.x=-$(Yaw)..$(Yaw)}] run scoreboard players operation %VFXEncirclingSlashX kits.x += %VFXEncirclingSlashVx kits.x
$execute unless entity @s[scores={kits.y=-$(Pitch)..$(Pitch)}] run scoreboard players operation %VFXEncirclingSlashY kits.y += %VFXEncirclingSlashVy kits.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %VFXEncirclingSlashX kits.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %VFXEncirclingSlashY kits.y

# particles
$particle dust{color:[$(R),$(G),$(B)],scale:$(Size)} ^ ^ ^$(Distance) 0 0 0 0 1

# recurse until pos is close to point
scoreboard players reset @s kits.z
scoreboard players operation @s kits.z += @s kits.x
scoreboard players operation @s kits.z += @s kits.y
$execute if entity @s[scores={kits.z=-$(RotMaxRange)..$(RotMaxRange)}] run function kits:char/chainsawman/chain_vfx/end
$execute unless entity @s[scores={kits.z=-$(RotMaxRange)..$(RotMaxRange)}] at @s run function kits:char/chainsawman/chain_vfx/slash with storage kits:vfx EncirclingSlash