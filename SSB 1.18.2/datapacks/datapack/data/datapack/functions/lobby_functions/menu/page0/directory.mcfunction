scoreboard players set bool Lobby_Menu 1

execute if score selection Lobby_Menu matches 0 run say ERROR

execute if score selection Lobby_Menu matches 1 run scoreboard players set @s Lobby_Menu 1
execute if score selection Lobby_Menu matches 2 run scoreboard players set @s Lobby_Menu 2
execute if score selection Lobby_Menu matches 3 run function datapack:lobby_functions/menu/page0/tpshop