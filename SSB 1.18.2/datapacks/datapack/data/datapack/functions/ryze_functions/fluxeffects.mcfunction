execute at @e[type=area_effect_cloud,tag=RyzeFluxBall,distance=..1,limit=1,sort=nearest] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 50
kill @e[type=area_effect_cloud,tag=RyzeFluxBall,distance=..1,limit=1,sort=nearest]
playsound minecraft:entity.axolotl.attack neutral @a[distance=..10] ~ ~ ~ 1 0.5 1
scoreboard players set @s RyzeFluxTimer 0
tag @s remove RyzeFluxTarget
tag @s add RyzeCurTarget
tag @s add RyzeOriginTarget
#summon area_effect_cloud ~ ~ ~ {Tags:["RyzeFluxBall"],Duration:20}
execute if entity @s[tag=RyzeFlux] as @e[tag=!RyzeCurTarget,tag=!RyzeFluxTarget,sort=nearest,distance=..10,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Ryze,tag=!InLabyrinth] at @s run function datapack:ryze_functions/fluxspread
tag @s remove RyzeOriginTarget
tag @s[tag=!RyzeFlux] add RyzeFlux
