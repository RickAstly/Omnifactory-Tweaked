print("--- loading ExtraUtilities2.zs ---");


//XU2 Machine Block
recipes.removeByRecipeName("extrautils2:machine_base");
recipes.addShaped(<extrautils2:machine>, [
[<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>], 
[<gregtech:meta_item_1:12184>,<actuallyadditions:item_misc:5>,<gregtech:meta_item_1:12184>], 
[<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>]]);		
	
var furnGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var redPlate = <gregtech:meta_item_1:12237>;

//XU2 Generators
recipes.remove(furnGen);
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));	

recipes.addShaped(furnGen, [
	[<gregtech:meta_item_1:12197>,<gregtech:meta_item_1:12197>,<gregtech:meta_item_1:12197>],
	[<gregtech:meta_item_1:12197>,<minecraft:furnace>,<gregtech:meta_item_1:12197>],
	[<gregtech:meta_item_1:12237>,<gregtech:meta_item_1:12237>,<gregtech:meta_item_1:12237>]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], 
	[<minecraft:cobblestone>, <extrautils2:machine>, <minecraft:cobblestone>], 
	[redPlate, furnGen, redPlate]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [
	[<minecraft:potato>, <minecraft:potato>, <minecraft:potato>], 
	[<minecraft:potato>, <extrautils2:machine>, <minecraft:potato>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), [
	[<minecraft:lava_bucket:*>, <gregtech:meta_item_1:12026>, <minecraft:lava_bucket:*>], 
	[<gregtech:meta_item_1:12026>, <extrautils2:machine>, <gregtech:meta_item_1:12026>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}), [
	[redPlate, <gregtech:meta_block_compressed_14:14>, redPlate], 
	[redPlate, <extrautils2:machine>, redPlate], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), [
	[<gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12218>], 
	[<gregtech:meta_item_1:12218>, <extrautils2:machine>, <gregtech:meta_item_1:12218>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [
	[<minecraft:brewing_stand:*>,<minecraft:brewing_stand:*>,<minecraft:brewing_stand:*>], 
	[<minecraft:brewing_stand:*>,<extrautils2:machine>,<minecraft:brewing_stand:*>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [
	[<minecraft:dye:9>, <minecraft:dye:9>, <minecraft:dye:9>], 
	[<minecraft:dye:9>, <extrautils2:machine>, <minecraft:dye:9>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
	[<extrautils2:redstoneclock>,<extrautils2:redstoneclock>,<extrautils2:redstoneclock>], 
	[<extrautils2:redstoneclock>,<extrautils2:machine>,<extrautils2:redstoneclock>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [
	[<gregtech:meta_item_1:12701>,<gregtech:meta_block_compressed_20:5>,<gregtech:meta_item_1:12701>], 
	[<gregtech:meta_item_1:12701>,<extrautils2:machine>,<gregtech:meta_item_1:12701>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [
	[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>],
	[<minecraft:slime>,<extrautils2:machine>,<minecraft:slime>],
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), [
	[<gregtech:meta_item_1:12712>,<enderio:item_material:42>,<gregtech:meta_item_1:12712>],
	[<gregtech:meta_item_1:12712>,<extrautils2:machine>,<gregtech:meta_item_1:12712>],
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), [
	[<minecraft:enchanting_table:*>,<minecraft:enchanting_table:*>,<minecraft:enchanting_table:*>], 
	[<minecraft:enchanting_table:*>,<extrautils2:machine>,<minecraft:enchanting_table:*>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}), [
	[<minecraft:purpur_block:*>, <minecraft:end_rod:*>, <minecraft:purpur_block:*>], 
	[<minecraft:purpur_block:*>, <extrautils2:machine>, <minecraft:purpur_block:*>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), [
	[<minecraft:ice:*>,<minecraft:ice:*>,<minecraft:ice:*>], 
	[<minecraft:ice:*>,<extrautils2:machine>,<minecraft:ice:*>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<draconicevolution:generator>, [
	[<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>], 
	[<draconicevolution:draconium_ingot>,<extrautils2:machine>,<draconicevolution:draconium_ingot>], 
	[<gregtech:meta_block_compressed_14:14>, furnGen, <gregtech:meta_block_compressed_14:14>]]);
		
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [
	[<gregtech:meta_item_1:12331>,<gregtech:meta_item_1:12331>,<gregtech:meta_item_1:12331>], 
	[<gregtech:meta_item_1:12331>,<extrautils2:machine>,<gregtech:meta_item_1:12331>], 
	[<gregtech:meta_block_compressed_14:14>, <draconicevolution:generator>, <gregtech:meta_block_compressed_14:14>]]);	
	
//Resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>, [
	[<extrautils2:ingredients>, <gregtech:meta_item_1:12237>, <extrautils2:ingredients>], 
	[<gregtech:meta_item_1:12237>, <extrautils2:machine>,<gregtech:meta_item_1:12237>], 
	[<extrautils2:ingredients>, <gregtech:meta_item_1:12237>, <extrautils2:ingredients>]]);
//Trash Can (Items)
recipes.remove(<extrautils2:trashcan>);
recipes.addShaped(<extrautils2:trashcan>, [
	[null, <minecraft:iron_trapdoor>, null],
	[<gregtech:meta_item_1:12033>, <minecraft:chest>, <gregtech:meta_item_1:12033>],
	[null, <gregtech:meta_item_1:12033>, null]]);

//Trash Can (Fluid)
recipes.remove(<extrautils2:trashcanfluid>);
recipes.addShaped(<extrautils2:trashcanfluid>, [
	[null, <minecraft:iron_trapdoor>, null],
	[<gregtech:meta_item_1:12033>, <minecraft:bucket>, <gregtech:meta_item_1:12033>],
	[null, <gregtech:meta_item_1:12033>, null]]);

//Trash Can (Energy)
recipes.remove(<extrautils2:trashcanenergy>);
recipes.addShaped(<extrautils2:trashcanenergy>, [
	[null, <minecraft:iron_trapdoor>, null],
	[<gregtech:meta_item_1:12033>, <minecraft:redstone_block>, <gregtech:meta_item_1:12033>],
	[null, <gregtech:meta_item_1:12033>, null]]);


recipes.remove(<extrautils2:passivegenerator>);	
recipes.remove(<extrautils2:passivegenerator:1>);	
recipes.remove(<extrautils2:passivegenerator:2>);	
recipes.remove(<extrautils2:passivegenerator:3>);	
recipes.remove(<extrautils2:passivegenerator:4>);	
recipes.remove(<extrautils2:passivegenerator:5>);	
recipes.remove(<extrautils2:passivegenerator:8>);	
recipes.remove(<extrautils2:chunkloader>);	

//GP Solar
recipes.addShaped(<extrautils2:passivegenerator>, [
	[null,<solarflux:solar_panel_1>,null], 
	[<extrautils2:decorativesolid:2>, <extrautils2:ingredients>, <extrautils2:decorativesolid:2>]]);

//GP Lunar
recipes.addShaped(<extrautils2:passivegenerator:1>, [
	[null, <extrautils2:ingredients:3>, null], 
	[<extrautils2:ingredients:3>,<extrautils2:passivegenerator>,<extrautils2:ingredients:3>],
	[null, <extrautils2:ingredients:3>, null]]);
	
//Lava Mill
recipes.addShaped(<extrautils2:passivegenerator:2>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<extrautils2:ingredients>, <gregtech:machine:502>, <extrautils2:ingredients>], 
	[<extrautils2:decorativesolid:3>, <armorplus:block_infused_lava_crystal>, <extrautils2:decorativesolid:3>]]);
	
//Water Mill
recipes.addShaped(<extrautils2:passivegenerator:3>, [
	[<extrautils2:decorativesolid:3>,  <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<gregtech:meta_item_1:32611>, <gregtech:machine:502>, <gregtech:meta_item_1:32611>], 
	[<extrautils2:decorativesolid:3>,  <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>]]);
	
//Wind Mill	
recipes.addShaped(<extrautils2:passivegenerator:4>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>], 
	[<gregtech:meta_item_2:18184>, <extrautils2:ingredients:1>, <gregtech:machine:502>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>]]);
	
//Fire Mill
recipes.addShaped(<extrautils2:passivegenerator:5>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<extrautils2:ingredients>, <gregtech:machine:502>, <extrautils2:ingredients>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:13>, <extrautils2:decorativesolid:3>]]);
	
//Chunk Loader
recipes.addShaped(<extrautils2:chunkloader>, [
	[<gregtech:meta_item_1:14701>, <extrautils2:ingredients:2>, <gregtech:meta_item_1:14701>], 
	[<gregtech:meta_item_1:14701>, <enderio:block_alloy:1>, <gregtech:meta_item_1:14701>], 
	[null, <enderio:block_alloy:1>, null]]);

//Dragon Mill
recipes.addShaped(<extrautils2:passivegenerator:8>, [
	[<gregtech:meta_block_compressed_4:8>,<gregtech:meta_block_compressed_4:8>,<gregtech:meta_block_compressed_4:8>], 
	[<extrautils2:ingredients:2>, <extendedcrafting:storage:2>, <extrautils2:ingredients:2>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:2>, <extrautils2:decorativesolid:3>]]);
	
//Iron Drum
recipes.removeByRecipeName("extrautils2:drum_256");
recipes.addShaped(<extrautils2:drum:1>, [
	[<gregtech:meta_item_1:12197>, <minecraft:heavy_weighted_pressure_plate:*>, <gregtech:meta_item_1:12197>], 
	[<gregtech:meta_item_1:12197>, <minecraft:cauldron:*>, <gregtech:meta_item_1:12197>], 
	[<gregtech:meta_item_1:12197>, <minecraft:heavy_weighted_pressure_plate:*>, <gregtech:meta_item_1:12197>]]);
	
//Reinforced Drum
recipes.removeByRecipeName("extrautils2:drum_4096");
recipes.addShaped(<extrautils2:drum:2>, [
	[<gregtech:meta_item_1:12702>, <gregtech:machine:2198>, <gregtech:meta_item_1:12702>], 
	[<gregtech:meta_item_1:12702>, <extrautils2:drum:1>, <gregtech:meta_item_1:12702>], 
	[<gregtech:meta_item_1:12702>, <gregtech:machine:2198>, <gregtech:meta_item_1:12702>]]);
	
//Demonic	
recipes.removeByRecipeName("extrautils2:drum_65536");
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:drum:3>,[
	[<extrautils2:simpledecorative:1>,<moreplates:demon_plate>,<moreplates:demon_plate>,<moreplates:demon_plate>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<gregtech:machine:2199>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<extrautils2:drum:2>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<gregtech:machine:2199>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<moreplates:demon_plate>,<moreplates:demon_plate>,<moreplates:demon_plate>,<extrautils2:simpledecorative:1>]]);		
	
//Solar
recipes.remove(<actuallyadditions:block_furnace_solar>);
recipes.addShaped(<actuallyadditions:block_furnace_solar>, [
	[<extrautils2:ingredients>, <solarflux:solar_panel_1>, <extrautils2:ingredients>],
	[null,<extrautils2:decorativesolid:3>,null]]);

print("--- ExtraUtilities2.zs initialized ---");