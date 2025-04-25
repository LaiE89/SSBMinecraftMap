## Open stats page
execute as @p run function system:utilities/ui/player/close
tellraw @p [{"text":"---------------","color":"gray"}]
tellraw @p [{"selector":"@p","color":"green"}]
tellraw @p [{"text":"Wins: ","color":"white"},{"score":{"name":"@p","objective":"stats.win"},"color":"gray"}]
tellraw @p [{"text":"Losses: ","color":"white"},{"score":{"name":"@p","objective":"stats.loss"},"color":"gray"}]
tellraw @p [{"text":"---------------","color":"gray"}]