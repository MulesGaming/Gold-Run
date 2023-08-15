# Message

tellraw @a "Gold Run datapack loaded!"

#

schedule function gold-run:lower-time 1s

# Scoreboard

scoreboard objectives add goldrun.vars dummy

scoreboard objectives add goldrun.gold_amount dummy

# Trigger

scoreboard objectives add leave-practice trigger

