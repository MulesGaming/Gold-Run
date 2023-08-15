# Game Starter var

scoreboard players set &game_running goldrun.vars 1

# Set game timer

scoreboard players set &remaning_time_min goldrun.vars 4
scoreboard players set &remaning_time_sec goldrun.vars 59

# Gold amount

scoreboard players set @a goldrun.gold_amount 0

function gold-run:gold/refill

# Tp

tp @a 32 -60 7

# Message

tellraw @a ["","<",{"text":"Albert","bold":true,"color":"yellow"},"> ","Go!"]

# Reset button

setblock 23 -59 7 stone_button[facing=west]

# Gamemode

gamemode adventure @a

