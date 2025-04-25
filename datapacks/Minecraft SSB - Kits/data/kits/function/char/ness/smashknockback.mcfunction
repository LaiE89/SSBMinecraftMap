particle explosion ~ ~1 ~ 0.2 0.2 0.2 0 10 force
damage @s 6 bypass:player_attack by @p[tag=Ness]
tag @s add NessKnockback
scoreboard players set @p[tag=Ness] kits.raycastTick 0
execute as @p[tag=Ness] at @s positioned ~ ~ ~ rotated ~ 0 run function kits:char/ness/nesspassive3
tag @e[tag=NessKnockback] remove NessKnockback
