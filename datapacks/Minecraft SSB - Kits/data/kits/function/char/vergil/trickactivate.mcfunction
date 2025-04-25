particle block{block_state:"minecraft:white_wool"} ~ ~ ~ 0.4 1 0.4 0.1 100 force
clear @s minecraft:player_head[custom_name="Vergil"]
clear @s minecraft:player_head[custom_name="Devil Trigger"]
clear @s minecraft:leather_chestplate[custom_name={"color":"dark_aqua","italic":false,"text":"Vergil\'s Clothes"}]
clear @s minecraft:leather_leggings[custom_name={"color":"dark_aqua","italic":false,"text":"Vergil\'s Clothes"}]
clear @s minecraft:leather_boots[custom_name={"color":"dark_aqua","italic":false,"text":"Vergil\'s Clothes"}]
effect give @s invisibility 1 0 true
attribute @s minecraft:armor modifier add armor.trick.vergil 12 add_value
attribute @s minecraft:armor_toughness modifier add tough.trick.vergil 5 add_value
attribute @s minecraft:entity_interaction_range modifier remove range.trick.vergil
scoreboard players set @s kits.timer3 0
scoreboard players set @s kits.raycastTick2 0
execute positioned as @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Vergil,tag=!InLabyrinth] rotated ~ 0 run function kits:char/vergil/vergilpassive4
playsound minecraft:entity.shulker.teleport neutral @a[distance=..20] ~ ~ ~ 3 0.9 1
tag @s add VergilInvis
tag @s remove VergilDash
scoreboard players reset @s[tag=Vergil] kits.timer4
