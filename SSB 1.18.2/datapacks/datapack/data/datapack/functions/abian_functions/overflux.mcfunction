data merge entity @e[tag=AbianOverfluxWeaponWheel,type=minecraft:armor_stand,limit=1] {CustomNameVisible:1}
item replace entity @p[tag=Abian,scores={Basic_ShiftOff=1},predicate=datapack:abian_items/abian_weapon] weapon.mainhand with carrot_on_a_stick{Unbreakable:1,AbianWeapon:1b,display:{Name:'[{"text":"Overflux Power Orb","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Item Ability: |","italic":false,"color":"gold"},{"text":" ","color":"gray"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Places an orb that buffs you and damages","italic":false,"color":"gray"}]','[{"text":"nearby enemies","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},CustomModelData:69} 1
execute at @p[tag=Abian,scores={Basic_ShiftOff=1},predicate=datapack:abian_items/abian_weapon] run playsound minecraft:ui.button.click neutral @a[distance=..10] ~ ~ ~ 3 1.5 1