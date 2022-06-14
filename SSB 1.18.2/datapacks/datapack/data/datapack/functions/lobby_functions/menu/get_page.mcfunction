scoreboard players set bool Lobby_Menu 0

### expand for new pages ###
execute store success score bool Lobby_Menu run clear @s #datapack:chest_menu{page:0} 0
execute if score bool Lobby_Menu matches 1 run scoreboard players set @s Lobby_Menu 0
execute store success score bool Lobby_Menu run clear @s #datapack:chest_menu{page:1} 0
execute if score bool Lobby_Menu matches 1 run scoreboard players set @s Lobby_Menu 1
execute store success score bool Lobby_Menu run clear @s #datapack:chest_menu{page:2} 0
execute if score bool Lobby_Menu matches 1 run scoreboard players set @s Lobby_Menu 2