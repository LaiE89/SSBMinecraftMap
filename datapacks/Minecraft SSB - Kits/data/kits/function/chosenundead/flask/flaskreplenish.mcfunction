playsound minecraft:block.lava.extinguish neutral @a[distance=..20] ~ ~ ~ 1 1 1
particle flame ~ ~1 ~ 0 0 0 0.05 50 force

execute if score @s kits.timer3 matches ..0 run clear @s glass_bottle[item_name={"color":"gold","text":"Empty Flask"}]
execute if score @s kits.timer3 matches ..0 run give @s potion[custom_name={"color":"gold","italic":false,"text":"Estus Flask"},lore=[[""],["",{"color":"aqua","italic":false,"text":"Switch Flasks:"},{"color":"yellow","italic":false,"text":" SHIFT"}],["",{"color":"gray","italic":false,"text":"Switch between Estus Flasks (HP)"}],["",{"color":"gray","italic":false,"text":"and Ashen Estus Flasks (FP). Kill"}],["",{"color":"gray","italic":false,"text":"enemies to restore up to 5 flasks."}]],enchantment_glint_override=true,custom_data={KitItem:1b,ChosenUndeadEstus:1b,ChosenUndeadFlask:1b},potion_contents={custom_color:16626205,custom_effects:[{id:"minecraft:instant_health",amplifier:1,duration:0}]}] 1

scoreboard players add @s[scores={kits.timer3=..4}] kits.timer3 1
