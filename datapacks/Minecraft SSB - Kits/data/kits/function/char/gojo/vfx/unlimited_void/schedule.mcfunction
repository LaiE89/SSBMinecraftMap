## Delayed Functions
# draw paint
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxUnlimitedVoid] at @s run function kits:char/gojo/vfx/slash_encircle/play {"numSlashes":"2","slashMin":"0","inaccuracy":"20","yaw":"200","pitch":"70","vfx":"function kits:char/gojo/vfx/unlimited_void/paint/random"}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxUnlimitedVoid] at @s run playsound entity.wither.shoot neutral @a[distance=..20] ~ ~ ~ 0.25 1.00 0.25
function kits:char/gojo/vfx/unlimited_void/end