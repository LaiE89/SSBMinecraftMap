scoreboard players set @s[tag=!KanekiKakuja] kits.raycastTick 0
execute at @s[tag=!KanekiKakuja] positioned ~ ~1.5 ~ run function kits:char/kaneki/kanekipassive2

scoreboard players set @s[tag=KanekiKakuja] kits.raycastTick 0
execute at @s[tag=KanekiKakuja] positioned ~ ~1.5 ~ run function kits:char/kaneki/kanekipassive5

execute at @s run playsound minecraft:entity.witch.throw neutral @a[distance=..20] ~ ~ ~ 3 0.5 1

scoreboard players remove @s kits.ability1CD 1
