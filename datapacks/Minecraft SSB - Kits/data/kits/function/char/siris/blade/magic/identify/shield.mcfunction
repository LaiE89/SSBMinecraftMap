# Compares User's Drawing With Shield
scoreboard players set %SirisMagicDataTemp kits.dz 3
scoreboard players operation %SirisMagicDataTemp kits.z = %SirisMagicDataTemp kits.x
scoreboard players operation %SirisMagicDataTemp kits.z += %SirisMagicDataTemp kits.y
scoreboard players operation %SirisMagicDataTemp kits.z /= %SirisMagicDataTemp kits.dz
scoreboard players operation %SirisMagicDataTemp kits.x -= %SirisMagicDataTemp kits.z
scoreboard players operation %SirisMagicDataTemp kits.z += %SirisMagicDataTemp kits.z
scoreboard players operation %SirisMagicDataTemp kits.y -= %SirisMagicDataTemp kits.z
execute if score %SirisMagicDataTemp kits.x matches -2..2 if score %SirisMagicDataTemp kits.y matches -2..2 if score %SirisMagicDataTemp kits.dx matches 1 if score %SirisMagicDataTemp kits.dy matches 2 run function kits:char/siris/blade/magic/spells/shield/use
function kits:char/siris/blade/magic/identify/reset
