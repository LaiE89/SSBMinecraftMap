scoreboard players add @s kits.timer 1
effect give @s minecraft:slowness 2 9 true
attribute @s[scores={kits.timer=1}] minecraft:attack_damage modifier add damage.swordsdance.cynthia -20 add_value
execute if score @s kits.timer matches 1 run summon area_effect_cloud ~ ~1 ~ {Tags:["GarchompSwordsDanceVFX"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100}
execute if score @s kits.timer matches 1 at @s rotated ~ 0 run summon item_display ^ ^ ^1.5 {Tags:["GarchompSwordsDanceVFX_Sword","GarchompSwordsDanceVFX_Sword_1"],item:{id:"minecraft:iron_sword",count:1},transformation:[1.0607f,1.0607f,0.0000f,0.0000f,-1.0607f,1.0607f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute if score @s kits.timer matches 1 at @s rotated ~ 0 run summon item_display ^1.3 ^ ^-0.75 {Tags:["GarchompSwordsDanceVFX_Sword","GarchompSwordsDanceVFX_Sword_2"],item:{id:"minecraft:iron_sword",count:1},transformation:[1.0607f,1.0607f,0.0000f,0.0000f,-1.0607f,1.0607f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute if score @s kits.timer matches 1 at @s rotated ~ 0 run summon item_display ^-1.3 ^ ^-0.75 {Tags:["GarchompSwordsDanceVFX_Sword","GarchompSwordsDanceVFX_Sword_3"],item:{id:"minecraft:iron_sword",count:1},transformation:[1.0607f,1.0607f,0.0000f,0.0000f,-1.0607f,1.0607f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

execute if score @s kits.timer matches ..49 as @e[type=area_effect_cloud,tag=GarchompSwordsDanceVFX] at @s positioned as @p[tag=Cynthia] run tp @s ~ ~1 ~ ~5 ~
execute if score @s kits.timer matches 50.. as @e[type=area_effect_cloud,tag=GarchompSwordsDanceVFX] at @s positioned as @p[tag=Cynthia] run tp @s ~ ~1 ~ ~10 ~
execute if score @s kits.timer matches 1.. as @e[type=area_effect_cloud,tag=GarchompSwordsDanceVFX] at @s rotated ~ 0 run function kits:cynthia/garchomp/swordsdanceswordvfx

#particle cloud ~ ~0.5 ~ 0.4 1 0.4 0 2 force
execute if score @s kits.timer matches 50..99 run particle falling_dust{block_state:"minecraft:orange_wool"} ~ ~0.5 ~ 0.4 1 0.4 0 3 force
execute if score @s kits.criterion.shiftOff matches 2.. if score @s kits.timer matches 50..99 run function kits:cynthia/garchomp/swordsdanceincrease
execute if score @s kits.criterion.shiftOff matches 2.. if score @s kits.timer matches 100.. run function kits:cynthia/garchomp/swordsdanceincrease2
execute if score @s kits.timer matches 100.. run function kits:cynthia/garchomp/swordsdanceincrease2
execute if score @s kits.timer matches 100.. run function kits:cynthia/garchomp/swordsdanceend
execute if score @s kits.criterion.shiftOff matches 2.. run function kits:cynthia/garchomp/swordsdanceend