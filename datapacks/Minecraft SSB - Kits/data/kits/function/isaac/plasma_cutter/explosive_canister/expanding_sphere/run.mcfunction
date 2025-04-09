## Runs Expanding Sphere
# iterations
scoreboard players add %VFXExpandingSphereIterations kits.z 1
execute if score %VFXExpandingSphereIterations kits.z matches 1 run scoreboard players operation %VFXExpandingSphereDensity kits.z = %VFXExpandingSphereBaseDensity kits.z

# next expansion
scoreboard players operation %VFXExpandingSphereStep kits.z += %VFXExpandingSphereSpeed kits.constant
scoreboard players operation %VFXExpandingSphereDensity kits.z -= %VFXExpandingSphereSpeed kits.constant
scoreboard players operation %VFXExpandingSphereDensity-1 kits.z = %VFXExpandingSphereDensity kits.z
scoreboard players remove %VFXExpandingSphereDensity-1 kits.z 100

# store results
execute store result storage minecraft:vfx ExpandingSphere.Step float 0.01 run scoreboard players get %VFXExpandingSphereStep kits.z
execute store result storage minecraft:vfx ExpandingSphere.Density1Less float 0.01 run scoreboard players get %VFXExpandingSphereDensity-1 kits.z
execute store result storage minecraft:vfx ExpandingSphere.Density float 0.01 run scoreboard players get %VFXExpandingSphereDensity kits.z

# draw
tp @s ~ ~ ~ 0 -90
execute if score %VFXExpandingSphereIterations kits.z < %VFXExpandingSphereLimit kits.constant at @s run function kits:isaac/plasma_cutter/explosive_canister/expanding_sphere/draw_sphere with storage minecraft:vfx ExpandingSphere
execute if score %VFXExpandingSphereIterations kits.z >= %VFXExpandingSphereLimit kits.constant run function kits:isaac/plasma_cutter/explosive_canister/expanding_sphere/end
