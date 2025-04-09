## System Setup
scoreboard objectives add system.global dummy

scoreboard objectives add system.stats.win dummy
scoreboard objectives add system.stats.loss dummy

scoreboard objectives add system.kits.id dummy
scoreboard objectives add system.ui.id dummy
scoreboard objectives add system.ui dummy

scoreboard objectives add system.death.timer dummy

scoreboard objectives add system.lives dummy ["",{"text":"Lives","color":"green"}]

# tied to a built-in action
scoreboard objectives add system.criterion.death deathCount
scoreboard objectives add system.criterion.drop minecraft.custom:minecraft.drop
scoreboard objectives add system.criterion.leave custom:minecraft.leave_game
