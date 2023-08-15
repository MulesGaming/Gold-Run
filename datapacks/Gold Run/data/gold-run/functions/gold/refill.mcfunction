# Summon

execute as @e[type=marker,tag=gold_item_spawn_point] at @s unless entity @e[type=item_display,tag=gold_ingot_item_display,distance=..1,limit=1] run summon item_display ~ ~0.5 ~ {Tags:["gold_ingot_item_display"],item:{id:"minecraft:gold_ingot",Count:1b}}



