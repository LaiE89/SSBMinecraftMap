## If Plasma Bolt Ray Collides With Enemy
# Item drops passive
execute positioned ~ ~-1.5 ~ run function kits:char/isaac/item_drops/drop

# Ensures enemy is hit
tag @s add IsaacPlasmaCutHit

# Determines if bolt hits humanoid or not
execute if entity @s[type=#kits:humanoid] run function kits:char/isaac/plasma_cutter/plasma_cut/hit/humanoid
execute unless entity @s[type=#kits:humanoid] run function kits:char/isaac/plasma_cutter/plasma_cut/hit/body

# Prevents undetected hits
execute if entity @s[tag=IsaacPlasmaCutHit] run function kits:char/isaac/plasma_cutter/plasma_cut/hit/body

# Stops bolt
scoreboard players set @p[tag=Isaac] kits.raycastTick 2222
