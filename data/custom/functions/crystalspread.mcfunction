fill ~-1.3 ~-0.3 ~-1.3 ~1.3 ~4.3 ~1.3 cave_air replace stone
fill ~-2.3 ~0.7 ~-1.3 ~2.3 ~3.3 ~1.3 cave_air replace stone
fill ~-1.3 ~0.7 ~-2.3 ~1.3 ~3.3 ~2.3 cave_air replace stone
fill ~-1 ~ ~-1 ~1 ~4 ~1 cave_air replace deepslate
fill ~-2 ~1 ~-1 ~2 ~3 ~1 cave_air replace deepslate
fill ~-1 ~1 ~-2 ~1 ~3 ~2 cave_air replace deepslate
fill ~-1 ~1 ~-1 ~1 ~3 ~1 cave_air
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["randocrystal","c1"]}
summon area_effect_cloud ~1.4142 ~ ~ {Duration:130,Tags:["randocrystal","c2"]}
summon area_effect_cloud ~ ~ ~1.4142 {Duration:130,Tags:["randocrystal","c3"]}
summon area_effect_cloud ~-1.4142 ~ ~ {Duration:130,Tags:["randocrystal","c4"]}
summon area_effect_cloud ~ ~ ~-1.4142 {Duration:130,Tags:["randocrystal","c5"]}
summon area_effect_cloud ~1 ~ ~1 {Duration:130,Tags:["randocrystal"]}
summon area_effect_cloud ~1 ~ ~-1 {Duration:130,Tags:["randocrystal"]}
summon area_effect_cloud ~-1 ~ ~1 {Duration:130,Tags:["randocrystal"]}
summon area_effect_cloud ~-1 ~ ~-1 {Duration:130,Tags:["randocrystal"]}
tag @e[tag=randocrystal,sort=random,limit=3] add crystal
kill @e[tag=randocrystal,tag=!crystal]