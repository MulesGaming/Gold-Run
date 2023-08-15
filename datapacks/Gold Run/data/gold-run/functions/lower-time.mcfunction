# Remove time from main timer

execute if score &game_running goldrun.vars matches 1 run scoreboard players remove &remaning_time_sec goldrun.vars 1

execute if score &game_running goldrun.vars matches 1 if score &remaning_time_sec goldrun.vars matches ..0 run scoreboard players remove &remaning_time_min goldrun.vars 1

execute if score &game_running goldrun.vars matches 1 if score &remaning_time_sec goldrun.vars matches ..0 run scoreboard players set &remaning_time_sec goldrun.vars 59

# Summon gold timer

execute if score &game_running goldrun.vars matches 1 if score &gold_item_respawn_timer goldrun.vars matches ..1 run scoreboard players set &gold_item_respawn_timer goldrun.vars 30

execute if score &game_running goldrun.vars matches 1 run scoreboard players remove &gold_item_respawn_timer goldrun.vars 1

# Loop

schedule function gold-run:lower-time 1s
