execute if entity @s[scores={kits.timer2=3..}] run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..15] ~ ~ ~ 3 1 1
scoreboard players set @s[scores={kits.timer2=3..}] kits.raycastTick 0
execute at @s[scores={kits.timer2=3..}] run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute at @s[scores={kits.timer2=3..}] positioned ~ ~1.5 ~ run function kits:char/kaneki/kanekipassive4
effect give @s[scores={kits.timer2=3..}] minecraft:slow_falling 1 0 true

scoreboard players operation @s kits.ability1CD += @s kits.timer2
scoreboard players set @s[tag=!KanekiKakuja,scores={kits.ability1CD=5..}] kits.ability1CD 4
scoreboard players set @s[tag=KanekiKakuja,scores={kits.ability1CD=7..}] kits.ability1CD 6

playsound minecraft:block.coral_block.break neutral @a[distance=..15] ~ ~ ~ 3 0 1
scoreboard players set @s kits.ability2CD 0
kill @e[type=area_effect_cloud,tag=KanekiKagune]
