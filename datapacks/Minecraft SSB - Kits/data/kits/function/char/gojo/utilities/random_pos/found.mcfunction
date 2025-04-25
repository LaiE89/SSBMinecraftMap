## Found random spawn position
# run function at spawn position
$execute if score @s kits.raycastTick matches -1 run execute positioned ^ ^ ^-1 run $(atPos)
$execute if score @s kits.raycastTick matches 0 run execute positioned ^ ^ ^ run $(atPos)