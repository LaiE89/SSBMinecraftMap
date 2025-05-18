scoreboard players set @s kits.timer3 0
effect clear @s minecraft:strength
function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"Reconstruction"}}}',newModifier:'"kits:character_specific/edward_reset_anim"'}
function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"dark_red","italic":false,"text":"Deconstruction"}}}',newModifier:'"kits:character_specific/edward_reset_anim"'}