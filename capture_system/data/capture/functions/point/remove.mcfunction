execute as @e[tag=ActivePoint, distance=..5, limit=1] at @s run kill @s
tellraw @s {"text":"Точка захвата удалена!","color":"green"}