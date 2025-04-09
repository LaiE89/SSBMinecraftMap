## Execute at Enemies Hit by Strong Black Flash
# Damage
damage @s 10 bypass:player_attack by @p[tag=Itadori]

# Knockback
scoreboard players set @s kits.specific.itadorikits.raycastTick 0
execute positioned ~ ~ ~ facing entity @p[tag=Itadori] feet run function kits:itadori/itadori/black_flash/kb

# VFX
execute positioned as @s run summon area_effect_cloud ~ ~1 ~ {Duration:10,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["ItadoriBlackLightning"]}
execute as @e[tag=ItadoriBlackLightning,type=area_effect_cloud] at @s run function kits:itadori/vfx/animations/lightning/animate
