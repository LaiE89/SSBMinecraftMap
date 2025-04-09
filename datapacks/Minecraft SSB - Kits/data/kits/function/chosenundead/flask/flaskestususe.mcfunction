scoreboard players remove @s kits.timer3 1
execute if score @s kits.timer3 matches 1.. run schedule function kits:chosenundead/flask/flaskestus 1t replace
execute if score @s kits.timer3 matches ..0 run schedule function kits:chosenundead/flask/flaskempty 1t replace
advancement revoke @s only kits:character_specific/chosenundead_estus
