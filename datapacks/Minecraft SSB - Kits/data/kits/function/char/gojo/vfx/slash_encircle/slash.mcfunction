## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s kits.x = %vfxSlashEncircle.px kits.x
scoreboard players operation @s kits.y = %vfxSlashEncircle.py kits.y
scoreboard players operation @s kits.x -= %vfxSlashEncircle.x kits.x
scoreboard players operation @s kits.y -= %vfxSlashEncircle.y kits.y

# rotate toward point
$execute unless entity @s[scores={kits.x=-$(yaw)..$(yaw)}] run scoreboard players operation %vfxSlashEncircle.x kits.x += %vfxSlashEncircle.vx kits.x
$execute unless entity @s[scores={kits.y=-$(pitch)..$(pitch)}] run scoreboard players operation %vfxSlashEncircle.y kits.y += %vfxSlashEncircle.vy kits.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %vfxSlashEncircle.x kits.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %vfxSlashEncircle.y kits.y

# particles
$execute at @s run $(vfx)

# recurse until pos is close to point
scoreboard players reset @s kits.z
scoreboard players operation @s kits.z += @s kits.x
scoreboard players operation @s kits.z += @s kits.y
$execute if entity @s[scores={kits.z=-$(rotMaxRange)..$(rotMaxRange)}] run function kits:char/gojo/vfx/slash_encircle/end
$execute unless entity @s[scores={kits.z=-$(rotMaxRange)..$(rotMaxRange)}] at @s run function kits:char/gojo/vfx/slash_encircle/slash with storage kits:vfx slashEncircle