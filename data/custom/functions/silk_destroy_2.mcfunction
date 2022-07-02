execute if block ~ ~ ~ snow_block run summon item ~ ~ ~ {Item:{id:snow_block,Count:1},Health:80}
execute if block ~ ~ ~ frosted_ice run summon item ~ ~ ~ {Item:{id:ice,Count:1},Health:80}
execute if block ~ ~ ~ ice run summon item ~ ~ ~ {Item:{id:ice,Count:1},Health:80}
execute if block ~ ~ ~ packed_ice run summon item ~ ~ ~ {Item:{id:packed_ice,Count:1},Health:80}
execute if block ~ ~ ~ blue_ice run summon item ~ ~ ~ {Item:{id:blue_ice,Count:1},Health:80}

execute if block ~ ~ ~ #ice run setblock ~ ~ ~ air replace
execute if block ~ ~ ~ #snow run setblock ~ ~ ~ air replace

execute if block ~ ~ ~ gravel run summon item ~ ~ ~ {Item:{id:gravel,Count:1},Health:80}
execute if block ~ ~ ~ clay run summon item ~ ~ ~ {Item:{id:clay,Count:1},Health:80}

execute if block ~ ~ ~ farmland run summon item ~ ~ ~ {Item:{id:farmland,Count:1},Health:80}
execute if block ~ ~ ~ grass_block run summon item ~ ~ ~ {Item:{id:grass_block,Count:1},Health:80}
execute if block ~ ~ ~ dirt_path run summon item ~ ~ ~ {Item:{id:dirt_path,Count:1},Health:80}
execute if block ~ ~ ~ mycelium run summon item ~ ~ ~ {Item:{id:mycelium,Count:1},Health:80}
execute if block ~ ~ ~ podzol run summon item ~ ~ ~ {Item:{id:podzol,Count:1},Health:80}

execute if block ~ ~ ~ #mineable/shovel run setblock ~ ~ ~ air replace

execute if block ~ ~ ~ crimson_nylium run summon item ~ ~ ~ {Item:{id:crimson_nylium,Count:1},Health:80}
execute if block ~ ~ ~ warped_nylium run summon item ~ ~ ~ {Item:{id:warped_nylium,Count:1},Health:80}

execute if block ~ ~ ~ #nylium run setblock ~ ~ ~ air replace

execute if block ~ ~ ~ jungle_leaves run summon item ~ ~ ~ {Item:{id:jungle_leaves,Count:1},Health:80}
execute if block ~ ~ ~ oak_leaves run summon item ~ ~ ~ {Item:{id:oak_leaves,Count:1},Health:80}
execute if block ~ ~ ~ spruce_leaves run summon item ~ ~ ~ {Item:{id:spruce_leaves,Count:1},Health:80}
execute if block ~ ~ ~ dark_oak_leaves run summon item ~ ~ ~ {Item:{id:dark_oak_leaves,Count:1},Health:80}
execute if block ~ ~ ~ acacia_leaves run summon item ~ ~ ~ {Item:{id:acacia_leaves,Count:1},Health:80}
execute if block ~ ~ ~ birch_leaves run summon item ~ ~ ~ {Item:{id:birch_leaves,Count:1},Health:80}

execute if block ~ ~ ~ #leaves run setblock ~ ~ ~ air replace

execute unless block ~ ~ ~ air run function custom:silk_destroy_3