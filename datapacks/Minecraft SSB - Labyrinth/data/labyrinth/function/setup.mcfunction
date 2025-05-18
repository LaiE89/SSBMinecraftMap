## System setup
# general
scoreboard objectives add system.global dummy
scoreboard objectives add system.local dummy

# ssb
scoreboard objectives add system.ssb.deathTimer dummy
scoreboard objectives add system.ssb.lives dummy ["",{"text":"Lives","color":"green"}]

# stats
scoreboard objectives add system.stats.win dummy
scoreboard objectives add system.stats.loss dummy

# ui
scoreboard objectives add system.kit.id dummy
scoreboard objectives add system.ui.id dummy
scoreboard objectives add system.ui dummy

# cosmetics
scoreboard objectives add system.cosmetics.killEffectId dummy
scoreboard objectives add system.cosmetics.killMessageId dummy

# tied to a built-in action
scoreboard objectives add system.criterion.death deathCount
scoreboard objectives add system.criterion.drop minecraft.custom:minecraft.drop
scoreboard objectives add system.criterion.leave custom:minecraft.leave_game

# Gamerules
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule randomTickSpeed 0
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule mobGriefing false
gamerule disableRaids true
gamerule doMobSpawning false
