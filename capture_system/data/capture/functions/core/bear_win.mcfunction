title @a title {"text":"Точка захвачена: BEAR","color":"gold"}
execute as @e[tag=ActivePoint, tag=!Captured, distance=..5, limit=1] run bossbar set capture:progress color red
execute as @e[tag=ActivePoint, tag=!Captured, distance=..5, limit=1] run bossbar set capture:progress visible false
execute as @e[tag=ActivePoint, tag=!Captured, distance=..5, limit=1] run scoreboard players set @s captureTimer 0
