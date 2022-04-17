summon armor_stand ~ ~ ~ {Tags:["BradFBombFire"],DisabledSlots:2096896,Small:1b,Invisible:1,Invulnerable:1}
execute as @e[distance=..8,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Brad,tag=!InLabyrinth] at @s run function datapack:damage1
playsound minecraft:block.glass.break neutral @a[distance=..50] ~ ~ ~ 5 0.8 1
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 5 1 1
particle minecraft:explosion_emitter ~ ~ ~
kill @s