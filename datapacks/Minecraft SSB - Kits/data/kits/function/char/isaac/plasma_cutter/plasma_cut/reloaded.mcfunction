## When Isaac Finished Reloading
# Retrieve old model
function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"Plasma Cutter"}}}',newModifier:'"kits:character_specific/isaac_reset_anim"'}

# Reset scores
scoreboard players remove @s kits.timer2 1
scoreboard players reset @s kits.ability2CD
scoreboard players set @s kits.timer 3
