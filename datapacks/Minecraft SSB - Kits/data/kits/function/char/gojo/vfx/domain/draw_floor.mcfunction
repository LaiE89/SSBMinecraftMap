## Draws Floor
scoreboard players remove %vfxDomain.floorItt kits.z 1
$execute if block ~ ~0.5 ~ #kits:passable unless block ~ ~-1.5 ~ #kits:passable run particle $(particle) ~ ~-1 ~
$execute if score %vfxDomain.floorItt kits.z matches 0.. positioned ^ ^ ^$(inaccuracyPos) run function kits:char/gojo/vfx/domain/draw_floor with storage kits:vfx domain