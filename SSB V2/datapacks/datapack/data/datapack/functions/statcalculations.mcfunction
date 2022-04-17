# Calculating SSB Stats
execute as @a at @s run scoreboard players operation @s SSBWinrate = @s SSBWins
execute as @a at @s run scoreboard players set @s SSBWinrateScale 100
execute as @a at @s run scoreboard players operation @s SSBWinrate *= @s SSBWinrateScale
execute as @a at @s run scoreboard players operation @s SSBWinrate /= @s SSBGames