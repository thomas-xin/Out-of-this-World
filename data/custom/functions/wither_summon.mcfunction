execute if block ~ ~-1 ~ obsidian if block ~ ~-2 ~ netherite_block if block ~1 ~ ~ wither_skeleton_skull if block ~-1 ~ ~ wither_skeleton_skull if block ~ ~ ~1 wither_skeleton_skull if block ~ ~ ~-1 wither_skeleton_skull if block ~1 ~-1 ~ respawn_anchor[charges=4] if block ~-1 ~-1 ~ respawn_anchor[charges=4] if block ~ ~-1 ~1 respawn_anchor[charges=4] if block ~ ~-1 ~-1 respawn_anchor[charges=4] run tag @s add wither_summon
tag @s add initialized
tag @e[type=end_crystal,sort=nearest,limit=1] add initialized
execute if entity @s[tag=wither_summon] run function custom:wither_init