execute as @e[tag=ActivePoint, distance=..5, limit=1] run data modify entity @s CustomNameVisible set value 0b
tellraw @s {"text":"Надпись над точкой захвата выключена!","color":"red"}