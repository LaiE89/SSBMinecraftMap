## Resets everything in system
# message
tellraw @a ["",{"text":"restarting system...","color":"red"}]

# reset
kill @e[type=!player]
function system:utilities/ui/reset
function system:games/ssb/ingame/end
execute as @a at @s run function system:utilities/player_status/reset

# remove system scoreboards
scoreboard objectives remove system.global
scoreboard objectives remove system.local

scoreboard objectives remove system.ssb.deathTimer
scoreboard objectives remove system.ssb.lives

scoreboard objectives remove system.stats.win
scoreboard objectives remove system.stats.loss

scoreboard objectives remove system.kit.id
scoreboard objectives remove system.ui.id
scoreboard objectives remove system.ui

scoreboard objectives remove system.cosmetics.killEffectId
scoreboard objectives remove system.cosmetics.killMessageId

scoreboard objectives remove system.criterion.death
scoreboard objectives remove system.criterion.drop
scoreboard objectives remove system.criterion.leave