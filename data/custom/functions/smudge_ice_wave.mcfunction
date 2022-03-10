summon area_effect_cloud ~ ~ ~ {Duration:96,Tags:["ice_shockwave","s1"]}
summon area_effect_cloud ~ ~ ~ {Duration:96,Tags:["ice_shockwave","s2"]}
summon area_effect_cloud ~ ~ ~ {Duration:96,Tags:["ice_shockwave","s3"]}
tp @e[tag=s1] ~ ~ ~ ~-30 ~
tp @e[tag=s2] ~ ~ ~ ~ ~
tp @e[tag=s3] ~ ~ ~ ~30 ~
tag @e[tag=s1] remove s1
tag @e[tag=s2] remove s2
tag @e[tag=s3] remove s3

playsound minecraft:entity.illusioner.cast_spell player @a[distance=..48] ~ ~ ~ 2.5