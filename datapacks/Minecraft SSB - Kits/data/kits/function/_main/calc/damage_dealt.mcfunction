# note: checks how much damage will be dealt based on the targets defenses. Make sure inputs are scales of 100.
# note: does not account for resistance or protection levels
# formula: damage * ( 1 - [ Max (armor / 5, armor - ((4 * damage) / (toughness + 8)) ) / 25 ] )

## Calculates Damage Dealt
# armor - (4 * damage) / (toughness + 8)
scoreboard players set %damage_dealt.const kits.math 800
scoreboard players operation %damage_dealt.armorToughness kits.math += %damage_dealt.const kits.math

scoreboard players set %damage_dealt.const kits.math 400
scoreboard players operation %damage_dealt.const3 kits.math = %damage_dealt.damage kits.math
scoreboard players operation %damage_dealt.damage kits.math *= %damage_dealt.const kits.math

scoreboard players operation %damage_dealt.damage kits.math /= %damage_dealt.armorToughness kits.math

scoreboard players operation %damage_dealt.const2 kits.math = %damage_dealt.armor kits.math
scoreboard players operation %damage_dealt.armor kits.math -= %damage_dealt.damage kits.math

# armor / 5
scoreboard players set %damage_dealt.const kits.math 5
scoreboard players operation %damage_dealt.const2 kits.math /= %damage_dealt.const kits.math

# Max
scoreboard players operation %damage_dealt.const2 kits.math > %damage_dealt.armor kits.math

# 1 - (Max / 25)
scoreboard players set %damage_dealt.const kits.math 25
scoreboard players operation %damage_dealt.const2 kits.math /= %damage_dealt.const kits.math

scoreboard players set %damage_dealt.const kits.math 100
scoreboard players operation %damage_dealt.const kits.math -= %damage_dealt.const2 kits.math

# multiply by damage
execute store result score %damage_dealt.out kits.math run scoreboard players operation %damage_dealt.const3 kits.math *= %damage_dealt.const kits.math
scoreboard players set %damage_dealt.const kits.math 1000
scoreboard players operation %damage_dealt.out kits.math /= %damage_dealt.const kits.math