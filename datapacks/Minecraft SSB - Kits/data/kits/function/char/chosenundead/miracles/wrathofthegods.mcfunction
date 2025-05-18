scoreboard players remove @s kits.timer4 50
function kits:char/chosenundead/usestamina {stamina: 25}

function kits:char/chosenundead/miracles/wrath_of_the_gods/play {"Inaccuracy":"150","Speed":"100","Limit":"5","R":"100","G":"100","B":"100","Size":"50"}
particle minecraft:flash ~ ~1 ~ 0 0 0 0 3 force

execute as @e[distance=..6.5,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function kits:char/chosenundead/miracles/wrathofthegodsdamage

playsound minecraft:entity.breeze.jump neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:block.beacon.power_select neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
scoreboard players set @s kits.ability5CD 0