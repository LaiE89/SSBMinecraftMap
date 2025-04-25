## Terminate Passive When Damaging An Enemy
# Lowers fast forward cooldown
scoreboard players add @s kits.ability3CD 30
scoreboard players set @s[scores={kits.ability3CD=201..}] kits.ability3CD 200

# Increases hasta la vista percentage
scoreboard players add @s kits.timer3 5
scoreboard players set @s[scores={kits.timer3=101..}] kits.timer3 100
