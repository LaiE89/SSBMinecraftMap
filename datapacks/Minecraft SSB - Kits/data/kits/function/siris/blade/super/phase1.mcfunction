## Execute at Point
# Interactability
execute as @p[tag=Siris] at @s anchored eyes facing entity @e[limit=1,sort=nearest,tag=SirisSuperPoint,type=area_effect_cloud] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[scores={kits.criterion.COS=1..},distance=..0.3] run execute as @e[limit=1,sort=nearest,tag=SirisSuperPoint,type=area_effect_cloud] at @s run function kits:siris/blade/super/clicked

# End damage
execute if score @p[tag=Siris] kits.ability1CD matches 59.. run function kits:siris/blade/super/result

# VFX
scoreboard players add @s kits.timer2 1
execute if score @s kits.timer2 matches 20.. run function kits:siris/vfx/particles/ripple/type1
