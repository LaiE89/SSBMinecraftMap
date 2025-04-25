## If Plasma Bolt Ray Hits Humanoid
# Determines if bolt hits head, body, or legs
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.35] positioned ~ ~1.5 ~ run function kits:char/isaac/plasma_cutter/plasma_cut/hit/head
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.45] positioned ~ ~1 ~ run function kits:char/isaac/plasma_cutter/plasma_cut/hit/body
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.4] positioned ~ ~0.5 ~ run function kits:char/isaac/plasma_cutter/plasma_cut/hit/legs
