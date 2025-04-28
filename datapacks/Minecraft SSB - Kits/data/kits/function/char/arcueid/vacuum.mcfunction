tp @s[tag=!facingArcueidVacuum] ~ ~ ~ facing entity @p[tag=Arcueid]
tp @s[tag=ArcueidVacuumThrown,tag=facingArcueidVacuum] ^ ^ ^-1
tag @s[tag=!facingArcueidVacuum] add facingArcueidVacuum

scoreboard players add @s kits.timer 1
tag @s[scores={kits.timer=3}] remove ArcueidVacuumThrown
execute as @s[scores={kits.timer=6..}] at @s run tp @s ~ ~ ~ ~50 ~

execute at @s[tag=ArcueidVacuumThrown] run particle sweep_attack ~ ~1 ~ 0 0 0 0 1 force
execute at @s[tag=!ArcueidVacuumThrown] run particle dust{color:[1.000,0.000,0.502],scale:2} ^ ^1 ^2 0 0 0 0 10 force
execute at @s[tag=!ArcueidVacuumThrown] run particle dust{color:[1.000,0.000,0.502],scale:2} ^ ^1 ^-1 0 0 0 0 10 force
execute as @e[distance=..2.5,tag=!Arcueid,tag=!InLabyrinth] at @s run damage @s 0.75 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=ArcueidVacuum,limit=1,sort=nearest] from @p[tag=Arcueid]
