# desmos: https://www.desmos.com/calculator/kiaohzn1k2
## Draws a Sphere
# calculate new circle radius
# currentRadius^2 = maxRadius^2 - newStep^2
scoreboard players operation %vfxDomain.newRadiusStep kits.z += %vfxDomain.radiusStep kits.z
scoreboard players operation %vfxDomain.circleRadius kits.z = %vfxDomain.radius kits.constant
scoreboard players operation %vfxDomain.circleRadius kits.z *= %vfxDomain.radius kits.constant
scoreboard players operation %vfxDomain.newRadiusStep^2 kits.z = %vfxDomain.newRadiusStep kits.z
scoreboard players operation %vfxDomain.newRadiusStep^2 kits.z *= %vfxDomain.newRadiusStep kits.z
scoreboard players operation %vfxDomain.circleRadius kits.z -= %vfxDomain.newRadiusStep^2 kits.z
execute if score %vfxDomain.circleRadius kits.z matches ..0 run tag @s add vfxDomainFullSphere

# square root
scoreboard players operation %vfxDomain.in kits.math = %vfxDomain.circleRadius kits.z
scoreboard players set %vfxDomain.raphA kits.math 1255
function kits:char/gojo/vfx/domain/newton_raphson
function kits:char/gojo/vfx/domain/newton_raphson
function kits:char/gojo/vfx/domain/newton_raphson
function kits:char/gojo/vfx/domain/newton_raphson
function kits:char/gojo/vfx/domain/newton_raphson
function kits:char/gojo/vfx/domain/newton_raphson
function kits:char/gojo/vfx/domain/newton_raphson
execute if score %vfxDomain.raphA kits.math matches ..0 run scoreboard players operation %vfxDomain.raphA kits.math *= %vfxDomain.-1 kits.constant
scoreboard players operation %vfxDomain.circleRadius kits.z = %vfxDomain.raphA kits.math
execute store result storage kits:vfx domain.circleRadius double 0.01 run scoreboard players get %vfxDomain.circleRadius kits.z

# adaptive step scaling
scoreboard players operation %vfxDomain.radiusStep kits.z = %vfxDomain.circleRadius kits.z
scoreboard players operation %vfxDomain.radiusStep kits.z *= %vfxDomain.10 kits.constant
scoreboard players operation %vfxDomain.radiusStep kits.z /= %vfxDomain.accuracy kits.constant
execute store result storage kits:vfx domain.radiusStep double 0.01 run scoreboard players get %vfxDomain.radiusStep kits.z

# draw circle
execute at @s run function kits:char/gojo/vfx/domain/draw_semicircle with storage kits:vfx domain
execute at @s run tp @s ~ ~ ~ ~180 -90
execute at @s run function kits:char/gojo/vfx/domain/draw_semicircle with storage kits:vfx domain
execute at @s run tp @s ~ ~ ~ ~180 -90

# draw floor
scoreboard players operation %vfxDomain.floorItt kits.z = %vfxDomain.circleRadius kits.z
scoreboard players operation %vfxDomain.floorItt kits.z += %vfxDomain.circleRadius kits.z
scoreboard players operation %vfxDomain.floorItt kits.z *= %vfxDomain.10 kits.constant
scoreboard players operation %vfxDomain.floorItt kits.z /= %vfxDomain.inaccuracy kits.constant
$execute at @s rotated ~ 0 positioned ^ ^ ^$(circleRadius) facing entity @s feet run function kits:char/gojo/vfx/domain/draw_floor with storage kits:vfx domain

# step forward
$execute rotated ~-90 0 run tp @s ^ ^ ^$(radiusStep)
scoreboard players remove %vfxDomain.speed kits.z 1
execute if score %vfxDomain.speed kits.z matches 0.. run execute at @s[tag=!vfxDomainFullSphere] run function kits:char/gojo/vfx/domain/draw_sphere with storage kits:vfx domain