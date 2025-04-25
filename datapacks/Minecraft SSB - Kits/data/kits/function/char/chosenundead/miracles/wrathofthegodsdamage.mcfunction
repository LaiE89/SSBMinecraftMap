damage @s 12 bypass:player_attack by @s from @p[tag=ChosenUndead]
scoreboard players set @s kits.raycastTick 0
execute at @s facing entity @p[tag=ChosenUndead] feet positioned ~ ~1.5 ~ run function kits:char/chosenundead/miracles/wrathofthegodskb
