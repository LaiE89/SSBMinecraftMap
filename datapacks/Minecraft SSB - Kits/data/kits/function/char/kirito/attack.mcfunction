scoreboard players add @s kits.timer 1
execute if entity @s[scores={kits.timer=3..}] run schedule function kits:char/kirito/secondattack 8t append
execute if entity @s[scores={kits.timer=3..}] run scoreboard players set @s kits.timer 0

execute if entity @s[tag=KiritoHorizontalSquare] run scoreboard players add @s kits.timer2 1
execute if entity @s[tag=KiritoHorizontalSquare] at @s run playsound minecraft:entity.breeze.deflect neutral @a[distance=..30] ~ ~ ~ 2 0.8 1
execute if entity @s[tag=KiritoHorizontalSquare] if score @s kits.timer2 matches 4.. at @s run function kits:char/kirito/horizontalsquareactivate

scoreboard players add @s[scores={kits.ability1CD=..199}] kits.ability1CD 20
scoreboard players set @s[scores={kits.ability1CD=201..}] kits.ability1CD 200

scoreboard players add @s[scores={kits.ability2CD=..199}] kits.ability2CD 20
scoreboard players set @s[scores={kits.ability2CD=201..}] kits.ability2CD 200

scoreboard players add @s[scores={kits.ability3CD=..699}] kits.ability3CD 20
scoreboard players set @s[scores={kits.ability3CD=701..}] kits.ability3CD 700