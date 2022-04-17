particle minecraft:flash ~ ~1 ~ 
execute if entity @p[tag=Tracer,scores={Timer5=10}] run playsound minecraft:block.note_block.pling neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute if entity @p[tag=Tracer,scores={Timer5=13}] run playsound minecraft:block.note_block.pling neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute if entity @p[tag=Tracer,scores={Timer5=16}] run playsound minecraft:block.note_block.pling neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute if entity @p[tag=Tracer,scores={Timer5=17}] run playsound minecraft:block.note_block.pling neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute if entity @p[tag=Tracer,scores={Timer5=18}] run playsound minecraft:block.note_block.pling neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute if entity @p[tag=Tracer,scores={Timer5=19}] run playsound minecraft:block.note_block.pling neutral @a[distance=..20] ~ ~ ~ 2 2 1
execute if entity @p[tag=Tracer,scores={Timer5=20..}] as @e[distance=..5,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!InLabyrinth] at @s run function datapack:damage2
execute if entity @p[tag=Tracer,scores={Timer5=20..}] run particle minecraft:explosion_emitter ~ ~1 ~
execute if entity @p[tag=Tracer,scores={Timer5=20..}] run playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 3 0.7 1
execute if entity @p[tag=Tracer,scores={Timer5=20..}] run kill @e[type=armor_stand,tag=TracerPulseBomb]
execute if entity @p[tag=Tracer,scores={Timer5=20..}] run tag @s remove TracerPulseBomb