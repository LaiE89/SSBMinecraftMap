## When Isaac Finished Reloading
# Stops animation
effect clear @s[nbt={active_effects:[{id:"minecraft:mining_fatigue",amplifier:49b}]}] minecraft:mining_fatigue

# Reset scores
scoreboard players remove @s kits.timer2 1
scoreboard players reset @s kits.ability2CD
scoreboard players set @s kits.timer 3
