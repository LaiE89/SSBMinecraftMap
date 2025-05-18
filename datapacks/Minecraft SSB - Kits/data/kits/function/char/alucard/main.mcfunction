# Souls
execute as @e[type=armor_stand,tag=AlucardSoul] at @s run function kits:char/alucard/souls

# Ability CDs
title @s[tag=!AlucardReloading] actionbar ["",{"text":"Jackal:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer3"},"color":"dark_red"},{"text":"/5","color":"dark_red"},{"text":" || "},{"text":"Souls: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"},{"text":" || "},{"text":"Shadow Wraith:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability2CD"}},{"text":"/500","color":"white"}]
title @s[tag=AlucardReloading] actionbar ["",{"text":"Jackal:","color":"dark_red"},{"text":" "},{"text":"RELOADING","color":"dark_red"},{"text":" || "},{"text":"Souls: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/10","color":"gold"},{"text":" || "},{"text":"Shadow Wraith:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability2CD"}},{"text":"/500","color":"white"}]

# Jackal Shoot
scoreboard players add @s[scores={kits.ability1CD=..9}] kits.ability1CD 1
execute as @s[tag=!AlucardWraith,tag=!AlucardReloading,scores={kits.criterion.COS=1..}] as @s[scores={kits.ability1CD=10..},predicate=kits:items/alucard/jackal] if score @s kits.timer3 matches 1.. at @s run function kits:char/alucard/weapon1cos
execute as @e[type=area_effect_cloud,tag=AlucardJackalBullet] at @s run function kits:char/alucard/jackal_bullet/main
execute if entity @s[tag=AlucardReloading] at @s run function kits:char/alucard/reloading

# Shadow Wraith
scoreboard players add @s[scores={kits.ability2CD=..499}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=500..},predicate=kits:items/alucard/jackal] at @s run function kits:char/alucard/weapon1shift
execute as @s[tag=AlucardWraith] at @s run function kits:char/alucard/wraith 

# Demon Spikes
scoreboard players add @s[scores={kits.ability4CD=..14}] kits.ability4CD 1
execute as @s[scores={kits.ability4CD=15..},predicate=kits:items/alucard/dark_arts] as @s[scores={kits.criterion.COS=1..}] as @s[scores={kits.timer2=3..}] at @s run function kits:char/alucard/weapon2cos
execute as @e[type=area_effect_cloud,tag=AlucardSpikes] at @s run function kits:char/alucard/spikesparticles

# Baskerville
scoreboard players add @s[scores={kits.ability3CD=..14}] kits.ability3CD 1
execute as @s[gamemode=!spectator,scores={kits.ability3CD=15..},predicate=kits:items/alucard/dark_arts] as @s[scores={kits.criterion.shift=1..}] as @s[scores={kits.timer2=6..}] at @s run function kits:char/alucard/weapon2shift

execute as @e[type=armor_stand,tag=AlucardBaskerville] at @s run function kits:char/alucard/baskerville
execute as @e[type=wandering_trader,tag=AlucardBaskerville] at @s run function kits:char/alucard/baskervillepathfind
