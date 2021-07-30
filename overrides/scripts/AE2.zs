#ignoreBracketErrors

import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;
import scripts.CommonVars.makeShaped as makeShaped;

//Silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
Inscriber.addRecipe(<appliedenergistics2:material:20>, <gregtech:meta_item_1:12061>, true, <appliedenergistics2:material:19>);	
	
//Engineering Processor	
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <contenttweaker:refinedcircuit>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 		
Inscriber.addRecipe(<appliedenergistics2:material:17>, <gregtech:meta_item_1:12111>, true, <appliedenergistics2:material:14>);		
	
//Calculation Processor
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <contenttweaker:refinedcircuit>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 		
Inscriber.addRecipe(<appliedenergistics2:material:16>, <gregtech:meta_item_1:12202>, true, <appliedenergistics2:material:13>);	
	
//Logic Processor
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <contenttweaker:refinedcircuit>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 		
Inscriber.addRecipe(<appliedenergistics2:material:18>, <gregtech:meta_item_1:12026>, true, <appliedenergistics2:material:15>);		
	
//ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
	[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:32681>,<gregtech:meta_item_1:12001>],
	[<ore:circuitBasic>,<appliedenergistics2:chest>,<ore:circuitBasic>],
	[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:32691>,<gregtech:meta_item_1:12001>]]);	
	
//ME Inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
	[<gregtech:meta_item_1:12704>,<gregtech:meta_item_1:32641>,<gregtech:meta_item_1:12704>],
	[<appliedenergistics2:material:7>,<gregtech:machine:502>,<gregtech:meta_item_1:12704>],
	[<gregtech:meta_item_1:12704>,<gregtech:meta_item_1:32641>,<gregtech:meta_item_1:12704>]]);		
	
//Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52> * 8, [
	[<gregtech:meta_item_2:16062>,<gregtech:meta_item_2:16062>,<gregtech:meta_item_2:16062>], 
	[<gregtech:meta_item_1:12141>,<ore:circuitAdvanced>,<gregtech:meta_item_1:12141>],
	[<gregtech:meta_item_1:12141>, <gregtech:meta_item_1:12141>, <gregtech:meta_item_1:12141>]]);	

//Crafting CPU
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
	[<gregtech:meta_item_1:12001>, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12001>],
	[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>],
	[<gregtech:meta_item_1:12001>, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12001>]]);
	
//Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [
	[<gregtech:meta_item_1:12001>, <appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12001>], 
	[<appliedenergistics2:material:44>, <enderio:block_crafter>, <appliedenergistics2:material:43>], 
	[<gregtech:meta_item_1:12001>, <appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12001>]]);
	
//Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder().inputs([<appliedenergistics2:material:11>]).outputs(<appliedenergistics2:part:140> * 2).duration(100).EUt(16).buildAndRegister();	
	
//Glass Cable
recipes.remove(<appliedenergistics2:part:16>);	
alloy.recipeBuilder().inputs([<appliedenergistics2:material:8>, <appliedenergistics2:part:140>]).outputs(<appliedenergistics2:part:16> * 2).duration(50).EUt(16).buildAndRegister();	

//Covered Cable
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:16>])
	.fluidInputs(<liquid:rubber> * 144)
	.outputs(<appliedenergistics2:part:36>)
	.duration(20).EUt(16).buildAndRegister();

assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:16>])
	.fluidInputs(<liquid:styrene_butadiene_rubber> * 96)
	.outputs(<appliedenergistics2:part:36>)
	.duration(20).EUt(16).buildAndRegister();

assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:16>])
	.fluidInputs(<liquid:silicon_rubber> * 72)
	.outputs(<appliedenergistics2:part:36>)
	.duration(20).EUt(16).buildAndRegister();
	
//ME Conduit
recipes.remove(<enderio:item_me_conduit>);	
assembler.recipeBuilder().inputs([<appliedenergistics2:part:36> * 3, <enderio:item_material:4> * 6]).outputs(<enderio:item_me_conduit> * 8).duration(100).EUt(16).buildAndRegister();	

recipes.remove(<appliedenergistics2:sky_compass>);
recipes.addShaped(<appliedenergistics2:sky_compass>,[
	[<actuallyadditions:item_crystal:3>,<gregtech:meta_item_1:12704>,<actuallyadditions:item_crystal:3>],
	[<gregtech:meta_item_1:12704>,<appliedenergistics2:material:1>,<gregtech:meta_item_1:12704>],
	[<actuallyadditions:item_crystal:3>,<gregtech:meta_item_1:12704>,<actuallyadditions:item_crystal:3>]]);

compressor.recipeBuilder().inputs([<appliedenergistics2:material:7>]).outputs(<moreplates:fluix_plate>).EUt(12).duration(20).buildAndRegister();	
compressor.recipeBuilder().inputs([<appliedenergistics2:material:12>]).outputs(<moreplates:fluix_plate>).EUt(12).duration(20).buildAndRegister();	
	
//Formation Plane	
recipes.remove(<appliedenergistics2:part:320>);	
recipes.addShaped(<appliedenergistics2:part:320>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<gregtech:meta_item_1:12001>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:12001>]]);

//Fluid Formation Plane	
recipes.remove(<appliedenergistics2:part:321>);	
recipes.addShaped(<appliedenergistics2:part:321>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<gregtech:meta_item_1:12216>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:12216>]]);

//Annialation Plane	
recipes.remove(<appliedenergistics2:part:300>);	
recipes.addShaped(<appliedenergistics2:part:300>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<gregtech:meta_item_1:12001>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:12001>]]);

//Fluid Annialation Plane	
recipes.remove(<appliedenergistics2:part:302>);	
recipes.addShaped(<appliedenergistics2:part:302>, [[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>], [<gregtech:meta_item_1:12216>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:12216>]]);

//Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);	
recipes.addShapeless(<appliedenergistics2:part:520>, [<appliedenergistics2:part:380>, <gregtech:meta_item_1:12216>, <appliedenergistics2:material:22>]);

//Export Bus
recipes.remove(<appliedenergistics2:part:260>);	
recipes.addShaped(<appliedenergistics2:part:260>, [
	[<gregtech:meta_item_1:12001>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:12001>], 
	[null, <gregtech:meta_item_1:32641>, null]]);

//Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);	
recipes.addShaped(<appliedenergistics2:part:261>, [
	[<gregtech:meta_item_1:12216>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:12216>], 
	[null, <gregtech:meta_item_1:32641>, null]]);

//Import Bus
recipes.remove(<appliedenergistics2:part:240>);	
recipes.addShaped(<appliedenergistics2:part:240>, [
	[null, <appliedenergistics2:material:44>, null], 
	[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:32641>, <gregtech:meta_item_1:12001>]]);

//Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);	
recipes.addShaped(<appliedenergistics2:part:241>, [
	[null, <appliedenergistics2:material:44>, null], 
	[<gregtech:meta_item_1:12216>, <gregtech:meta_item_1:32641>, <gregtech:meta_item_1:12216>]]);

//Storage Bus
recipes.remove(<appliedenergistics2:part:220>);	
recipes.addShapeless(<appliedenergistics2:part:220>, [<gregtech:meta_item_1:32641>, <appliedenergistics2:interface>]);
	
//Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);	
recipes.addShapeless(<appliedenergistics2:part:221>, [<gregtech:meta_item_1:32611>, <appliedenergistics2:fluid_interface>]);	
	
//P2P Tunnel
recipes.remove(<appliedenergistics2:part:460>);	
recipes.addShaped(<appliedenergistics2:part:460>, [
	[null, <gregtech:meta_item_1:12183>, null], 
	[<gregtech:meta_item_1:12183>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12183>], 
	[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>]]);

//Card bio	
recipes.remove(<appliedenergistics2:biometric_card>);	
recipes.addShapeless(<appliedenergistics2:biometric_card>, [<appliedenergistics2:material:25>, <gregtech:meta_item_1:32692>]);		

//Memory Card	
recipes.remove(<appliedenergistics2:memory_card>);	
recipes.addShapeless(<appliedenergistics2:memory_card>, [<appliedenergistics2:material:25>, <ore:circuitAdvanced>]);
	
//Basic Card
recipes.remove(<appliedenergistics2:material:25>);	
recipes.addShaped(<appliedenergistics2:material:25>, [
[<gregtech:meta_item_2:16018>,<gregtech:meta_item_1:12033>,null],
[<gregtech:meta_item_2:16018>,<appliedenergistics2:material:23>,<gregtech:meta_item_1:12033>],
[<gregtech:meta_item_2:16018>,<gregtech:meta_item_1:12033>,null]]);

//Advanced Card
recipes.remove(<appliedenergistics2:material:28>);	
recipes.addShaped(<appliedenergistics2:material:28>, [
[<gregtech:meta_item_2:16001>,<gregtech:meta_item_1:12705>,null],
[<gregtech:meta_item_2:16001>,<appliedenergistics2:material:23>,<gregtech:meta_item_1:12705>],
[<gregtech:meta_item_2:16001>,<gregtech:meta_item_1:12705>,null]]);
	
//Matter Condensor
recipes.remove(<appliedenergistics2:condenser>);	
recipes.addShaped(<appliedenergistics2:condenser>, [
	[<gregtech:meta_item_1:12072>,<gregtech:meta_item_1:12072>,<gregtech:meta_item_1:12072>], 
	[<gregtech:meta_item_1:12072>, <gregtech:meta_item_1:32725>, <gregtech:meta_item_1:12072>], 
	[<gregtech:meta_item_1:12072>,<gregtech:meta_item_1:12072>,<gregtech:meta_item_1:12072>]]);

//Wireless Part	
recipes.remove(<appliedenergistics2:material:41>);	
recipes.addShaped(<appliedenergistics2:material:41>, [
	[null, <gregtech:meta_item_1:32683>, null], 
	[<gregtech:meta_item_1:12072>, <appliedenergistics2:material:9>, <gregtech:meta_item_1:12072>], 
	[null, <gregtech:meta_item_1:12072>, null]]);

//Level Emitters	
recipes.remove(<appliedenergistics2:part:280>);		
recipes.remove(<appliedenergistics2:part:281>);		
recipes.addShaped(<appliedenergistics2:part:280>, [[<minecraft:redstone_torch>, <gregtech:meta_item_1:12001>], [<appliedenergistics2:material:23>,<gregtech:meta_item_1:14183>]]);
recipes.addShaped(<appliedenergistics2:part:281>, [[<minecraft:redstone_torch>, <gregtech:meta_item_1:12216>], [<appliedenergistics2:material:23>,<gregtech:meta_item_1:14183>]]);	
	
Inscriber.removeRecipe(<appliedenergistics2:material:14>); 	
Inscriber.removeRecipe(<appliedenergistics2:material:13>); 	
Inscriber.removeRecipe(<appliedenergistics2:material:19>); 	
Inscriber.removeRecipe(<appliedenergistics2:material:15>); 	
engraver.recipeBuilder().inputs([<gregtech:meta_block_compressed_0:1>]).notConsumable(<ore:craftingLensRed>).outputs([<appliedenergistics2:material:14>]).EUt(120).duration(1600).buildAndRegister();
engraver.recipeBuilder().inputs([<gregtech:meta_block_compressed_0:1>]).notConsumable(<ore:craftingLensBlue>).outputs([<appliedenergistics2:material:13>]).EUt(120).duration(1600).buildAndRegister();
engraver.recipeBuilder().inputs([<gregtech:meta_block_compressed_0:1>]).notConsumable(<gregtech:meta_item_1:15111>).outputs([<appliedenergistics2:material:19>]).EUt(120).duration(1600).buildAndRegister();
engraver.recipeBuilder().inputs([<gregtech:meta_block_compressed_0:1>]).notConsumable(<ore:craftingLensLime>).outputs([<appliedenergistics2:material:15>]).EUt(120).duration(1600).buildAndRegister();
 
recipes.addShapeless(<appliedenergistics2:part:120>, [<gregtech:meta_item_1:16184>]); 
 
//Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped(<appliedenergistics2:interface>, [
	[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:32651>, <gregtech:meta_item_1:12001>], 
	[<appliedenergistics2:material:44>, <gregtech:machine:502>, <appliedenergistics2:material:43>], 
	[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>]]);
	
//Fluid Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
	[<gregtech:meta_item_1:12216>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:12216>], 
	[<appliedenergistics2:material:44>, <gregtech:machine:502>, <appliedenergistics2:material:43>], 
	[<gregtech:meta_item_1:12216>, <gregtech:meta_item_1:12216>, <gregtech:meta_item_1:12216>]]);
	
//Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
	[<gregtech:meta_item_1:12705>, <moreplates:fluix_plate>, <gregtech:meta_item_1:12705>], 
	[<moreplates:fluix_plate>, <gregtech:machine:501>, <moreplates:fluix_plate>], 
	[<gregtech:meta_item_1:12705>, <moreplates:fluix_plate>, <gregtech:meta_item_1:12705>]]);

//Fluix Plate
recipes.remove(<moreplates:fluix_plate>);
//recipes.addShaped(<moreplates:fluix_plate>, [
//	[<ore:craftingToolHardHammer>], 
//	[<appliedenergistics2:material:7>], 
//	[<appliedenergistics2:material:7>]]);	
//recipes.addShaped(<moreplates:fluix_plate>, [
//	[<ore:craftingToolHardHammer>], 
//	[<appliedenergistics2:material:12>], 
//	[<appliedenergistics2:material:12>]]);	
	
	
//Storage Housing
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [
	[<gregtech:meta_item_2:16237>, <gregtech:meta_item_1:12705>, <gregtech:meta_item_2:16237>], 
	[<gregtech:meta_item_1:12705>, null, <gregtech:meta_item_1:12705>], 
	[<gregtech:meta_item_2:16237>, <gregtech:meta_item_1:12705>, <gregtech:meta_item_2:16237>]]);	
	
	
//Illuminated Panel
recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
recipes.addShaped(<appliedenergistics2:part:180>, [
	[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>], 
	[<moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>]]);

//Charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [
	[<gregtech:meta_item_1:12704>, <gregtech:meta_item_1:12202>, <gregtech:meta_item_1:12704>], 
	[<gregtech:meta_item_1:12704>, null, null], 
	[<gregtech:meta_item_1:12704>, <gregtech:meta_item_1:12202>, <gregtech:meta_item_1:12704>]]);

//ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:part:180>, <appliedenergistics2:quartz_glass>], 
	[<appliedenergistics2:material:10>, <actuallyadditions:block_giant_chest>, <appliedenergistics2:material:12>], 
	[<enderio:block_alloy:6>, <appliedenergistics2:material:11>, <enderio:block_alloy:6>]]);

//Pattern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShapeless(<appliedenergistics2:part:340>, [<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:52>]);
	
//ME Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShapeless(<appliedenergistics2:part:380>, [<ore:itemIlluminatedPanel>, <ore:circuitBasic>]);
	
//Crystal Growth Chamber
recipes.addShaped(<ae2stuff:grower>, [
	[<enderio:block_dark_iron_bars>, <appliedenergistics2:material:1>, <enderio:block_dark_iron_bars>], 
	[<appliedenergistics2:material:1>, <gregtech:machine:501>, <appliedenergistics2:material:1>], 
	[<enderio:block_dark_iron_bars>, <appliedenergistics2:material:1>, <enderio:block_dark_iron_bars>]]);	

//Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
[<gregtech:meta_item_1:12183>, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12183>], 
[<appliedenergistics2:material:24>, <gregtech:meta_item_1:32725>, <appliedenergistics2:material:24>], 
[<gregtech:meta_item_1:12183>, <appliedenergistics2:material:23>,<gregtech:meta_item_1:12183>]]);

	
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");

<appliedenergistics2:material:10>.addTooltip(format.red("Made in a Crystal Growth Chamber from a Certus Quartz Seed."));
<appliedenergistics2:material:11>.addTooltip(format.red("Made in a Crystal Growth Chamber from a Nether Quartz Seed."));
<appliedenergistics2:material:12>.addTooltip(format.red("Made in a Crystal Growth Chamber from a Fluix Seed."));
	
// 1k Storage
recipes.remove(<appliedenergistics2:material:35>);	
recipes.addShaped(<appliedenergistics2:material:35>, [
	[<minecraft:glass>, <gregtech:meta_item_1:12237>, <minecraft:glass>], 
	[<gregtech:meta_item_1:12237>, <ore:circuitBasic>, <gregtech:meta_item_1:12237>], 
	[<minecraft:glass>, <gregtech:meta_item_1:12237>, <minecraft:glass>]]);
	
// 4k Storage
recipes.remove(<appliedenergistics2:material:36>);	
recipes.addShaped(<appliedenergistics2:material:36>, [
	[<minecraft:glass>, <appliedenergistics2:material:22>, <minecraft:glass>],
	[<appliedenergistics2:material:35>, <ore:circuitGood>, <appliedenergistics2:material:35>],
	[<minecraft:glass>, <appliedenergistics2:material:35>, <minecraft:glass>]]);
	
// 16k Storage
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
	[<minecraft:glass>, <appliedenergistics2:material:24>, <minecraft:glass>],
	[<appliedenergistics2:material:36>, <ore:circuitAdvanced>, <appliedenergistics2:material:36>],
	[<minecraft:glass>, <appliedenergistics2:material:36>, <minecraft:glass>]]);
	
// 64k Storage
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
	[<appliedenergistics2:material:22>, <appliedenergistics2:material:24>, <appliedenergistics2:material:22>],
	[<appliedenergistics2:material:37>, <ore:circuitExtreme>, <appliedenergistics2:material:37>],
	[<appliedenergistics2:material:22>, <appliedenergistics2:material:37>, <appliedenergistics2:material:22>]]);
	
//AE2 Wireless Terminal, Infinity Booster Card
recipes.removeByRecipeName("ae2wtlib:booster_card_old");
recipes.addShaped(<ae2wtlib:infinity_booster_card>, [
	[<gregtech:meta_item_1:32724>, null, <gregtech:meta_item_1:32724>],
	[null, <appliedenergistics2:material:41>, null],
	[null, null, null]]);

//skystone and skystone dust
alloy.recipeBuilder()
	.outputs(<appliedenergistics2:sky_stone_block>)
	.inputs(<minecraft:stone>, <minecraft:end_stone>)
	.duration(200).EUt(16).buildAndRegister();

macerator.recipeBuilder()
	.outputs(<appliedenergistics2:material:45>)
	.inputs(<appliedenergistics2:sky_stone_block>)
	.duration(45).EUt(8).buildAndRegister();

/*
  P2P Tunnel tooltips.
 */
<appliedenergistics2:part:469>.addTooltip(format.green(format.italic(
	"Made by right-clicking ME P2P Tunnel with an energy conduit.")));

<appliedenergistics2:part:463>.addTooltip(format.green(format.italic(
	"Made by right-clicking ME P2P Tunnel with a bucket.")));

<appliedenergistics2:part:462>.addTooltip(format.green(format.italic(
	"Made by right-clicking ME P2P Tunnel with a chest.")));

<appliedenergistics2:part:467>.addTooltip(format.green(format.italic(
	"Made by right-clicking ME P2P Tunnel with a torch.")));

<appliedenergistics2:part:461>.addTooltip(format.green(format.italic(
	"Made by right-clicking ME P2P Tunnel with redstone dust.")));

/*
  Channel-specific adjustments.
 */
if (<appliedenergistics2:controller> as bool) {
	// ME Controller
	recipes.removeByRecipeName("appliedenergistics2:network/blocks/controller");
	makeShaped("me_controller", <appliedenergistics2:controller>,
		["PFP",
		 "FAF",
		 "PFP"],
		{ F : <ore:crystalPureFluix>,
		  P : <ore:plateDarkSteel>,
		  A : <appliedenergistics2:energy_acceptor>});

	// Dense Conduit
	assembler.recipeBuilder()
		.inputs([<enderio:item_me_conduit> * 4, <ore:itemConduitBinder> * 5])
		.outputs([<enderio:item_me_conduit:1> * 2])
		.duration(80)
		.EUt(16)
		.buildAndRegister();
/*
  Remove channel-specific items otherwise.
 */
} else {
	mods.jei.JEI.removeAndHide(<enderio:item_me_conduit:1>);
	recipes.removeByRecipeName("appliedenergistics2:network/cables/smart_fluix");
	recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_covered_fluix");
}


/**
 * PackagedAuto!
 */

// Package Component
recipes.remove(<packagedauto:package_component>);
makeShaped("pauto_package_component",
	<packagedauto:package_component>, [
		"VTV",
		"TXT",
		"VTV",
	], {
		V: <ore:plateVibrantAlloy>, // Vibrant Alloy Plate
		T: <ore:plateTitanium>,     // Titanium Plate
		X: <minecraft:ender_eye>    // Ender Eye
	});

recipes.remove(<packagedauto:recipe_holder>);
makeShaped("pauto_recipe_holder",
	<packagedauto:recipe_holder> * 3, [
		"GPG",
		"PBP",
		"TMT",
	], {
		G: <appliedenergistics2:quartz_glass>,  // Quartz Glass
		P: <appliedenergistics2:material:52>,   // Blank Pattern
		M: <packagedauto:me_package_component>, // ME Packaging Component
		B: <ore:blockCrystaltine>, // Block of Crystaltine
		T: <ore:plateTitanium>,    // Titanium Plate
	});

recipes.remove(<packagedauto:packager>);
makeShaped("pauto_packager",
	<packagedauto:packager>, [
		"TMT",
		"CXC",
		"TIT",
	], {
		M: <packagedauto:me_package_component>, // ME Packaging Component
		I: <appliedenergistics2:part:240>,      // ME Import Bus
		T: <ore:plateTitanium>,   // Titanium Plate
		C: <ore:circuitExtreme>,  // T4 Circuit
		X: <extrautils2:crafter>, // ExU2 Crafter
	});

recipes.remove(<packagedauto:unpackager>);
makeShaped("pauto_unpackager",
	<packagedauto:unpackager>, [
		"TMT",
		"CXC",
		"TET",
	], {
		M: <packagedauto:me_package_component>, // ME Packaging Component
		E: <appliedenergistics2:part:260>,      // ME Export Bus
		T: <ore:plateTitanium>,   // Titanium Plate
		C: <ore:circuitExtreme>,  // T4 Circuit
		X: <extrautils2:crafter>, // ExU2 Crafter
	});

recipes.remove(<packagedauto:encoder>);
makeShaped("pauto_encoder",
	<packagedauto:encoder>, [
		"TMT",
		"HXH",
		"TCT",
	], {
		M: <packagedauto:me_package_component>, // ME Packaging Component
		H: <packagedauto:recipe_holder>,        // Recipe Holder
		T: <ore:plateTitanium>,   // Titanium Plate
		C: <ore:circuitExtreme>,  // T4 Circuit
		X: <ae2stuff:encoder>,    // AE2STuff Pattern Encoder
	});

recipes.remove(<ae2stuff:encoder>);
makeShaped("ae2stuff_encoder",
	<ae2stuff:encoder>, [
		"STS",
		"AXF",
		"SCS",
	], {
		S: <ore:plateStainlessSteel>,         // Stainless Steel Plate
		T: <appliedenergistics2:part:340>,    // ME Pattern Terminal
		F: <appliedenergistics2:material:43>, // Formation Core
		A: <appliedenergistics2:material:44>, // Annihilation Core
		M: <packagedauto:me_package_component>, // ME Packaging Component
		C: <ore:circuitAdvanced>,               // T4 Circuit
		X: <gregtech:machine:503>,              // HV Machine Hull
	});


recipes.remove(<packagedauto:me_package_component>);
makeShaped("pauto_me_package_component",
	<packagedauto:me_package_component>, [
		"PGP",
		"AXF",
		"PGP",
	], {
		F: <appliedenergistics2:material:43>,  // Formation Core
		A: <appliedenergistics2:material:44>,  // Annihilation Core
		G: <appliedenergistics2:quartz_glass>, // Quartz Glass
		X: <packagedauto:package_component>,   // Package Component
		P: <ore:plateTitanium>,  // Titanium Plate
	});

/**
 * PackagedExCrafting
 */
val extremeCrafterPattern as string[] = [
	"CIC",
	"BTB",
	"CMC",
];

// Advanced Crafter
recipes.remove(<packagedexcrafting:advanced_crafter>);
makeShaped("pexc_advanced_crafter",
	<packagedexcrafting:advanced_crafter>, extremeCrafterPattern, {
		C: <extendedcrafting:material:15>,      // Advanced Catalyst
		I: <extendedcrafting:interface>,        // Automation Interface
		M: <packagedauto:me_package_component>, // ME Packaging Component
		B: <ore:plateBlackSteel>,               // Black Steel Plate
		T: <extendedcrafting:table_advanced>    // Advanced Crafting Table
			.transformDamage(0),
	});

// Elite Crafter
recipes.remove(<packagedexcrafting:elite_crafter>);
makeShaped("pexc_elite_crafter",
	<packagedexcrafting:elite_crafter>, extremeCrafterPattern, {
		C: <extendedcrafting:material:16>,      // Elite Catalyst
		I: <extendedcrafting:interface>,        // Automation Interface
		M: <packagedauto:me_package_component>, // ME Packaging Component
		B: <ore:plateBlackSteel>,               // Black Steel Plate
		T: <extendedcrafting:table_elite>       // Elite Crafting Table
			.transformDamage(0),
	});

// Ultimate
recipes.remove(<packagedexcrafting:ultimate_crafter>);
makeShaped("pexc_ultimate_crafter",
	<packagedexcrafting:ultimate_crafter>, extremeCrafterPattern, {
		C: <extendedcrafting:material:17>,      // Ultimate Catalyst
		I: <extendedcrafting:interface>,        // Automation Interface
		M: <packagedauto:me_package_component>, // ME Packaging Component
		B: <ore:plateBlackSteel>,               // Black Steel Plate
		T: <extendedcrafting:table_ultimate>    // Ultimate Crafting Table
			.transformDamage(0),
	});




