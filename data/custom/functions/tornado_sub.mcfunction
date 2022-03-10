execute unless entity @e[type=area_effect_cloud,tag=timed,distance=..8] run kill @e[tag=rotate,distance=..8]
execute unless entity @e[type=area_effect_cloud,tag=timed,distance=..8] run kill @e[tag=timed,distance=..8]
execute positioned ~ ~2 ~ unless entity @e[type=area_effect_cloud,tag=timed,distance=..8,limit=1] run kill @s
particle sweep_attack ~ ~2 ~ 6 3 6 0.5 8 force
particle sweep_attack ~ ~4 ~ 1 1 1 0.5 1 force
summon armor_stand ~ ~6 ~ {Invisible:1,Tags:["vertical","v1"]}
summon armor_stand ~ ~8 ~ {Invisible:1,Tags:["vertical","v1"]}
summon armor_stand ~ ~10 ~ {Invisible:1,Tags:["vertical","v1"]}
summon armor_stand ~ ~12 ~ {Invisible:1,Tags:["vertical","v1"]}
summon armor_stand ~ ~14 ~ {Invisible:1,Tags:["vertical","v1"]}
summon armor_stand ~ ~16 ~ {Invisible:1,Tags:["vertical","v1"]}
summon armor_stand ~ ~18 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~20 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~22 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~24 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~26 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~28 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~30 ~ {Invisible:1,Tags:["vertical","v2"]}
summon armor_stand ~ ~32 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~35 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~38 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~41 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~44 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~47 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~50 ~ {Invisible:1,Tags:["vertical","v3"]}
summon armor_stand ~ ~54 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~58 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~62 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~66 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~70 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~74 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~78 ~ {Invisible:1,Tags:["vertical","v4"]}
summon armor_stand ~ ~82 ~ {Invisible:1,Tags:["vertical","v4"]}
particle explosion_emitter ~ 108 ~ 2 1 2 0.5 3 force
particle explosion_emitter ~ 112 ~ 3 1 3 0.5 4 force
particle explosion_emitter ~ 116 ~ 4 1 4 0.5 5 force
particle explosion ~ 119 ~ 8 1 8 0.01 64 force
particle explosion ~ 121 ~ 12 1 12 0.02 144 force
particle explosion ~ 124 ~ 16 1 16 0.03 256 force
particle explosion ~ 126 ~ 20 1 20 0.04 400 force
tag @e[distance=..3,type=!armor_stand,type=!area_effect_cloud,type=!falling_block,limit=3] add flying
effect give @e[distance=..3] levitation 1 47
execute positioned ~ ~6 ~ run tag @e[distance=..2.5,type=!armor_stand,type=!area_effect_cloud,type=!falling_block] add flying
execute positioned ~ ~6 ~ run effect give @e[distance=..2.5] levitation 1 44
execute positioned ~ ~12 ~ run tag @e[distance=..3,type=!armor_stand,type=!area_effect_cloud,type=!falling_block] add flying
execute positioned ~ ~12 ~ run effect give @e[distance=..3] levitation 1 44
execute positioned ~ ~18 ~ run tag @e[distance=..3.5,type=!armor_stand,type=!area_effect_cloud,type=!falling_block] add flying
execute positioned ~ ~18 ~ run effect give @e[distance=..3.5] levitation 1 41
execute positioned ~ ~24 ~ run tag @e[distance=..4,type=!falling_block,type=!armor_stand,type=!area_effect_cloud] add flying
execute positioned ~ ~24 ~ run effect give @e[distance=..4] levitation 1 38
execute positioned ~ ~30 ~ run tag @e[distance=..4.5,type=!falling_block,type=!armor_stand,type=!area_effect_cloud] add flying
execute positioned ~ ~30 ~ run effect give @e[distance=..4.5] levitation 1 38
summon armor_stand ~ ~ ~ {Tags:["column"],Invulnerable:1b,Invisible:1b}
summon armor_stand ~ ~10 ~ {Tags:["column","vertical"],Invulnerable:1b,Invisible:1b}
summon armor_stand ~ ~20 ~ {Tags:["column","vertical"],Invulnerable:1b,Invisible:1b}
summon armor_stand ~ ~30 ~ {Tags:["column","vertical"],Invulnerable:1b,Invisible:1b}
execute as @e[tag=vertical] at @s if entity @s[y=112,dy=256] run kill @s
execute at @e[tag=vertical,tag=v1] run particle explosion ~ ~ ~ 0.5 0 0.5 0.5 3 force
execute at @e[tag=vertical,tag=v2] run particle explosion ~ ~ ~ 1 0 1 0.5 6 force
execute at @e[tag=vertical,tag=v3] run particle explosion ~ ~ ~ 1.5 2 1.5 0.5 9 force
execute at @e[tag=vertical,tag=v4] run particle explosion ~ ~ ~ 2 1 2 0.5 12 force
kill @e[tag=vertical,tag=!column]