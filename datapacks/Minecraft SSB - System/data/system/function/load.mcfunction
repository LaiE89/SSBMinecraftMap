## Executes on /reload
# description
tellraw @a ["",{"text":"Minecraft SSB","color":"red","bold":true}]
tellraw @a [{"text":"Made by Abian and coldseat","color":"gray"}]

# reset
function system:setup
kill @e[type=!player]
# function system:utilities/ui/reset
# function system:games/ssb/ingame/end
# execute as @a at @s run function system:utilities/player_status/reset