tag @s[type=#custom:living] add killable
tag @s[type=#custom:undead] add killable
tag @s[type=end_crystal] add killable
tag @s[type=ender_dragon] add killable
tag @s[tag=killable] add basic
tag @s[type=player,gamemode=!creative,gamemode=!spectator] add killable
tag @s[type=player,tag=!killable] add instakill_immune

tag @s[nbt={Invulnerable:1b}] remove killable
tag @s[nbt={Invulnerable:1b}] remove basic

tag @s add typed