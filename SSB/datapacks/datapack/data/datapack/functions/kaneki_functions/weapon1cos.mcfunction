scoreboard players set @s[tag=!KanekiKakuja] RaycastTimer 0
execute at @s[tag=!KanekiKakuja] positioned ~ ~1.5 ~ run function datapack:kaneki_functions/kanekipassive2
execute at @s[tag=!KanekiKakuja] run playsound minecraft:item.trident.throw neutral @a[distance=..15] ~ ~ ~ 3 0.5 1

scoreboard players set @s[tag=KanekiKakuja] RaycastTimer 0
execute at @s[tag=KanekiKakuja] positioned ~ ~1.5 ~ run function datapack:kaneki_functions/kanekipassive5
execute at @s[tag=KanekiKakuja] run playsound minecraft:entity.witch.throw neutral @a[distance=..20] ~ ~ ~ 3 0.5 1

scoreboard players remove @s Ability1CD 1