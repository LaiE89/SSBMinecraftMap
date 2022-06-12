# Effects inside the lobby
effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:weakness 1 9 true
clear @s[nbt={Inventory:[{Slot:8b,id:"minecraft:nether_star",tag:{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"},Unbreakable:1}}]}] minecraft:nether_star{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"}}
execute unless entity @a[x=-186,y=75,z=-29,dx=-12,dy=-3,dz=-10] run function datapack:pvp_functions/queue/killingthingsinlobby

# Checking for Players in Room
execute store result score @a[tag=Player] PVP_InRoom run execute if entity @a[tag=Player,x=-198,y=72,z=-41,dx=12,dy=3,dz=-10]
execute if entity @a[tag=Player,scores={PVP_InRoom=2..}] run tag @a[tag=Player] add PrepareForBattle
execute if entity @a[tag=Player,scores={PVP_InRoom=2}] run function datapack:pvp_functions/queue/2playersinroom
execute if entity @a[tag=Player,scores={PVP_InRoom=1}] run function datapack:pvp_functions/queue/1playerinroom

# When a new player enters the room
scoreboard players add @a[scores={PVP_InRoom=3},tag=Player] PVP_PrepReset 1
scoreboard players add @a[scores={PVP_InRoom=4},tag=Player] PVP_PrepReset2 1

execute at @a[scores={PVP_PrepReset=3}] run playsound minecraft:block.note_block.pling neutral @a[scores={PVP_PrepReset=3}]
scoreboard players reset @a[tag=Player,scores={PVP_PrepReset=2}] PVP_PrepTime

execute at @a[scores={PVP_PrepReset2=3}] run playsound minecraft:block.note_block.pling neutral @a[scores={PVP_PrepReset2=3}]
scoreboard players reset @a[tag=Player,scores={PVP_PrepReset2=2}] PVP_PrepTime

# Countdown
scoreboard players add @a[tag=PrepareForBattle] PVP_PrepTime 1
title @a[tag=PrepareForBattle,scores={PVP_PrepTime=5}] title {"text":"5","color":"red"}
title @a[tag=PrepareForBattle,scores={PVP_PrepTime=35}] title {"text":"4","color":"red"}
title @a[tag=PrepareForBattle,scores={PVP_PrepTime=65}] title {"text":"3","color":"red"}
title @a[tag=PrepareForBattle,scores={PVP_PrepTime=95}] title {"text":"2","color":"red"}
title @a[tag=PrepareForBattle,scores={PVP_PrepTime=125}] title {"text":"1","color":"red"}
title @a[tag=PrepareForBattle,scores={PVP_PrepTime=155}] title {"text":"Start","color":"red"}

scoreboard players add @a[tag=Player,tag=PrepareForBattle,scores={PVP_PrepTime=160..}] SSBGames 1
execute if entity @a[tag=PrepareForBattle,scores={PVP_PrepTime=160..}] run function datapack:pvp_functions/queue/battlestart 
tp @a[tag=Player1,tag=PrepareForBattle,scores={PVP_PrepTime=160..}] -171 116 -58 facing -192 116 -58
tp @a[tag=Player2,tag=PrepareForBattle,scores={PVP_PrepTime=160..}] -214 116 -58 facing -192 116 -58
tp @a[tag=Player3,tag=PrepareForBattle,scores={PVP_PrepTime=160..}] -192 116 -80 facing -192 116 -58
tp @a[tag=Player4,tag=PrepareForBattle,scores={PVP_PrepTime=160..}] -192 116 -37 facing -192 116 -58
execute as @a[tag=PrepareForBattle,scores={PVP_PrepTime=160..}] at @s run function datapack:pvp_functions/queue/battlestart2