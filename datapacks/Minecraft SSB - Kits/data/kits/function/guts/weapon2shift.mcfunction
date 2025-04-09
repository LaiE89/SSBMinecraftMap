clear @s player_head[custom_name="Guts"]
clear @s leather_chestplate[custom_name={"color":"dark_red","italic":false,"text":"The Black Swordsman\'s Chestplate"}]
clear @s netherite_leggings[custom_name={"color":"dark_red","italic":false,"text":"The Black Swordsman\'s Leggings"}]
clear @s netherite_boots[custom_name={"color":"dark_red","italic":false,"text":"The Black Swordsman\'s Boots"}]
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.25 100 force
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 2 2 2 0 100 force
playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..50] ~ ~ ~ 3 1 1
playsound minecraft:item.axe.scrape neutral @a[distance=..50] ~ ~ ~ 3 0.5 1
scoreboard players reset @s kits.timer5
tag @s add GutsBerserker
