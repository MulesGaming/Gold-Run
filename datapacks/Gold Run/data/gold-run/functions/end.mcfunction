# Message

tellraw @a ["","<",{"text":"Albert","bold":true,"color":"yellow"},"> ","Game over!"]

# Tp

tp @a 18 -60 8

# Remove tag

tag @a remove has_checkpoint

# Reset timer

scoreboard players set &remaning_time_min goldrun.vars -1
scoreboard players set &game_running goldrun.vars 0

# Check win

function gold-run:win/check_win

# Title

title @a title {"text": "Game Over!","color": "red"}

