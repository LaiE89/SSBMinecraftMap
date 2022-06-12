scoreboard players set @s Timer2 0
tag @s add DenjiChainsaw
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.5 1 0.5 0 150
playsound minecraft:entity.bee.death neutral @a[distance=..50] ~ ~ ~ 10 0 1
effect give @s regeneration 2 4 true
effect give @s speed 2 4 true
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Denji\"}"}}
item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Chainsaw Devil\"}"},Enchantments:[{id:protection,lvl:5}],SkullOwner:{Id:[I;424438769,1260012868,-1886423588,120672850],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM4YTI1MTc2MjA1ZmU2NTcwMTFmMDE2MDUzM2I4N2E1MDFmMzQ2MTUyMzBmZTllOGUyMDI0NDNiMjE5N2MxMiJ9fX0="}]}}} 1
scoreboard players set @s Timer 0