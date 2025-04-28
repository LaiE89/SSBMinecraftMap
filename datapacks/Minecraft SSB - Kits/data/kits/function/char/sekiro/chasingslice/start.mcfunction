kill @e[type=area_effect_cloud,tag=SekiroChasingSliceDestination]
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~ ~ rotated ~ 0 run function kits:char/sekiro/chasingslice/raycast
playsound minecraft:block.gravel.fall neutral @a[distance=..30] ~ ~ ~ 3 1.5 1
attribute @s minecraft:gravity modifier add gravity.chasingslice.sekiro -0.08 add_value
tp @s @s
particle block{block_state:"minecraft:sand"} ~ ~0.25 ~ 1 0 1 0 40 force
schedule clear kits:char/sekiro/chasingslice/reset
tag @s remove SekiroChasingSlice

schedule function kits:char/sekiro/chasingslice/ensure 20t replace