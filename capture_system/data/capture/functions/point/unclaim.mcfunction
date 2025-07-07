execute as @e[tag=ActivePoint, distance=..5, limit=1] run function capture:point/init
tellraw @s {"text":"Точка захвата освобождена!","color":"green"}