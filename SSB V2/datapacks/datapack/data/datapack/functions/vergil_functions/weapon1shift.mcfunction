tag @s add VergilDevilTrigger
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Vergil\"}"}}
effect give @s minecraft:regeneration 15 2 true
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Devil Trigger\"}"},Enchantments:[{id:protection,lvl:2}],SkullOwner:{Id:[I;1927857700,-931839921,-1471013991,1714197496],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzU3ZGRkOGM5NGIyZmY1Y2YyZjUxODhmNDYxMmI1MjNmNTQzNGI5ZjE3MjYzYTY3ODExYTM5ZDg1NDA3NTQwNiJ9fX0="}]}}} 1
playsound minecraft:block.end_portal.spawn neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
particle minecraft:flash ~ ~-1 ~ 0 0 0 0 10
particle minecraft:dust 0 0 2 1 ~ ~1.5 ~ 0.5 1 0.5 1 200
tag @s add VergilDash
scoreboard players set @s Ability4CD 0