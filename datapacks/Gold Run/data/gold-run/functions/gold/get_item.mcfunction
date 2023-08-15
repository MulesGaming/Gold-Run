# Give to nearest player

scoreboard players add @a[distance=..3,limit=1] goldrun.gold_amount 1

tellraw @a[distance=..3,limit=1] {"text": "You got a gold!","color": "yellow"}

# Kill

kill @s

