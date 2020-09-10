particle sweep_attack ~ ~ ~ 0 0 0 1 0 force
particle sweep_attack ~ ~1 ~ 0.5 0 0.5 1 3 force
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5
fill ~-1.5 ~-3.5 ~-1.5 ~1.5 ~5 ~1.5 air replace water
fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace oak_leaves
fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace spruce_leaves
fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace birch_leaves
fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace jungle_leaves
fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace acacia_leaves
fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace dark_oak_leaves
fill ~-3 ~-5 ~-4 ~4 ~7 ~4 air replace torch
fill ~-.5 ~-4 ~-.5 ~.5 ~6 ~.5 stripped_oak_log replace oak_log
fill ~-.5 ~-4 ~-.5 ~.5 ~6 ~.5 stripped_spruce_log replace spruce_log
fill ~-.5 ~-4 ~-.5 ~.5 ~6 ~.5 stripped_birch_log replace birch_log
fill ~-.5 ~-4 ~-.5 ~.5 ~6 ~.5 stripped_jungle_log replace jungle_log
fill ~-.5 ~-4 ~-.5 ~.5 ~6 ~.5 stripped_acacia_log replace acacia_log
fill ~-.5 ~-4 ~-.5 ~.5 ~6 ~5 stripped_dark_oak_log replace dark_oak_log
fill ~-1.5 ~-3 ~-1.5 ~1.5 ~7 ~1.5 air replace fire
fill ~-4.5 ~-4 ~-4.5 ~4.5 ~4.5 ~4.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:chorus_flower},Time:1,Motion:[0.,2.4,0.]}",auto:1b} replace chorus_flower
fill ~-3.5 ~-3 ~-3.5 ~3.5 ~3 ~3.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:chorus_flower,Properties:{age:'5'}},Time:1,Motion:[0.,2.2,0.]}",auto:1b} replace chorus_flower
fill ~-6 ~-4 ~-6 ~6 ~3 ~6 campfire[lit=false] replace campfire
fill ~-2 ~-1.95 ~-2 ~2 ~7 ~2 command_block{Command:"summon falling_block ~ ~2.0 ~ {BlockState:{Name:sand},Time:1,Motion:[0.,1.8,0.]}",auto:1b} replace sand
fill ~-2 ~-1.95 ~-2 ~2 ~7 ~2 command_block{Command:"summon falling_block ~ ~2.0 ~ {BlockState:{Name:red_sand},Time:1,Motion:[0.,1.6,0.]}",auto:1b} replace red_sand
fill ~-1.5 ~-7.5 ~-1.5 ~1.5 ~8 ~1.5 air replace seagrass
fill ~-1.5 ~-7.5 ~-1.5 ~1.5 ~8 ~1.5 air replace tall_seagrass
fill ~-1.5 ~-7.5 ~-1.5 ~1.5 ~8 ~1.5 air replace kelp
fill ~-1 ~-2 ~-1 ~1 ~7 ~1 command_block{Command:"summon falling_block ~ ~2.0 ~ {BlockState:{Name:gravel},Time:1,Motion:[0.,1.9,0.]}",auto:1b} replace gravel
fill ~-1.5 ~-3 ~-1.5 ~1.5 ~4.5 ~1.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:netherrack},Time:1,Motion:[0.,2.4,0.]}",auto:1b} replace netherrack
fill ~-1.5 ~-2 ~-1.5 ~1.5 ~4 ~1.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:soul_sand},Time:1,Motion:[0.,1.1,0.]}",auto:1b} replace soul_sand
fill ~-1.5 ~-2 ~-1.5 ~1.5 ~3.5 ~1.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:snow_block},Time:1,Motion:[0.,1.6,0.]}",auto:1b} replace snow_block
fill ~-1.5 ~-2 ~-1.5 ~1.5 ~7 ~1.5 air replace snow
fill ~-1.5 ~-3 ~-1.5 ~1.5 ~4.5 ~1.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:magma_block},Time:1,Motion:[0.,1.4,0.]}",auto:1b} replace lava
fill ~-1.5 ~-3 ~-1.5 ~1.5 ~9 ~1.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:obsidian},Time:1,Motion:[0.,2.2,0.]}",auto:1b} replace magma_block
fill ~-1.5 ~-2 ~-1.5 ~1.5 ~9 ~1.5 command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:glowstone},Time:1,Motion:[0.,0.4,0.]}",auto:1b} replace glowstone
#command_block{Command:"summon falling_block ~ ~1.5 ~ {BlockState:{Name:fire},Time:1,Motion:[0.,1.8,0.]}",auto:1b}
summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["block_launcher"]}