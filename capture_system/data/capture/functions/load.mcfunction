scoreboard objectives add captureTimer dummy
scoreboard objectives add absoluteCaptureTimer dummy
scoreboard objectives add minusOne dummy

team add team_usec "USEC"
team add team_bear "BEAR"

scoreboard players set constants minusOne -1

team add cl_blue "blue"
team modify cl_blue color blue

team add cl_red "red"
team modify cl_red color red

bossbar add capture:progress "Захват точки"
bossbar set capture:progress max 100
bossbar set capture:progress players @a
bossbar set capture:progress visible false

execute as @e[tag=ActivePoint] run execute at @s run function capture:point/init
bossbar set capture:progress visible false