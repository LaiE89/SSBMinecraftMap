scoreboard players set @s Timer2 0
kill @e[type=armor_stand,tag=KanekiKagune]
scoreboard players set @s Ability1CD 5
playsound minecraft:entity.wither.break_block neutral @a[distance=..50] ~ ~ ~ 10 0.5 1
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.5 1 0.5 0 200
tag @s add KanekiKakuja
effect give @s regeneration 15 1 true
effect give @s speed 3 4 true
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Kaneki\"}"}}
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Kakuja\"}"},Enchantments:[{id:protection,lvl:3}],SkullOwner:{Id:[I;-16977185,811288703,-1145564788,-520051058],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU0ZWEzNTgzYTBhNmM1NGUxYTI3ZGI2MDI5YjgzMjkwM2Y5MGFiOTZjMTg1YjYwMjkwN2RjNGQxN2VmY2M2MSJ9fX0="}]}}} 1
scoreboard players set @s Ability3CD 0
