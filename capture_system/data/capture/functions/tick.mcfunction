# If the current entity is within 5 blocks of a player on team 1 (USEC) and not on team 2 (BEAR)
# Increment the captureTimer for the CapturePoint
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if entity @a[distance=..5, scores={team=1}] run scoreboard players add @s captureTimer 1 

# If the current entity is within 5 blocks of a player on team 2 (BEAR) and not on team 1 (USEC)
# Decrement the captureTimer for the CapturePoint
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if entity @a[distance=..5, scores={team=2}] run scoreboard players remove @s captureTimer 1 

# Sync the absoluteCaptureTimer with the captureTimer's absolute value
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run scoreboard players operation @s absoluteCaptureTimer = @s captureTimer
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if score @s captureTimer matches ..-1 run scoreboard players operation @s absoluteCaptureTimer *= constants minusOne

# Sync bossbar with absoluteCaptureTimer
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s if entity @a[distance=..5] run execute store result bossbar capture:progress value run scoreboard players get @s absoluteCaptureTimer

execute as @e[tag=ActivePoint,tag=!Captured, tag=!Disabled] at @s if entity @a[distance=..5] run bossbar set capture:progress visible true

# Colour the bossbar based on the captureTimer value (so as to indicate whether it is currently captured by USEC or BEAR)
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s if entity @a[distance=..5] run execute if score @s captureTimer matches 1.. run bossbar set capture:progress color red
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s if entity @a[distance=..5] run execute if score @s captureTimer matches ..-1 run bossbar set capture:progress color blue

# Mark the CapturePoint as captured if the absoluteCaptureTimer reaches 100
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if score @s captureTimer matches 100.. run team join cl_red @s
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if score @s captureTimer matches ..-100 run team join cl_blue @s

# Show the appropriate title based on who captured the point
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if score @s captureTimer matches 100.. run function capture:core/bear_win
execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if score @s captureTimer matches ..-100 run function capture:core/usec_win

execute as @e[tag=ActivePoint, tag=!Captured, tag=!Disabled] at @s run execute if score @s absoluteCaptureTimer matches 100.. run tag @s add Captured