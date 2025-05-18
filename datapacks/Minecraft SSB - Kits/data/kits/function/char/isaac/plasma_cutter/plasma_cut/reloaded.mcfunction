## When Isaac Finished Reloading
# Retrieve old model
execute as @p[tag=Isaac] at @s run function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"Plasma Cutter"}}}',newModifier:'"kits:character_specific/isaac_reset_anim"'}

execute as @p[tag=Isaac] at @s run playsound minecraft:block.vault.deactivate neutral @a[distance=..20] ~ ~ ~ 3 2 1

# Reset scores
scoreboard players remove @p[tag=Isaac] kits.timer2 1
scoreboard players set @p[tag=Isaac] kits.timer 3
