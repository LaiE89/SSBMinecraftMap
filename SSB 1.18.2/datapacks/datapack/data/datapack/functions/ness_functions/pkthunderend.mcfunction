effect clear @s invisibility
effect clear @s resistance
effect clear @s speed
effect clear @s weakness
item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Ness\"}"},SkullOwner:{Id:[I;989919320,-1928705138,-1804460592,1218639422],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTlhYjUxN2JmNWQ0Njk4YTBkMTVhNDUxOTBkODMyZjdmZjVhOWI4ZTkyOWFhYjliZDM5ZjIwOTAzZmExNjA3OSJ9fX0="}]}}} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Ness\' Shirt","italic":false,"color":"gold"}]',color:16701501},Unbreakable:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"Ness\' Pants","italic":false,"color":"gold"}]',color:3949738},Unbreakable:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"Ness\' Shoes","italic":false,"color":"gold"}]',color:11546150},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;-12071,27890,143812,-55780],Slot:feet,Name:"generic.movement_speed"}]} 1
tp @s @e[tag=pkthunderness,type=armor_stand,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=pkthunderness]
tag @s remove NessInThunder