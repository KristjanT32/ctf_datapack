summon armor_stand ~ ~1 ~ {CustomName:"\"Точка захвата\"",Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ActivePoint"], CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=ActivePoint, distance=..10, limit=1] run function capture:point/init
tellraw @s {"text":"Точка захвата создана!","color":"green"}