kill @e[type=area_effect_cloud,tag=SekiroChasingSliceDestination]
scoreboard players set @s kits.raycastTick 0
execute positioned ~ ~ ~ rotated ~ 0 run function kits:sekiro/chasingslice/raycast
playsound minecraft:block.gravel.fall neutral @a[distance=..30] ~ ~ ~ 3 1.5 1
particle block{block_state:"minecraft:sand"} ~ ~0.25 ~ 1 0 1 0 40 force
schedule clear kits:sekiro/chasingslice/reset
tag @s remove SekiroChasingSlice