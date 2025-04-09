execute at @s rotated ~180 0 run function kits:noctis/warpparticles
execute at @s rotated ~ 0 run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.enderman.teleport neutral @a[distance=..30] ~ ~ ~ 5 1.25 1
scoreboard players set @s kits.ability1CD 18
scoreboard players set @s kits.ability2CD 0
scoreboard players remove @s[predicate=kits:items/noctis/wisein] kits.timer 25
scoreboard players remove @s[predicate=kits:items/noctis/tallin] kits.timer 30
scoreboard players remove @s[predicate=kits:items/noctis/oraclein] kits.timer 20
damage @s[scores={kits.timer=..-1}] 3 bypass:player_attack_true_damage_no_kb by @s
scoreboard players set @s[scores={kits.timer=..-1}] kits.timer 0
effect give @p[tag=Noctis] minecraft:resistance 1 4 true
schedule function kits:noctis/removeres 5t replace
