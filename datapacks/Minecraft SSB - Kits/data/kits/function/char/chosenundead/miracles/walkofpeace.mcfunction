scoreboard players set @s kits.timer6 0
scoreboard players set @s kits.timer7 19
scoreboard players remove @s kits.timer4 75
function kits:char/chosenundead/usestamina {stamina: 100}
tag @s add ChosenUndeadTranquilWalk
execute rotated ~ 90 run function kits:char/chosenundead/miracles/walkofpeaceparticles
playsound minecraft:block.beacon.power_select neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
scoreboard players set @s kits.ability5CD 0
