execute if entity @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:nether_star",tag:{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"},Unbreakable:1}}]}] run function datapack:lobby_functions/givingmenu

execute if entity @s[tag=!InMenu,nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"},Unbreakable:1}}}] run function datapack:lobby_functions/summonmenu
execute if entity @s[tag=InMenu,nbt=!{SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"},Unbreakable:1}}}] run function datapack:lobby_functions/killingmenu

execute if entity @s[tag=InMenu,nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"},Unbreakable:1}}}] run tp @e[type=armor_stand,tag=MenuMove,limit=1,sort=nearest] ~ ~0.5 ~

function datapack:lobby_functions/menu/check