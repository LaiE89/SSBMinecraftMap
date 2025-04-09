## Open Stats Page
execute as @p run function system:utilities/ui/player/close
tellraw @p [{"text":"---------------","color":"gray"}]
tellraw @p [{"selector":"@p","color":"green"}]
tellraw @p [{"text":"Wins: ","color":"white"},{"score":{"name":"@p","objective":"system.stats.win"},"color":"gray"}]
tellraw @p [{"text":"Losses: ","color":"white"},{"score":{"name":"@p","objective":"system.stats.loss"},"color":"gray"}]
tellraw @p [{"text":"---------------","color":"gray"}]