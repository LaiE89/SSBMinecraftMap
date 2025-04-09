scoreboard players set @s kits.timer8 0
scoreboard players remove @s kits.timer4 25
effect give @s minecraft:mining_fatigue 1 9 true
function kits:chosenundead/usestamina {stamina: 50}
tag @s add ChosenUndeadSunlightSpear
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40,Tags:["ChosenUndeadSpear","ChosenUndeadSpearCharge"]}
playsound minecraft:block.beacon.power_select neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
scoreboard players set @s kits.ability5CD 0
