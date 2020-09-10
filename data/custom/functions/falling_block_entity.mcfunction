execute at @s[tag=thrown] run fill ~-1 1 ~-1 ~1 ~ ~1 air replace command_block[facing=north,conditional=false]
execute at @s[tag=thrown] run fill ~-1 -1 ~-1 ~1 ~-1 ~1 air replace command_block[facing=north,conditional=false]
execute at @s[tag=thrown] run fill ~-1 -2 ~-1 ~1 ~-2 ~1 air replace command_block[facing=north,conditional=false]
execute as @s[tag=thrown] run execute store result entity @s Motion[0] double 0.08 run data get entity @e[tag=blow,sort=random,limit=1] Pos[0]
execute as @s[tag=thrown] run execute store result entity @s Motion[2] double 0.08 run data get entity @e[tag=blow,sort=random,limit=1] Pos[2]
tag @s[tag=thrown] add nothrown
tag @s[tag=thrown] remove thrown
tag @s[tag=!none,tag=!scatter] add none