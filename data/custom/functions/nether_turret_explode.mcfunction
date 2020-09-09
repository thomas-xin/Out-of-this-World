summon creeper ~ ~.5 ~ {ExplosionRadius:8b,powered:1b,Fuse:0,ignited:1b,NoGravity:1b}
setblock ~ ~ ~ ancient_debris destroy
setblock ~ ~1 ~ ancient_debris destroy
kill @e[type=elder_guardian,distance=..5]
execute as @e[type=item,distance=..5, limit=64] run data merge entity @s {Health:99}
effect give @e[distance=..5] wither 10 4
effect give @e[distance=..12] mining_fatigue 400 3
kill @s