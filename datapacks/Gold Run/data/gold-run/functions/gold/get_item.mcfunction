# Give to nearest player

scoreboard players add @a[distance=..3,limit=1] goldrun.gold_amount 1

tellraw @a[distance=..3,limit=1] {"text": "You got a gold!","color": "yellow"}

# Kill

kill @s

# Reset score

execute if score &game_running goldrun.vars matches 1 if score &gold_item_respawn_timer goldrun.vars matches ..1 run scoreboard players set &gold_item_respawn_timer goldrun.vars 30
