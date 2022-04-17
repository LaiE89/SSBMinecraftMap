clear @s minecraft:player_head{display:{Name:"{\"text\":\"Guts\"}"}}
clear @s leather_chestplate{display:{Name:'[{"text":"The Black Swordsman\'s Chestplate","italic":false,"color":"dark_red"}]'}}
clear @s minecraft:netherite_leggings{display:{Name:'[{"text":"The Black Swordsman\'s Leggings","italic":false,"color":"dark_red"}]'}}
clear @s minecraft:netherite_boots{display:{Name:'[{"text":"The Black Swordsman\'s Boots","italic":false,"color":"dark_red"}]'}}
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.5 1 0.5 0 100
particle minecraft:dust 1 0 0 1 ~ ~ ~ 2 2 2 0 100
playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..50]
tag @s add GutsBerserker