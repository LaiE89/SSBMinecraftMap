# Ability CDs
title @s[tag=!VergilDevilTrigger] actionbar ["",{"text":"Judgement Cut:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"aqua"},{"text":"/3","color":"aqua"},{"text":" || ","color":"white"},{"text":"Summoned Swords:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Round Trip:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Devil Trigger:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability4CD"}},{"text":"/500","color":"white"}]
title @s[tag=VergilDevilTrigger] actionbar ["",{"text":"Judgement Cut:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"aqua"},{"text":"/3","color":"aqua"},{"text":" || ","color":"white"},{"text":"Summoned Swords:","color":"dark_aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Round Trip:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/300","color":"white"},{"text":" || ","color":"white"},{"text":"Devil Trigger Time: ","color":"dark_red"},{"color":"dark_red","score":{"name":"@s","objective":"kits.timer2"}},{"text":"/200","color":"dark_red"}]

# Judgement Cut
execute as @s[scores={kits.ability1CD=..2}] run scoreboard players add @s kits.ability5CD 1
scoreboard players add @s[scores={kits.ability5CD=100..}] kits.ability1CD 1
scoreboard players reset @s[scores={kits.ability5CD=100..}] kits.ability5CD

# Hold shift stuff
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff

execute if score @s kits.ability1CD matches 1.. if entity @s[tag=!VergilCharge,tag=!VergilJudgementCut,tag=!VergilJudgementCutEnd,predicate=kits:items/vergil/yamato,gamemode=!spectator,scores={kits.criterion.shift=1..}] run function kits:char/vergil/judgement_cut/charge
scoreboard players add @s[tag=VergilCharge,predicate=kits:items/vergil/yamato,gamemode=!spectator,scores={kits.criterion.shift=1..}] kits.criterion.shiftOn 1
execute if score @s kits.ability1CD matches 1.. if score @s kits.criterion.shiftOn matches 100.. if entity @s[tag=VergilCharge,gamemode=!spectator] at @s run function kits:char/vergil/weapon1shift
execute if score @s kits.ability1CD matches 1.. if entity @s[scores={kits.criterion.shiftOff=2..},tag=VergilCharge,gamemode=!spectator] at @s run function kits:char/vergil/weapon1shift

execute if score @s kits.criterion.shiftOn matches 1 at @s run playsound minecraft:item.armor.equip_wolf neutral @a[distance=..30] ~ ~ ~ 2 2 1
execute if score @s kits.criterion.shiftOn matches 1..59 at @s run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 10 force
execute if score @s kits.criterion.shiftOn matches 60 at @s run playsound minecraft:entity.breeze.inhale neutral @a[distance=..30] ~ ~ ~ 2 2 1
execute if score @s kits.criterion.shiftOn matches 60 at @s run particle flash ~ ~ ~ 0 0 0 0 1 force
execute if score @s kits.criterion.shiftOn matches 60.. at @s run particle dust{color:[0.000,0.000,2.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 10 force

execute as @s[tag=VergilJudgementCutEnd] at @s run function kits:char/vergil/judgement_cut_end/judgementcutendmain
execute as @s[tag=VergilJudgementCut] at @s run function kits:char/vergil/judgement_cut/judgementcutmain

# End hold shift stuff
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOff

# Summoned Sword
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[tag=!VergilJudgementCutEnd,tag=!VergilJudgementCut,tag=!VergilCharge,scores={kits.ability2CD=100..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/vergil/yamato] at @s run function kits:char/vergil/weapon1cos
execute as @e[type=area_effect_cloud,tag=summonedswords] at @s run function kits:char/vergil/summonedsword
execute as @e[type=area_effect_cloud,tag=summonedswords,tag=!summonedswordsdelay,limit=2,sort=arbitrary] at @s if entity @e[type=area_effect_cloud,tag=summonedswordsdestination] at @s facing entity @e[type=area_effect_cloud,tag=summonedswordsdestination,limit=1,sort=nearest] feet run teleport @s ^ ^ ^2.5

# Force Edge
scoreboard players add @s[scores={kits.ability3CD=..299}] kits.ability3CD 1
execute as @s[tag=!VergilJudgementCutEnd,tag=!VergilJudgementCut,tag=!VergilCharge,scores={kits.ability3CD=300..}] as @s[scores={kits.criterion.COS=1..},predicate=kits:items/vergil/forceedge] at @s run function kits:char/vergil/weapon2cos
execute as @e[type=armor_stand,tag=forceedge] at @s run function kits:char/vergil/forceedge

# Devil Trigger
scoreboard players add @s[scores={kits.ability4CD=..499}] kits.ability4CD 1
execute as @s[tag=!VergilJudgementCutEnd,tag=!VergilJudgementCut,tag=!VergilCharge,scores={kits.ability4CD=500..}] as @s[scores={kits.criterion.shift=1..},predicate=kits:items/vergil/forceedge,gamemode=!spectator] at @s run function kits:char/vergil/weapon2shift
execute as @e[type=minecraft:area_effect_cloud,tag=VergilSpiralSwords] at @s run function kits:char/vergil/spiralswords
execute as @s[tag=VergilDevilTrigger] run function kits:char/vergil/deviltrigger

# Trick
scoreboard players add @s[tag=VergilInvis] kits.timer3 1
execute as @s[tag=VergilInvis,scores={kits.timer3=20..}] at @s run function kits:char/vergil/trickdone

execute as @s[tag=VergilDash] at @s run function kits:char/vergil/trick
