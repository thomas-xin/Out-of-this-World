summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"]}

summon item ~ ~ ~ {Item:{id:"minecraft:budding_amethyst",Count:6b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:budding_amethyst",Count:2b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:budding_amethyst",Count:1b}}

execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:2b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b}}

summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:1b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:32b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:16b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:8b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:4b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:2b}}
execute as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",Count:1b}}

kill @e[tag=random]

summon experience_orb ~.5 ~ ~.5 {Value:250}
summon experience_orb ~-.5 ~ ~.5 {Value:250}
summon experience_orb ~.5 ~ ~-.5 {Value:250}
summon experience_orb ~-.5 ~ ~-.5 {Value:250}

playsound entity.fox.death neutral @a[distance=..96] ~ ~ ~ 5 0.9 0.1
kill @e[tag=smudge_boss,distance=..1]
bossbar set smudge_boss value 0
bossbar set smudge_boss players
execute at @e[tag=smudge_boss,nbt={Glowing:1b},sort=random,limit=1] run bossbar set smudge_boss players @a[distance=..256]
kill @e[tag=assigned]
kill @s