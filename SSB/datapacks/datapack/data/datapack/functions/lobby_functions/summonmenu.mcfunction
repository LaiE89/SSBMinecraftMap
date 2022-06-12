scoreboard players set @s Lobby_Menu 0
summon minecraft:armor_stand ~ ~0.5 ~ {Tags:["MenuMove"],Invisible:1b,Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["lobbymenu"],CustomDisplayTile:1b,CustomName:'{"text":"Lobby Menu"}',DisplayState:{Name:"minecraft:air"}}]}
tag @s add InMenu