## On Player Death Location
# tp marker to death pos
$tp @s $(posX) $(posY) $(posZ)

# any function on marker
$execute positioned as @s run $(onPos)

# kill marker
kill @s