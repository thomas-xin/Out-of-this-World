summon area_effect_cloud ~ ~ ~ {Particle:"flame",Radius:1f,Duration:1,Effects:[{Id:18b,Amplifier:1b,Duration:200}]}
execute at @e[distance=..1.5,type=!area_effect_cloud,type=!wither_skeleton,type=!wither,type=!magma_cube,type=!item,type=!blaze,type=!zombified_piglin,type=!cave_spider,limit=1] run setblock ~ ~ ~ fire keep
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 redstone_torch replace torch
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 magma_block replace glowstone
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 carved_pumpkin[facing=east] replace jack_o_lantern[facing=east]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 carved_pumpkin[facing=north] replace jack_o_lantern[facing=north]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 carved_pumpkin[facing=south] replace jack_o_lantern[facing=south]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 carved_pumpkin[facing=west] replace jack_o_lantern[facing=west]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 redstone_wall_torch[facing=east] replace wall_torch[facing=east]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 redstone_wall_torch[facing=north] replace wall_torch[facing=north]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 redstone_wall_torch[facing=south] replace wall_torch[facing=south]
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 redstone_wall_torch[facing=west] replace wall_torch[facing=west]