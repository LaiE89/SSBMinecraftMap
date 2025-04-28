scoreboard players set @s kits.timer2 0
tag @s add DenjiChainsaw
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 1 0.5 0 150 force
playsound minecraft:entity.bee.death neutral @a[distance=..50] ~ ~ ~ 10 0 1
effect give @s regeneration 2 4 true
effect give @s speed 2 4 true
clear @s minecraft:player_head[custom_name="Denji"]
item replace entity @s armor.head with player_head[custom_name="Chainsaw Devil",attribute_modifiers=[{id:"armor.head.denji",type:"armor",amount:4,operation:"add_value",slot:"head"},{id:"tough.head.denji",type:"armor_toughness",amount:4,operation:"add_value",slot:"head"}],profile={id:[I;424438769,1260012868,-1886423588,120672850],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM4YTI1MTc2MjA1ZmU2NTcwMTFmMDE2MDUzM2I4N2E1MDFmMzQ2MTUyMzBmZTllOGUyMDI0NDNiMjE5N2MxMiJ9fX0="}]}] 1
scoreboard players set @s kits.timer 0
