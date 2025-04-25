damage @s 6 bypass:player_attack by @p[tag=Laieth]
scoreboard players set @s kits.raycastTick 0
execute at @s facing entity @p[tag=Laieth] feet positioned ~ ~1.5 ~ run function kits:char/laieth/cards/mirrorforceknockback
