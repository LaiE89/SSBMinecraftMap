effect clear @s minecraft:slowness
attribute @s minecraft:attack_damage modifier remove damage.swordsdance.cynthia
kill @e[type=area_effect_cloud,tag=GarchompSwordsDanceVFX]
kill @e[type=item_display,tag=GarchompSwordsDanceVFX_Sword]
execute if score @s kits.timer matches 50.. run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 50
scoreboard players set @s kits.ability2CD 0
scoreboard players reset @s kits.timer
tag @s remove GarchompDance
