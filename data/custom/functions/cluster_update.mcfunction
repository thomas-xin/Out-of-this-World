tag @s add break_stone

execute at @s[tag=nocluster,tag=!ultrablast,nbt={inGround:1b}] run summon wither_skull ^ ^ ^-.5 {direction:[0.,-0.1,0.],power:[0.,-0.3,0.],Tags:["despawn"]}
execute at @s[tag=nocluster,tag=!ultrablast,nbt={inGround:1b}] run setblock ^ ^ ^-.5 black_stained_glass keep
execute at @s[tag=nocluster,tag=!ultrablast,nbt={inGround:1b}] run fill ^ ^ ^-.5 ^ ^ ^-.5 cave_air replace water
execute at @s[tag=!nocluster,tag=!ultrablast,nbt={inGround:1b}] run function custom:break_blocks
execute at @s[tag=!nocluster,tag=!ultrablast,nbt={inGround:1b}] run summon fireball ^ ^ ^-0.5 {direction:[0.,-0.1,0.],power:[0.,-0.3,0.],ExplosionPower:1,Tags:["despawn"]}
execute at @s[tag=nocluster,tag=!ultrablast,nbt={inGround:1b}] run summon wither_skull ^ ^ ^-0.5 {direction:[0.,-0.1,0.],power:[0.,-0.3,0.],Tags:["despawn"]}
execute at @s[tag=ultrablast,nbt={inGround:1b}] run summon area_effect_cloud ^ ^ ^-0.5 {Duration:1,Tags:["blast","despawn","secondary","nocluster"]}

kill @s[nbt={inGround:1b}]