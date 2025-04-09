effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:strength 15 0 true
effect give @s minecraft:absorption 15 4 true
clear @s minecraft:player_head[custom_name="Mob"]
item replace entity @s armor.head with player_head[custom_name="???",custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.mob",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={id:[I;-621092242,1408191177,-1814743085,1993557729],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDkwNGQ2MjMyZTI1YzU2YzJjMjFmMjVmOGE3ZjExZGQ3ZGVkODlhZDY2MGE4OGYyMDA5ZGJhNjU2OWE1Y2U3YiJ9fX0="}]}] 1
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..50] ~ ~ ~ 5 1 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..50] ~ ~ ~ 5 1 1
particle flash ~ ~1 ~ 0 0 0 0 10 force
particle sonic_boom ~ ~1 ~ 0.2 0.2 0.2 0 50 force
particle block{block_state:"minecraft:sand"} ~ ~ ~ 3 3 3 0 100 force
playsound minecraft:entity.wither.break_block neutral @a[distance=..50] ~ ~ ~ 10 0 1
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..50] ~ ~ ~ 10 1.5 1
scoreboard players set @s kits.timer3 0
