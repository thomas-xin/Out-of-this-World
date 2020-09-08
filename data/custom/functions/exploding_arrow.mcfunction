execute at @e[type=arrow,nbt={Color:257}] positioned ^ ^ ^-.5 run kill @e[tag=e_arrow,distance=..7]
execute at @e[tag=e_arrow] run function custom:e_arrow
execute at @e[type=arrow,nbt={Color:257}] run summon area_effect_cloud ^ ^ ^ {Duration:2,Tags:["e_arrow"]}
kill @e[type=arrow,nbt={inGround:1b,Color:257}]