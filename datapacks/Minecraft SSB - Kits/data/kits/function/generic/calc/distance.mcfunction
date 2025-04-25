# Inputs %distance.in.target.x, %distance.in.target.y, %distance.in.target.z, %distance.in.source.x, %distance.in.source.y, %distance.in.source.z in kits.math
# Outputs %sqrt.out kits.math
scoreboard players set %distance.10000 kits.math 10000

# Calculate dx, dy, dz
scoreboard players operation %distance.in.target.x kits.math -= %distance.in.source.x kits.math
scoreboard players operation %distance.in.target.y kits.math -= %distance.in.source.y kits.math
scoreboard players operation %distance.in.target.z kits.math -= %distance.in.source.z kits.math

# Square dx, dy, dz
scoreboard players operation %distance.in.target.x kits.math *= %distance.in.target.x kits.math
scoreboard players operation %distance.in.target.y kits.math *= %distance.in.target.y kits.math
scoreboard players operation %distance.in.target.z kits.math *= %distance.in.target.z kits.math

# Convert square of dx, dy, dz back to correct decimal place (originally scaled to 100)
scoreboard players operation %distance.in.target.x kits.math /= %distance.10000 kits.math
scoreboard players operation %distance.in.target.y kits.math /= %distance.10000 kits.math
scoreboard players operation %distance.in.target.z kits.math /= %distance.10000 kits.math

# Sum everything
scoreboard players set %distance.sum kits.math 0
scoreboard players operation %distance.sum kits.math += %distance.in.target.x kits.math
scoreboard players operation %distance.sum kits.math += %distance.in.target.y kits.math
scoreboard players operation %distance.sum kits.math += %distance.in.target.z kits.math

scoreboard players operation %sqrt.in kits.math = %distance.sum kits.math
function kits:generic/calc/sqrt
