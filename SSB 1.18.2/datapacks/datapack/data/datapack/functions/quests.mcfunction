### Quests 1 ###
scoreboard players add @a[tag=Player,tag=Quest1,tag=!Quest1Number2Completed,scores={PVP_Winner=1}] QuestSSBWins 1
tellraw @a[tag=Quest1,tag=!Quest1Number2Completed,scores={QuestSSBWins=5..}] {"text":"You completed the \"Win 5 SSB Games\" Quest!!! Go to the mail to claim your reward!","bold":true,"color":"green"}
execute as @a[tag=Quest1,tag=!Quest1Number2Completed,scores={QuestSSBWins=5..}] at @s run scoreboard players add @s Drop_LuckyBlock 1
execute as @a[tag=Quest1,tag=!Quest1Number2Completed,scores={QuestSSBWins=5..}] at @s run tag @s add Quest1Number2Completed
scoreboard players reset @a[scores={QuestSSBWins=5..}] QuestSSBWins

scoreboard players add @a[tag=InLabyrinth,tag=Quest1,tag=!Quest1Number1Completed,scores={Basic_Kills=1}] QuestLabyKills 1
tellraw @a[tag=Quest1,tag=!Quest1Number1Completed,scores={QuestLabyKills=50..}] {"text":"You completed the \"Kill 50 Monsters in the Labyrinth\" Quest!!! Go to the mail to claim your reward!","bold":true,"color":"green"}
execute as @a[tag=Quest1,tag=!Quest1Number1Completed,scores={QuestLabyKills=50..}] at @s run scoreboard players add @s Drop_LuckyBlock 1
execute as @a[tag=Quest1,tag=!Quest1Number1Completed,scores={QuestLabyKills=50..}] at @s run tag @s add Quest1Number1Completed
scoreboard players reset @a[scores={QuestLabyKills=50..}] QuestLabyKills

scoreboard players add @a[tag=InLabyrinth,tag=Quest1,tag=!Quest1Number3Completed,scores={KilledBoss=1..}] QuestBossKill 1
tellraw @a[tag=Quest1,tag=!Quest1Number3Completed,scores={QuestBossKill=1..}] {"text":"You completed the \"Kill a Boss\" Quest!!! Go to the mail to claim your reward!","bold":true,"color":"green"}
execute as @a[tag=Quest1,tag=!Quest1Number3Completed,scores={QuestBossKill=1..}] at @s run scoreboard players add @s Drop_LuckyBlock 1
execute as @a[tag=Quest1,tag=!Quest1Number3Completed,scores={QuestBossKill=1..}] at @s run tag @s add Quest1Number3Completed
scoreboard players reset @a[scores={QuestBossKill=1..}] QuestBossKill
scoreboard players reset @a[scores={KilledBoss=1..}] KilledBoss