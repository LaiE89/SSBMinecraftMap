tag @s add ArcueidRed
execute as @e[distance=..7,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Arcueid,tag=!InLabyrinth] at @s run function datapack:arcueid_functions/fear
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.2 100
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Arcueid\"}"}}
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Red Arcueid\"}"},Enchantments:[{id:protection,lvl:4}],SkullOwner:{Id:[I;1942743758,-985382235,-1498796417,810472037],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRmMzBhN2U1NWE3OTRmNjkxMGNhODM3MTY2ZTk3ZDdiOGM1YTU1MGNmYTMyYjYzODNmZmIzMWQ0YmIwMzFmOSJ9fX0="}]}}} 1
playsound minecraft:entity.cat.hiss neutral @a[distance=..50] ~ ~ ~ 3 0 1
effect give @s speed 7 1 true
scoreboard players set @s Ability2CD 0