scoreboard players set bool Lobby_Menu 1

execute if score selection Lobby_Menu matches 0 run say ERROR

execute if score selection Lobby_Menu matches 4 run scoreboard players set @s Lobby_Menu 0