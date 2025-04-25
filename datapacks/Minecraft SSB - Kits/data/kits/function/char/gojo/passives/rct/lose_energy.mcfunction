## Loses cursed energy based on damage taken
# initialize
scoreboard players set @s kits.timer3 5

# energy loss scales with damage taken
scoreboard players operation @s kits.timer2 = @s kits.criterion.damage
scoreboard players operation @s kits.timer2 /= @s kits.timer3

# apply energy loss
scoreboard players operation @s kits.ability1CD -= @s kits.timer2
execute if score @s kits.ability1CD matches ..0 run scoreboard players set @s kits.ability1CD 0

# reset
scoreboard players reset @s kits.timer2
scoreboard players reset @s kits.timer3