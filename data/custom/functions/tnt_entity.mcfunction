execute at @s[tag=!vanilla,tag=!loaded] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace command_block
# execute as @s[tag=!vanilla] store result score @s e_check run data get entity @s Fuse 1
execute at @s[tag=!vanilla,tag=!loaded] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 command_block{Command:"summon tnt ~ ~ ~ {Fuse:80}",auto:1b} replace tnt
execute at @s[tag=!vanilla,scores={e_check=1..6}] run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 command_block{Command:"summon tnt ~ ~ ~ {Fuse:80}",auto:1b} replace tnt
tag @s[tag=!vanilla,tag=!loaded] add loaded
execute at @s[tag=!vanilla] run kill @e[tag=tnt_check,distance=..5]
# run scoreboard players remove @s e_check 1