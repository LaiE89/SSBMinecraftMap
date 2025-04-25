tag @s add AlucardWraith
tag @s add Invincible
playsound minecraft:entity.enderman.scream neutral @s ~ ~ ~ 10 0 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.8 0.4 0 300 force
clear @s minecraft:player_head[custom_name="Alucard"]
clear @s leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"Alucard\'s Coat"}]
clear @s leather_leggings[custom_name={"color":"dark_red","italic":false,"text":"Alucard\'s Pants"}]
clear @s leather_boots[custom_name={"color":"dark_red","italic":false,"text":"Alucard\'s Boots"}]
effect give @s minecraft:resistance 5 9 true
effect give @s minecraft:speed 5 1 true
effect give @s minecraft:weakness 5 9 true
effect give @s minecraft:regeneration 5 3 true
effect give @s minecraft:invisibility 5 0 true
scoreboard players set @s kits.ability2CD 0