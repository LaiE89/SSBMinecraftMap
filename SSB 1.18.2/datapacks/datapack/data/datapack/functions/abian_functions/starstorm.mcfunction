data merge entity @e[tag=StarstormWeaponWheel,type=minecraft:armor_stand,limit=1] {CustomNameVisible:1}
item replace entity @p[tag=Abian,scores={Basic_ShiftOff=1},predicate=datapack:abian_items/abian_weapon] weapon.mainhand with carrot_on_a_stick{Unbreakable:1,AbianWeapon:1b,display:{Name:'[{"text":"Starstorm","italic":false,"color":"aqua"}]',Lore:['[{"text":"Item Ability: | ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"When used, meteors fall in the direction you","italic":false,"color":"gray"}]','[{"text":"are facing.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},CustomModelData:67}
execute at @p[tag=Abian,scores={Basic_ShiftOff=1},predicate=datapack:abian_items/abian_weapon] run playsound minecraft:ui.button.click neutral @a[distance=..10] ~ ~ ~ 3 1.5 1