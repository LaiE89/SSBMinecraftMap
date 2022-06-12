stopsound @a[gamemode=!spectator,tag=LabyrinthCinder,scores={BossTimer=0}]
scoreboard players add @a[gamemode=!spectator,tag=LabyrinthCinder,scores={BossTimer=0}] BossKills 1
scoreboard players add @a[gamemode=!spectator,tag=LabyrinthCinder,scores={BossTimer=0}] KilledBoss 1
title @a[gamemode=!spectator,tag=LabyrinthCinder,scores={BossTimer=0}] title {"text":"Soul of Cinders is Dead","bold":true,"color":"dark_red"}
title @a[gamemode=!spectator,tag=LabyrinthCinder,scores={BossTimer=0}] subtitle {"text":"You Have 15 Seconds to Leave","color":"red"}
scoreboard players add @a[gamemode=!spectator,tag=LabyrinthCinder] BossTimer 1