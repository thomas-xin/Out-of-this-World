say Welcome to Out of this World!
kill @e[tag=angle]
summon armor_stand 0 -64 0 {Invulnerable:1,Marker:1,NoGravity:1,Tags:["angle"]}

scoreboard objectives add count dummy
scoreboard objectives add e_strength dummy
scoreboard objectives add e_check dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add damaged dummy
scoreboard objectives add health_target dummy

scoreboard objectives add trident minecraft.used:minecraft.trident
scoreboard objectives add cs_weapons minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add left minecraft.custom:minecraft.leave_game

scoreboard objectives add player_id dummy
scoreboard objectives add wither_id dummy
scoreboard objectives add smudge_id dummy
scoreboard objectives add compare_id dummy
scoreboard objectives add cs_delay dummy
scoreboard objectives add spur_charge dummy

scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add curr_xp xp
scoreboard objectives add prev_xp dummy

scoreboard objectives add var0 dummy
scoreboard objectives add var1 dummy
scoreboard objectives add var2 dummy
scoreboard objectives add var3 dummy

scoreboard players set __1__ var0 1
scoreboard players set __5__ var0 5
scoreboard players set __10__ var0 10
scoreboard players set __-25__ var0 -25
scoreboard players set __512__ var0 512
scoreboard players set __1024__ var0 1024
scoreboard players set __2048__ var0 2048
scoreboard players set __16384__ var0 16384

scoreboard objectives setdisplay sidebar count

difficulty hard

gamerule commandBlockOutput false