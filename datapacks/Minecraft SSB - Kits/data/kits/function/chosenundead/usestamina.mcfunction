scoreboard players set @s kits.timer2 0
tag @s add ChosenUndeadResting
$scoreboard players remove @s kits.timer $(stamina)
scoreboard players set @s[scores={kits.timer=..0}] kits.timer 0
