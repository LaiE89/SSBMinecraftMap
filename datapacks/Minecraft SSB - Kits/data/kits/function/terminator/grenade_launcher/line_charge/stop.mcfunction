## When Explosions Reach Initial Usage Location
# Allows hit enemies to be hit again
tag @e[tag=TerminatorLineChargeGrenadeHit] remove TerminatorLineChargeGrenadeHit

# Kills all necessary elements
kill @e[limit=1,sort=nearest,tag=TerminatorLineChargeUseMarker,type=area_effect_cloud]
kill @s
