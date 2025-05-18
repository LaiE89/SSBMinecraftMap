scoreboard players add @s kits.raycastTick 1
execute positioned ~ ~ ~ as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth,tag=!ChosenUndeadStampSlashed] at @s run function kits:char/chosenundead/stamp/slashdamage
execute as @s[scores={kits.raycastTick=..8}] positioned ^ ^ ^0.5 run function kits:char/chosenundead/stamp/raycastdamage
