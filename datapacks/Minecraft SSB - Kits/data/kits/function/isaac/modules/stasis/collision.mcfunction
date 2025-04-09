## If Stasis Projectile Collides With Enemy or Block
# Summons stasis zone
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:60,Tags:["IsaacStasis","projectile"]}

# Particles
particle flash ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.000 ^0.000 ^3.000 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.188 ^1.760 ^2.422 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.376 ^2.831 ^0.920 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.562 ^2.803 ^-0.911 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.746 ^1.708 ^-2.351 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.927 ^0.000 ^-2.853 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.104 ^-1.640 ^-2.257 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.277 ^-2.582 ^-0.839 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.445 ^-2.500 ^0.812 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.607 ^-1.489 ^2.049 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.763 ^-0.000 ^2.427 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.912 ^1.359 ^1.870 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.054 ^2.080 ^0.676 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.187 ^1.953 ^-0.635 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.312 ^1.124 ^-1.547 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.427 ^-0.000 ^-1.763 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.533 ^-0.945 ^-1.300 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.629 ^-1.375 ^-0.447 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.714 ^-1.215 ^0.395 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.789 ^-0.649 ^0.893 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.853 ^0.000 ^0.927 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.906 ^0.439 ^0.604 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.947 ^0.535 ^0.174 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.976 ^0.358 ^-0.116 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.994 ^0.111 ^-0.152 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^3.000 ^0.000 ^0.000 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.994 ^0.111 ^0.152 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.976 ^0.358 ^0.116 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.947 ^0.535 ^-0.174 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.906 ^0.439 ^-0.604 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.853 ^-0.000 ^-0.927 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.789 ^-0.649 ^-0.893 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.714 ^-1.215 ^-0.395 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.629 ^-1.375 ^0.447 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.533 ^-0.945 ^1.300 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.427 ^0.000 ^1.763 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.312 ^1.124 ^1.547 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.187 ^1.953 ^0.635 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^2.054 ^2.080 ^-0.676 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.912 ^1.359 ^-1.870 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.763 ^-0.000 ^-2.427 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.607 ^-1.489 ^-2.049 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.445 ^-2.500 ^-0.812 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.277 ^-2.582 ^0.839 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^1.104 ^-1.640 ^2.257 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.927 ^-0.000 ^2.853 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.746 ^1.708 ^2.351 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.562 ^2.803 ^0.911 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.376 ^2.831 ^-0.920 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.188 ^1.760 ^-2.422 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^0.000 ^0.000 ^-3.000 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.188 ^-1.760 ^-2.422 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.376 ^-2.831 ^-0.920 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.562 ^-2.803 ^0.911 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.746 ^-1.708 ^2.351 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.927 ^-0.000 ^2.853 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.104 ^1.640 ^2.257 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.277 ^2.582 ^0.839 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.445 ^2.500 ^-0.812 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.607 ^1.489 ^-2.049 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.763 ^0.000 ^-2.427 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.912 ^-1.359 ^-1.870 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.054 ^-2.080 ^-0.676 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.187 ^-1.953 ^0.635 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.312 ^-1.124 ^1.547 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.427 ^-0.000 ^1.763 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.533 ^0.945 ^1.300 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.629 ^1.375 ^0.447 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.714 ^1.215 ^-0.395 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.789 ^0.649 ^-0.893 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.853 ^0.000 ^-0.927 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.906 ^-0.439 ^-0.604 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.947 ^-0.535 ^-0.174 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.976 ^-0.358 ^0.116 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.994 ^-0.111 ^0.152 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-3.000 ^-0.000 ^0.000 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.994 ^-0.111 ^-0.152 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.976 ^-0.358 ^-0.116 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.947 ^-0.535 ^0.174 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.906 ^-0.439 ^0.604 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.853 ^-0.000 ^0.927 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.789 ^0.649 ^0.893 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.714 ^1.215 ^0.395 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.629 ^1.375 ^-0.447 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.533 ^0.945 ^-1.300 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.427 ^0.000 ^-1.763 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.312 ^-1.124 ^-1.547 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.187 ^-1.953 ^-0.635 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-2.054 ^-2.080 ^0.676 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.912 ^-1.359 ^1.870 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.763 ^-0.000 ^2.427 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.607 ^1.489 ^2.049 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.445 ^2.500 ^0.812 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.277 ^2.582 ^-0.839 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-1.104 ^1.640 ^-2.257 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.927 ^0.000 ^-2.853 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.746 ^-1.708 ^-2.351 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.562 ^-2.803 ^-0.911 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.376 ^-2.831 ^0.920 0 0 0 0 1 force
particle dust{color:[0.502,1.000,1.000],scale:1} ^-0.188 ^-1.760 ^2.422 0 0 0 0 1 force

# Sounds
playsound minecraft:block.conduit.deactivate neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.25 2 1

# Kills stasis projectile
kill @s
