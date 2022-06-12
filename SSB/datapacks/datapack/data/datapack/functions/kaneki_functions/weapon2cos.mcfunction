execute if entity @s[scores={Timer2=3..}] run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..15] ~ ~ ~ 3 1 1
scoreboard players set @s[scores={Timer2=3..}] RaycastTimer 0
execute at @s[scores={Timer2=3..}] positioned ~ ~1.5 ~ run function datapack:kaneki_functions/kanekipassive4
effect give @s[scores={Timer2=3..}] minecraft:slow_falling 1 0 true

scoreboard players add @s[scores={Timer2=1}] Ability1CD 1
scoreboard players add @s[scores={Timer2=2}] Ability1CD 2
scoreboard players add @s[scores={Timer2=3}] Ability1CD 3
scoreboard players add @s[scores={Timer2=4}] Ability1CD 4
scoreboard players add @s[scores={Timer2=5}] Ability1CD 5
scoreboard players add @s[scores={Timer2=6}] Ability1CD 6

playsound minecraft:block.coral_block.break neutral @a[distance=..15] ~ ~ ~ 3 0 1
scoreboard players set @s Ability2CD 0
kill @e[type=armor_stand,tag=KanekiKagune]