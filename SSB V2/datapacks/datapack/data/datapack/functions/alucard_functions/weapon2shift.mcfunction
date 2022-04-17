tag @s add AlucardWraith
playsound minecraft:entity.enderman.scream neutral @s ~ ~ ~ 10 0 1
particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.4 1 0.4 0 500
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Alucard\"}"}}
clear @s leather_chestplate{display:{Name:'[{"text":"Alucard\'s Coat","italic":false,"color":"dark_red"}]'}}
clear @s leather_leggings{display:{Name:'[{"text":"Alucard\'s Pants","italic":false,"color":"dark_red"}]'}}
clear @s leather_boots{display:{Name:'[{"text":"Alucard\'s Boots","italic":false,"color":"dark_red"}]'}}
effect give @s minecraft:resistance 5 9 true
effect give @s minecraft:speed 5 1 true
effect give @s minecraft:weakness 5 9 true
effect give @s minecraft:regeneration 5 3 true
effect give @s minecraft:invisibility 5 0 true
scoreboard players set @s Ability2CD 0