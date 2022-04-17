stopsound @a[gamemode=!spectator,tag=LabyrinthTunnel,scores={BossTimer=0}]
scoreboard players add @a[gamemode=!spectator,tag=LabyrinthTunnel,scores={BossTimer=0}] BossKills 1
scoreboard players add @a[gamemode=!spectator,tag=LabyrinthTunnel,scores={BossTimer=0}] KilledBoss 1
title @a[gamemode=!spectator,tag=LabyrinthTunnel,scores={BossTimer=0}] title {"text":"Zodd is Dead","bold":true,"color":"dark_red"}
title @a[gamemode=!spectator,tag=LabyrinthTunnel,scores={BossTimer=0}] subtitle {"text":"You Have 15 Seconds to Leave","color":"red"}
scoreboard players add @a[gamemode=!spectator,tag=LabyrinthTunnel] BossTimer 1