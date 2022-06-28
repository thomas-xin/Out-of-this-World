kill @s[tag=random]
kill @s[tag=lightning]

tag @s[tag=immune] remove immune
execute if entity @s[tag=rotate] run tp @s ~ ~ ~ ~16 ~

execute if entity @s[tag=despawn,tag=!no_destroy,nbt={inGround:1b}] positioned ^ ^ ^.4 run function custom:break_blocks
kill @s[tag=despawn,nbt={inGround:1b}]
execute if entity @s[tag=blade_bullet,tag=level3] run kill @e[tag=blade3,distance=..4,sort=nearest,limit=5]
execute if entity @s[tag=blade3] positioned ^ ^ ^.1 run function custom:blade3
execute if entity @s[tag=king] unless entity @e[tag=blade3,distance=..4,limit=1] run data merge entity @s {DeathTime:19,Health:0}
execute if entity @s[tag=exp_spawn] run summon experience_orb ~ ~ ~ {Value:1}

execute if entity @s[tag=despawn] run function custom:cs_bullet