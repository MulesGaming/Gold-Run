# Check who has the most gold

scoreboard players set &leader goldrun.gold_amount 0

execute as @a at @s if score @s goldrun.gold_amount > &leader goldrun.gold_amount run scoreboard players operation &leader goldrun.gold_amount = @s goldrun.gold_amount

# Run stuff

execute as @a if score @s goldrun.gold_amount = &leader goldrun.gold_amount run function gold-run:win/player_win

# Clear

scoreboard players set &leader goldrun.gold_amount 0


