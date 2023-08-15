# Message

tellraw @a ["","<",{"text":"Albert","bold":true,"color":"yellow"},"> ",{"selector":"@s"}," won!"]

# High score

execute if score @s goldrun.gold_amount > &high_score goldrun.vars run scoreboard players operation &high_score goldrun.vars = @s goldrun.gold_amount


