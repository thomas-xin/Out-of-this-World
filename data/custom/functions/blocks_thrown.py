weights = """
slime_block							0.05
honey_block							0.05
#snow								0.1		powder_snow
red_mushroom_block					0.2
brown_mushroom_block				0.2
shroomlight							0.2		brown_mushroom_block
#impermeable						0.3		red_sand
sea_lantern							0.3
redstone_lamp						0.3
glowstone							0.3
bee_nest							0.3		honey_block
netherrack							0.4
#nylium								0.4		netherrack
target								0.5
#soul_fire_base_blocks				0.5		soul_sand
#sand								0.5		red_sand
#dirt								0.5		dirt
farmland							0.5		dirt
dirt_path							0.5		dirt
#ice								0.5		powder_snow
magma_block							0.5		netherrack
hay_block							0.5
#mineable/shovel					0.6		gravel
wet_sponge							0.6		sponge
sponge								0.6
honeycomb_block						0.6
beehive								0.6		honeycomb_block
sculk								0.6		sculk_catalyst
calcite								0.75
#wool								0.8		black_wool
sandstone							0.8		red_sandstone
chiseled_sandstone					0.8		red_sandstone
cut_sandstone						0.8		red_sandstone
smooth_sandstone					0.8		red_sandstone
red_sandstone						0.8
chiseled_red_sandstone				0.8		red_sandstone
cut_red_sandstone					0.8		red_sandstone
smooth_red_sandstone				0.8		red_sandstone
quartz_block						0.8
chiseled_quartz_block				0.8		quartz_block
quartz_pillar						0.8		quartz_block
quartz_bricks						0.8		quartz_block
smooth_quartz						0.8		quartz_block
pumpkin								1
carved_pumpkin						1
jack_o_lantern						1		carved_pumpkin
nether_wart_block					1
warped_wart_block					1
dripstone_block						1
budding_amethyst					1.5
amethyst_block						1.5		budding_amethyst
#logs_that_burn						2		stripped_oak_wood
#crimson_stems						2		stripped_crimson_hyphae
#warped_stems						2		stripped_warped_hyphae
bone_block							2		calcite
dried_kelp_block					2.5
composter							3		oak_planks
note_block							3		oak_planks
bookshelf							3		oak_planks
smithing_table						3		spruce_planks
lectern								3		oak_planks
fletching_table						3		birch_planks
crafting_table						3		oak_planks
cartography_table					3		dark_oak_planks
jukebox								3		oak_planks
oak_planks							3
spruce_planks						3
birch_planks						3
jungle_planks						3
acacia_planks						3
dark_oak_planks						3
crimson_planks						3
warped_planks						3
nether_quartz_ore					3		netherrack
nether_gold_ore						3		netherrack
sculk_catalyst						3
#terracotta							4.2		black_terracotta
basalt								4.2
polished_basalt						4.2		basalt
smooth_basalt						4.2		basalt
cauldron							4.5		iron_ore
hopper								4.8		iron_ore
spawner								5		iron_ore
cobblestone							6
sticky_piston						6		cobblestone
piston								6		cobblestone
coal_ore							6		cobblestone
copper_ore							6		cobblestone
iron_ore							6		cobblestone
redstone_ore						6		cobblestone
lapis_ore							6		cobblestone
gold_ore							6		cobblestone
emerald_ore							6		cobblestone
diamond_ore							6		cobblestone
smoker								6		cobblestone
observer							6		cobblestone
furnace								6		cobblestone
dropper								6		cobblestone
dispenser							6		cobblestone
blast_furnace						6		cobblestone
lodestone							6		cobblestone
tuff								6		cobblestone
#stone_bricks						6		cobblestone
stone								6		cobblestone
prismarine							6		cobblestone
prismarine_bricks					6		cobblestone
mossy_cobblestone					6		cobblestone
purpur_block						6
shulker_box							6		purpur_block
purpur_pillar						6		purpur_block
nether_bricks						6		nether_bricks
red_nether_bricks					6		red_nether_bricks
andesite							6
polished_andesite					6		andesite
granite								6
polished_granite					6		granite
diorite								6
polished_diorite					6		diorite
deepslate							6		cobbled_deepslate
deepslate_coal_ore					6		cobbled_deepslate
deepslate_copper_ore				6		cobbled_deepslate
deepslate_iron_ore					6		cobbled_deepslate
deepslate_redstone_ore				6		cobbled_deepslate
deepslate_lapis_ore					6		cobbled_deepslate
deepslate_gold_ore					6		cobbled_deepslate
deepslate_emerald_ore				6		cobbled_deepslate
deepslate_diamond_ore				6		cobbled_deepslate
dark_prismarine						6		cobbled_deepslate
bricks								6		terracotta
blackstone							6
polished_blackstone					6		blackstone
chiseled_polished_blackstone		6		blackstone
polished_blackstone_bricks			6		blackstone
cracked_polished_blackstone_bricks	6		blackstone
end_stone							9
end_stone_bricks					9		end_stone
lava								10		magma_block
anvil								12		iron_ore
obsidian							12
ender_chest							12		obsidian
enchanting_table					12		obsidian
crying_obsidian						12
respawn_anchor						12		crying_obsidian
ancient_debris						12
reinforced_deepslate				12		cobbled_deepslate
"""
lines = weights.strip().splitlines()
tlist = [line.split() for line in lines]

heavy = [
	"playsound minecraft:entity.ghast.shoot neutral @a ~ ~ ~ 6 0.2",
	"execute positioned ~ ~-1 ~ run function custom:tornado_light",
]
light = [
	"particle sweep_attack ~ ~ ~ 0 0 0 1 0 force",
	"particle sweep_attack ~ ~1 ~ 0.5 0 0.5 1 3 force",
	"playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5",
	"fill ~-1.5 ~-3.5 ~-1.5 ~1.5 ~5 ~1.5 air replace water",
	"fill ~-4 ~-5 ~-4 ~4 ~7 ~4 air replace #leaves",
]
ultralight = [
	"fill ~-1.5 ~-3.5 ~-1.5 ~1.5 ~3 ~1.5 air replace water",
	"fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #leaves",
]

thrown = set()
for t in tlist:
	if len(t) == 2:
		t.append(t[0])
	name, res, target = t
	res = float(res)
	vel = 1 / res ** 0.5
	rad = 2 / res ** 0.5
	com = (
		f"fill ~{-rad} ~{-rad / 2} ~{-rad} ~{rad} ~{rad * 1.5} ~{rad} "
		+ 'command_block{Command:"function custom:thrown_'
		+ target
		+ '",auto:1b} replace '
		+ name
	)
	if res < 3:
		light.append(com)
		rad /= 3
		com = (
			f"fill ~{-rad} ~{-rad / 2} ~{-rad} ~{rad} ~{rad * 1.5} ~{rad} "
			+ 'command_block{Command:"function custom:thrown_'
			+ target
			+ '",auto:1b} replace '
			+ name
		)
		ultralight.append(com)
	else:
		heavy.append(com)
	if target not in thrown:
		with open(f"thrown_{target}.mcfunction", "w") as f:
			f.write("setblock ~ ~ ~ air\n")
			f.write(
				"summon falling_block ~ ~0.5 ~ {BlockState:{Name:"
				+ target
				+ "},Time:1,Motion:[0.,"
				+ str(vel)
				+ ',0.],Tags:["thrown"]}'
			)

with open("tornado_heavy.mcfunction", "w") as f:
	f.write("\n".join(heavy))
with open("tornado_light.mcfunction", "w") as f:
	f.write("\n".join(light))
with open("tornado_ultralight.mcfunction", "w") as f:
	f.write("\n".join(ultralight))