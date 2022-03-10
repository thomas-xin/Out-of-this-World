summon area_effect_cloud ~ ~ ~ {Particle:"flame",Radius:1f,Duration:1,Effects:[{Id:18b,Amplifier:1b,Duration:200}]}
execute at @e[distance=..1.5,type=!area_effect_cloud,type=!wither_skeleton,type=!wither,type=!magma_cube,type=!item,type=!blaze,type=!zombified_piglin,type=!cave_spider,limit=1] run setblock ~ ~ ~ fire keep
fill ~-4 ~-1 ~-4 ~4 ~3 ~4 redstone_torch replace torch