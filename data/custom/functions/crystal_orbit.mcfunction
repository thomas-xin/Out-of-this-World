tag @s add src_id
execute as @e[tag=point_crystal] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[tag=point_crystal] compare_id -= @s wither_id

execute as @e[tag=point_crystal,scores={compare_id=0}] run execute store result entity @s BeamTarget.X double 1 run data get entity @e[tag=src_id,limit=1] Pos[0]
execute as @e[tag=point_crystal,scores={compare_id=0}] run execute store result entity @s BeamTarget.Y double 1 run data get entity @e[tag=src_id,limit=1] Pos[1]
execute as @e[tag=point_crystal,scores={compare_id=0}] run execute store result entity @s BeamTarget.Z double 1 run data get entity @e[tag=src_id,limit=1] Pos[2]
tag @s remove src_id