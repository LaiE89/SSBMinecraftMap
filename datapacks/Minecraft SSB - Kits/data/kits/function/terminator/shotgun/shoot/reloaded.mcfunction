## When Terminator Finished Reloading
# Stops animation
summon item ^ ^1 ^0.5 {Age:5990,PickupDelay:32767,Motion:[0.1,0.2,0.1],Item:{id:"minecraft:smoker",count:1}}
effect clear @s minecraft:mining_fatigue

# Reset scores
scoreboard players set @s kits.timer 2
scoreboard players reset @s kits.ability2CD
