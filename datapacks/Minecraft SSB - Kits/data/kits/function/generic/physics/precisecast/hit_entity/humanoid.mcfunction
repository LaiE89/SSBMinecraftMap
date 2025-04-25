# example call: function kits:generic/functions/precisecast/hit_entity/humanoid {"hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)"}
## Precisecast Hit Humanoid Function
# track body part hits
$execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.35] positioned ~ ~1.5 ~ run function kits:generic/functions/precisecast/hit_entity/head {"hitHead":"$(hitHead)"}
$execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.45] positioned ~ ~1 ~ run function kits:generic/functions/precisecast/hit_entity/body {"hitBody":"$(hitBody)"}
$execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.4] positioned ~ ~0.5 ~ run function kits:generic/functions/precisecast/hit_entity/legs {"hitLegs":"$(hitLegs)"}