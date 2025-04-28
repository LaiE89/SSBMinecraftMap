particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 1 0.5 0 150 force
damage @s 8 bypass:player_attack_true_damage_no_kb by @s
tag @s remove DenjiChainsaw
clear @s minecraft:player_head[custom_name="Chainsaw Devil"]
item replace entity @s armor.head with player_head[custom_name="Denji",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.denji",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;911430723,-85835469,-2025851302,-704748153],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTAyNDA2YmVkMjA3ZjYwMGE1ZWE4NmMyOGVhM2FiZjAwM2QyZjZlOTM3Mjc0NDVmMmU1OWVjNmQ1NGI0MjVhNiJ9fX0="}]}] 1
scoreboard players set @s kits.timer2 0