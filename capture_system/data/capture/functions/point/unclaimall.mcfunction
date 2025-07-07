execute as @e[tag=ActivePoint] run function capture:point/init
tellraw @s {"text":"Все точки захвата освобождены!","color":"green"}