scoreboard players add @s kits.timer2 1
execute as @e[tag=KratosHookDmg] at @s run tp @e[type=armor_stand,tag=kratoshook,scores={kits.timer2=..8}] ~ ~ ~
execute if entity @s[scores={kits.timer2=9..}] run tp @e[tag=KratosHookDmg] ~ ~1 ~
execute at @s[scores={kits.timer2=9}] run particle explosion ~ ~1 ~ 0 0 0 0 1 force
execute at @s[scores={kits.timer2=9}] run playsound minecraft:item.axe.scrape neutral @a[distance=..30] ~ ~ ~ 10 0.75 1
execute at @s[scores={kits.timer2=9}] run effect give @e[tag=KratosHookDmg] levitation 1 0 true
execute at @s[scores={kits.timer2=10..}] facing entity @p[tag=Kratos] feet run tp @s ^ ^ ^2
execute at @s[scores={kits.timer2=10..}] positioned ~ ~1 ~ if entity @p[tag=Kratos,distance=..3] run function kits:char/kratos/hookend
