# Effects inside the lobby
effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:weakness 1 9 true
clear @s[nbt={Inventory:[{Slot:8b,id:"minecraft:nether_star",tag:{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"},Unbreakable:1}}]}] minecraft:nether_star{display:{Name:"[{\"text\":\"Lobby Menu\",\"italic\":false}]"}}
execute unless entity @a[x=-186,y=75,z=-29,dx=-12,dy=-3,dz=-10] run function datapack:pvp_functions/queue/killingthingsinlobby

# Checking for Players in Room
execute store result score @a[tag=Player] PlayersInRoom run execute if entity @a[tag=Player,x=-198,y=72,z=-41,dx=12,dy=3,dz=-10]
execute if entity @a[tag=Player,scores={PlayersInRoom=2..}] run tag @a[tag=Player] add PrepareForBattle
execute if entity @a[tag=Player,scores={PlayersInRoom=2}] run function datapack:pvp_functions/queue/2playersinroom
execute if entity @a[tag=Player,scores={PlayersInRoom=1}] run function datapack:pvp_functions/queue/1playerinroom

# When a new player enters the room
scoreboard players add @a[scores={PlayersInRoom=3},tag=Player] BattleCDReset 1
scoreboard players add @a[scores={PlayersInRoom=4},tag=Player] BattleCDReset2 1

execute at @a[scores={BattleCDReset=3}] run playsound minecraft:block.note_block.pling neutral @a[scores={BattleCDReset=3}]
scoreboard players reset @a[tag=Player,scores={BattleCDReset=2}] BattleCountdown

execute at @a[scores={BattleCDReset2=3}] run playsound minecraft:block.note_block.pling neutral @a[scores={BattleCDReset2=3}]
scoreboard players reset @a[tag=Player,scores={BattleCDReset2=2}] BattleCountdown

# Countdown
scoreboard players add @a[tag=PrepareForBattle] BattleCountdown 1
title @a[tag=PrepareForBattle,scores={BattleCountdown=5}] title {"text":"5","color":"red"}
title @a[tag=PrepareForBattle,scores={BattleCountdown=35}] title {"text":"4","color":"red"}
title @a[tag=PrepareForBattle,scores={BattleCountdown=65}] title {"text":"3","color":"red"}
title @a[tag=PrepareForBattle,scores={BattleCountdown=95}] title {"text":"2","color":"red"}
title @a[tag=PrepareForBattle,scores={BattleCountdown=125}] title {"text":"1","color":"red"}
title @a[tag=PrepareForBattle,scores={BattleCountdown=155}] title {"text":"Start","color":"red"}

scoreboard players add @a[tag=Player,tag=PrepareForBattle,scores={BattleCountdown=160..}] SSBGames 1
execute if entity @a[tag=PrepareForBattle,scores={BattleCountdown=160..}] run function datapack:pvp_functions/queue/battlestart 
tp @a[tag=Player1,tag=PrepareForBattle,scores={BattleCountdown=160..}] -171 116 -58 facing -192 116 -58
tp @a[tag=Player2,tag=PrepareForBattle,scores={BattleCountdown=160..}] -214 116 -58 facing -192 116 -58
tp @a[tag=Player3,tag=PrepareForBattle,scores={BattleCountdown=160..}] -192 116 -80 facing -192 116 -58
tp @a[tag=Player4,tag=PrepareForBattle,scores={BattleCountdown=160..}] -192 116 -37 facing -192 116 -58
execute as @a[tag=PrepareForBattle,scores={BattleCountdown=160..}] at @s run function datapack:pvp_functions/queue/battlestart2