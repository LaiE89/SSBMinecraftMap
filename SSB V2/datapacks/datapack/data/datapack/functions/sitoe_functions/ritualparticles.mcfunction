execute if entity @s[scores={Timer=10..}] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[scores={Timer=10}] run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..50] ~ ~ ~ 10 0 1
execute if entity @s[scores={Timer=10..150}] run particle minecraft:falling_dust minecraft:white_wool ^ ^ ^5 0.1 0.1 0.1 0 5
execute if entity @s[scores={Timer=10..150}] run particle minecraft:falling_dust minecraft:white_wool ^ ^ ^-3 0.1 0.1 0.1 0 5
execute if entity @s[scores={Timer=40}] run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..50] ~ ~ ~ 10 0 1
execute if entity @s[scores={Timer=40..150}] run particle minecraft:falling_dust minecraft:lime_wool ^ ^2 ^6 0 0.5 0 0 20
execute if entity @s[scores={Timer=70}] run playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..50] ~ ~ ~ 10 0 1
execute if entity @s[scores={Timer=70..150}] run particle minecraft:falling_dust minecraft:cyan_wool ^ ^4 ^4 0 1.5 0 0 20
execute if entity @s[scores={Timer=100}] run particle minecraft:flash ~ ~2 ~ 0 0 0 0 10
execute if entity @s[scores={Timer=100}] run playsound minecraft:item.trident.thunder neutral @a[distance=..50] ~ ~ ~ 10 1 1
execute if entity @s[scores={Timer=100..150}] run particle minecraft:falling_dust minecraft:blue_wool ^ ^6 ^1 0 2.5 0 0 20

execute if entity @s[scores={Timer=150..}] run tag @e[tag=SitoeGettingRitualed] remove SitoeGettingRitualed
execute if entity @s[scores={Timer=150..}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={Timer=150..}] run kill @e[type=armor_stand,tag=SitoeGettingRitualedDamage]

execute if entity @s[scores={Timer=..99}] run effect give @e[distance=..6,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Sitoe,tag=!InLabyrinth] minecraft:slowness 1 2 true
execute if entity @s[scores={Timer=100..}] unless entity @e[tag=SitoeGettingRitualed] as @e[distance=..6,sort=nearest,limit=1,type=!experience_orb,type=!area_effect_cloud,type=!armor_stand,type=!egg,type=!leash_knot,type=!painting,type=!#arrows,type=!snowball,type=!fireball,type=!small_fireball,type=!ender_pearl,type=!eye_of_ender,type=!experience_bottle,type=!item_frame,type=!item,type=!tnt,type=!falling_block,type=!firework_rocket,type=!shulker_bullet,type=!dragon_fireball,type=!evoker_fangs,type=!minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!hopper_minecart,type=!spawner_minecart,type=!llama_spit,tag=!Sitoe,tag=!InLabyrinth] at @s run function datapack:sitoe_functions/ritualdamage
execute if entity @s[scores={Timer=100..}] if entity @e[tag=SitoeGettingRitualed] unless entity @e[type=armor_stand,tag=SitoeGettingRitualedDamage] run summon armor_stand ~ ~ ~ {Tags:["SitoeGettingRitualedDamage"],Invisible:1,Invulnerable:1,DisabledSlots:2039583}