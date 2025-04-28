advancement revoke @s only kits:character_specific/chosenundead_estus
scoreboard players remove @s kits.timer3 1
execute if score @s kits.timer3 matches 1.. run schedule function kits:char/chosenundead/flask/flaskestus 3t replace
execute if score @s kits.timer3 matches ..0 run schedule function kits:char/chosenundead/flask/flaskempty 3t replace
