execute as @s run scoreboard players set @s captureTimer 0
execute as @s run scoreboard players set @s absoluteCaptureTimer 0
execute as @s run tag @s remove Captured
execute as @s run tag @s add Disabled
execute as @s run team leave @s