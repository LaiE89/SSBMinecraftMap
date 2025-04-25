## Finds the Wall in the Direction of Movement
# track scores
scoreboard players add @s kits.raycastTick 1
scoreboard players remove @s kits.raycastTick2 1

# found wall
execute positioned ^ ^ ^0.25 run function kits:char/alucard/jackal_bullet/wall/check_block
execute if score @s kits.raycastTick2 matches -1 run function kits:char/alucard/jackal_bullet/wall/find_normal

# recursive call
execute if score @s kits.raycastTick2 matches 0.. positioned ^ ^ ^0.25 run function kits:char/alucard/jackal_bullet/wall/find