# Particles Activate
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"God Particles\",\"italic\":false,\"color\":\"gold\"}]"}}}}] at @s run function datapack:shop_functions/cosmetics/particles/god_particles/trigger

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Shit Particles\",\"italic\":false,\"color\":\"yellow\"}]"}}}}] at @s run function datapack:shop_functions/cosmetics/particles/shit_particles/trigger

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Fire Particles","italic":false,"color":"gold"}]'}}}}] at @s run function datapack:shop_functions/cosmetics/particles/fire_particles/trigger

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,display:{Name:'[{"text":"Shadow Particles","italic":false,"color":"white"}]'}}}}] at @s run function datapack:shop_functions/cosmetics/particles/shadow_particles/trigger

# Death Effects Activate
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"God Death Effect\",\"italic\":false,\"color\":\"gold\"}]"}}}}] at @s run function datapack:shop_functions/cosmetics/death_effects/god_death/trigger

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Gore Death Effect","italic":false,"color":"dark_red"}]'}}}}] at @s run function datapack:shop_functions/cosmetics/death_effects/gore_death/trigger

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'[{"text":"Grave Death Effect","italic":false,"color":"dark_red"}]'}}}}] at @s run function datapack:shop_functions/cosmetics/death_effects/grave_death/trigger

# Kill Messages Activate
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"God Kill Messages\",\"italic\":false,\"color\":\"gold\"}]"}}}}] at @s run function datapack:shop_functions/cosmetics/kill_messages/god_kill/trigger

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"[{\"text\":\"Terraria Kill Messages\",\"italic\":false,\"color\":\"dark_green\"}]"}}}}] at @s run function datapack:shop_functions/cosmetics/kill_messages/terraria_kill/trigger