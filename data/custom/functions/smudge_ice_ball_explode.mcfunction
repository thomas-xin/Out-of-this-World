summon area_effect_cloud ~ ~ ~ {Duration:1,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
kill @s
execute store result entity f266414c-caac-11eb-b8bc-0242ac130003 Rotation[0] float 1 run data get entity @e[tag=blow_centre,sort=random,limit=1] Rotation[0]
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon area_effect_cloud ~ ~ ~ {Duration:19,Tags:["ice_shockwave","s1"]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon area_effect_cloud ~ ~ ~ {Duration:19,Tags:["ice_shockwave","s2"]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon area_effect_cloud ~ ~ ~ {Duration:19,Tags:["ice_shockwave","s3"]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon area_effect_cloud ~ ~ ~ {Duration:19,Tags:["ice_shockwave","s4"]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon area_effect_cloud ~ ~ ~ {Duration:19,Tags:["ice_shockwave","s5"]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon area_effect_cloud ~ ~ ~ {Duration:19,Tags:["ice_shockwave","s6"]}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @e[tag=s1,distance=...1,limit=1] ~ ~ ~ ~ ~
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @e[tag=s2,distance=...1,limit=1] ~ ~ ~ ~60 ~
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @e[tag=s3,distance=...1,limit=1] ~ ~ ~ ~120 ~
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @e[tag=s4,distance=...1,limit=1] ~ ~ ~ ~180 ~
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @e[tag=s5,distance=...1,limit=1] ~ ~ ~ ~240 ~
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @e[tag=s6,distance=...1,limit=1] ~ ~ ~ ~300 ~
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tag @e[tag=s1,distance=...1,limit=1] remove s1
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tag @e[tag=s2,distance=...1,limit=1] remove s2
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tag @e[tag=s3,distance=...1,limit=1] remove s3
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tag @e[tag=s4,distance=...1,limit=1] remove s4
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tag @e[tag=s5,distance=...1,limit=1] remove s5
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tag @e[tag=s6,distance=...1,limit=1] remove s6
execute at f266414c-caac-11eb-b8bc-0242ac130003 run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0,ExplosionRadius:1}
execute at f266414c-caac-11eb-b8bc-0242ac130003 run kill @e[type=area_effect_cloud,tag=!ice_shockwave,distance=..5]
kill f266414c-caac-11eb-b8bc-0242ac130003