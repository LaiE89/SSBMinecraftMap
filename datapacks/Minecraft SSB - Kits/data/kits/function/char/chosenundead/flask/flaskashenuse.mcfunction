advancement revoke @s only kits:character_specific/chosenundead_ashen
scoreboard players remove @s kits.timer3 1
scoreboard players add @s kits.timer4 50
scoreboard players set @s[scores={kits.timer4=100..}] kits.timer4 100
execute if score @s kits.timer3 matches 1.. run schedule function kits:char/chosenundead/flask/flaskashen 3t replace
execute if score @s kits.timer3 matches ..0 run schedule function kits:char/chosenundead/flask/flaskempty 3t replace

