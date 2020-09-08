tag @s remove silked
function custom:break_blocks

execute if entity @s[tag=thru] positioned ~-.5 ~-.5 ~-.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~.5 ~-.5 ~-.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~-.5 ~.5 ~-.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~.5 ~.5 ~-.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~-.5 ~-.5 ~.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~.5 ~-.5 ~.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~-.5 ~.5 ~.5 run function custom:break_blocks
execute if entity @s[tag=thru] positioned ~.5 ~.5 ~.5 run function custom:break_blocks

execute if entity @s[tag=thru,tag=!level1] positioned ~-.71 ~-.71 ~-.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~.71 ~-.71 ~-.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~-.71 ~.71 ~-.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~.71 ~.71 ~-.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~-.71 ~-.71 ~.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~.71 ~-.71 ~.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~-.71 ~.71 ~.71 run function custom:break_blocks
execute if entity @s[tag=thru,tag=!level1] positioned ~.71 ~.71 ~.71 run function custom:break_blocks

execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~-1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~-1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~-1.0 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~-1.0 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~1.0 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~1.0 ~1.0 run function custom:break_blocks

execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~-0.5 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~-0.5 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~0.5 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~0.5 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~-0.5 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~-0.5 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~0.5 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~0.5 ~1.0 run function custom:break_blocks

execute if entity @s[tag=thru,tag=level3] positioned ~-0.5 ~-1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~0.5 ~-1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-0.5 ~1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~0.5 ~1.0 ~-1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-0.5 ~-1.0 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~0.5 ~-1.0 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-0.5 ~1.0 ~1.0 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~0.5 ~1.0 ~1.0 run function custom:break_blocks

execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~-1.0 ~-0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~-1.0 ~-0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~1.0 ~-0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~1.0 ~-0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~-1.0 ~0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~-1.0 ~0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-1.0 ~1.0 ~0.5 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~1.0 ~1.0 ~0.5 run function custom:break_blocks

execute if entity @s[tag=thru,tag=level3] positioned ~ ~-2 ~ run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~2 ~ ~ run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~ ~2 ~ run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~ ~ ~-2 run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~-2 ~ ~ run function custom:break_blocks
execute if entity @s[tag=thru,tag=level3] positioned ~ ~ ~2 run function custom:break_blocks