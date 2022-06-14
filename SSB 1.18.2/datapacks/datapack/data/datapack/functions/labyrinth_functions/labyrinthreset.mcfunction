forceload add -5234 -25 -5014 207
function datapack:labyrinth_functions/labyrinthchests

kill @e[type=!player,team=LabyrinthMob,tag=!Boss,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]
kill @e[type=item,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]
kill @e[type=armor_stand,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]
kill @e[type=area_effect_cloud,tag=!Boss,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]
forceload remove -5234 -25 -5014 207