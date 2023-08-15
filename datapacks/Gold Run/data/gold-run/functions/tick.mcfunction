# Day

time set day

# Saturation

effect give @a saturation infinite 99 true
effect give @a resistance infinite 99 true

# Player actionbar

execute as @a if score &game_running goldrun.vars matches 1 if score &remaning_time_min goldrun.vars matches 1.. run title @s actionbar ["",{"text":"Time Remaining:  ","color":"dark_red"},{"score":{"name":"&remaning_time_min","objective":"goldrun.vars"},"bold":true,"color":"yellow"},{"text":" minutes","color":"dark_red"},{"text":"  |  ","color":"dark_red"},{"text":"Collected Gold: ","color":"dark_red"},{"score":{"name":"@s","objective":"goldrun.gold_amount"},"bold":true,"color":"yellow"},{"text":"  |  High score: ","color":"dark_red"},{"score":{"name":"&high_score","objective":"goldrun.vars"},"bold":true,"color":"yellow"}]
execute as @a if score &game_running goldrun.vars matches 1 if score &remaning_time_min goldrun.vars matches ..1 run title @s actionbar ["",{"text":"Time Remaining:  ","color":"dark_red"},{"score":{"name":"&remaning_time_sec","objective":"goldrun.vars"},"bold":true,"color":"yellow"},{"text":" seconds","color":"dark_red"},{"text":"  |  ","color":"dark_red"},{"text":"Collected Gold: ","color":"dark_red"},{"score":{"name":"@s","objective":"goldrun.gold_amount"},"bold":true,"color":"yellow"},{"text":"  |  High score: ","color":"dark_red"},{"score":{"name":"&high_score","objective":"goldrun.vars"},"bold":true,"color":"yellow"}]

# Out of map

execute as @a at @s if block ~ ~-1 ~ barrier run function gold-run:respawn/fall

execute as @e[type=marker,tag=checkpoint_marker] at @s if score &game_running goldrun.vars matches 1 run function gold-run:respawn/get_checkpoint

# Game over

execute if score &remaning_time_min goldrun.vars matches 0 run function gold-run:end

# Gold items

execute as @e[type=item_display,tag=gold_ingot_item_display] at @s run particle dust 1.000 1.000 0.059 1 ~ ~ ~ 0.5 0.5 0.5 1 1 normal

execute as @e[type=item_display,tag=gold_ingot_item_display] at @s if score &game_running goldrun.vars matches 1 if entity @a[limit=1,distance=..3] run function gold-run:gold/get_item

execute if score &game_running goldrun.vars matches 1 if score &gold_item_respawn_timer goldrun.vars matches 1 run function gold-run:gold/refill


# Practice mode

execute if block 23 -59 9 stone_button[powered=true] run tag @a add practice-mode
execute if block 23 -59 9 stone_button[powered=true] run tp @a 32 -60 7

execute positioned 136 -54 6 as @a[tag=practice-mode,distance=..2] run tp @a 32 -60 7

scoreboard players enable @a leave-practice

execute as @a[tag=practice-mode] if score @s leave-practice matches 1.. run function gold-run:exit-practice

# Start

execute if block 23 -59 7 stone_button[powered=true] run function gold-run:start

# End

execute positioned 136 -53 6 if entity @p[limit=1,distance=..2.5] run function gold-run:end

# Practice bossbar

bossbar set practice_message players @a[tag=practice-mode]
bossbar set practice_message visible true
bossbar set practice_message value 1


