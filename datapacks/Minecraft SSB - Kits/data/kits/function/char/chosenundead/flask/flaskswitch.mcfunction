execute if data entity @s[scores={kits.ability3CD=10..}] SelectedItem.components."minecraft:custom_data".ChosenUndeadAshen run function kits:char/chosenundead/flask/flaskestus

execute unless data entity @s[scores={kits.ability3CD=10..}] SelectedItem.components."minecraft:custom_data".ChosenUndeadAshen run function kits:char/chosenundead/flask/flaskashen

playsound minecraft:ui.button.click neutral @a[distance=..20] ~ ~ ~ 2 2 1