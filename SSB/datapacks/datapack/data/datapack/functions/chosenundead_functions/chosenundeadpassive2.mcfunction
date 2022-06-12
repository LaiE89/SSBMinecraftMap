scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["DarkSoulsRoll"],Duration:20}
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run scoreboard players set @s Ability1CD 0
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run scoreboard players remove @s Timer7 20
execute if entity @s[scores={RaycastTimer=17}] run summon area_effect_cloud ~ ~ ~ {Tags:["DarkSoulsRoll"],Duration:20}
execute if entity @s[scores={RaycastTimer=17}] run scoreboard players set @s Ability1CD 0
execute if entity @s[scores={RaycastTimer=17}] run scoreboard players remove @s Timer7 20

execute as @s[scores={RaycastTimer=..16}] rotated ~ 0 positioned ^ ^ ^-0.5 run function datapack:chosenundead_functions/chosenundeadpassive2