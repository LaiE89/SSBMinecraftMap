## Runs Domain Expansion
scoreboard players operation %vfxDomain.speed kits.z = %vfxDomain.speed kits.constant
execute if entity @s[tag=!vfxDomainFullSphere] run function kits:char/gojo/vfx/domain/draw_sphere with storage kits:vfx domain
execute if entity @s[tag=vfxDomainFullSphere] run function kits:char/gojo/vfx/domain/end