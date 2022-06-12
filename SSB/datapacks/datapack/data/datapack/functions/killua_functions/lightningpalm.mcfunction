scoreboard players reset @s Timer2 
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30]
execute as @e[distance=..10,limit=1,sort=nearest,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!trident,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Killua,tag=!InLabyrinth] at @s run function datapack:killua_functions/lightningpalmdamage
scoreboard players set @s RaycastTimer2 0
execute as @s at @s positioned ~ ~1.5 ~ run function datapack:killua_functions/killuapassive4
tag @s remove KilluaLightningPalm
tag @e[tag=KilluaKnockback] remove KilluaKnockback