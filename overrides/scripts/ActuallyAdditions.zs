print("--- loading ActuallyAdditions.zs ---");
	
# *======= Empowerer =======*
	
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:1> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:2> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:3> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:4> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:5> * 4);



//Empowered Restonia
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_restonia_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <gregtech:meta_item_1:8085>, <gregtech:meta_item_1:10237>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "sulfuric_acid", Amount: 1000}}), <extendedcrafting:material:19>, 1000000, 400);


//Empowered Palis 
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <gregtech:meta_item_1:8157>, <thermalfoundation:material:136>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <extendedcrafting:material:16>, 1000000, 400);


//Empowered Enori
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <gregtech:meta_item_1:8226>, <enderio:item_alloy_ingot:8>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "helium", Amount: 1000}}), <extendedcrafting:material:14>, 1000000, 400);


//Empowered Void Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_void_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <actuallyadditions:item_misc:5>, <enderio:item_alloy_ingot:6>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "carbon", Amount: 1000}}), <extendedcrafting:material:15>, 1000000, 400);


//Empowered Diamatine
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <extendedcrafting:material:40>, <extendedcrafting:material:24>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "nitrogen_dioxide", Amount: 1000}}), <extendedcrafting:material:18>, 1000000, 400);



//Empowered Emerald
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <contenttweaker:stabilizeduranium>, <enderio:item_alloy_ingot:2>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "argon", Amount: 1000}}), <extendedcrafting:material:17>, 1000000, 400);

	
	
//Long Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
recipes.addShaped(<actuallyadditions:block_directional_breaker>, [
[<gregtech:meta_item_1:12702>,<actuallyadditions:block_crystal:2>,<gregtech:meta_item_1:12702>], 
[<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>], 
[<gregtech:meta_item_1:12702>,<actuallyadditions:block_crystal:4>,<gregtech:meta_item_1:12702>]]);	
	
//AA Ender Pearl Block
recipes.remove(<actuallyadditions:block_misc:6>);	
recipes.remove(<actuallyadditions:block_phantomface>);	
recipes.addShaped(<actuallyadditions:block_phantomface>, [
[null, <ore:chestWood>, null], 
[<actuallyadditions:item_crystal_empowered:2>, <gregtech:meta_block_compressed_13:10>, <actuallyadditions:item_crystal_empowered:2>], 
[null, <actuallyadditions:item_misc:8>, null]]);
	
//AA Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);	
recipes.addShaped(<actuallyadditions:block_misc:9>, [
[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>], 
[<gregtech:meta_item_1:12001>,<actuallyadditions:item_misc:5>,<gregtech:meta_item_1:12001>], 
[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>]]);
<actuallyadditions:block_misc:9>.displayName = "Aluminium Casing";	

//AA Atomic Reconstructor	
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);	
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, [
[<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:32681>], 
[<gregtech:meta_item_1:12035>,<actuallyadditions:block_misc:9>,<gregtech:meta_item_1:15219>], 
[<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:32681>]]);

//Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);	
recipes.addShaped(<actuallyadditions:block_display_stand>, [
[<gregtech:meta_item_1:14704>,<gregtech:meta_item_1:12702>,<gregtech:meta_item_1:14704>], 
[<gregtech:meta_item_1:12702>,<actuallyadditions:block_misc:9>,<gregtech:meta_item_1:12702>], 
[<gregtech:meta_item_1:14704>,<gregtech:meta_item_1:12702>,<gregtech:meta_item_1:14704>]]);

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);	
recipes.addShaped(<actuallyadditions:block_empowerer>, [
[<gregtech:meta_item_1:12300>,<actuallyadditions:block_crystal:5>,<gregtech:meta_item_1:12300>], 
[<actuallyadditions:block_crystal:5>,<actuallyadditions:block_display_stand>,<actuallyadditions:block_crystal:5>], 
[<gregtech:meta_item_1:12300>,<actuallyadditions:block_crystal:5>,<gregtech:meta_item_1:12300>]]);

//Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);	
recipes.addShaped(<actuallyadditions:item_misc:7>, [
[null,<gregtech:cable:700>,<actuallyadditions:item_crystal>], 
[<gregtech:cable:700>,<actuallyadditions:item_crystal>,<gregtech:cable:700>], 
[<actuallyadditions:item_crystal>,<gregtech:cable:700>,null]]);

//Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);	
recipes.addShaped(<actuallyadditions:item_misc:8>, [
[<gregtech:cable:701>,<gregtech:cable:701>,<gregtech:cable:701>], 
[<gregtech:cable:701>,<actuallyadditions:item_misc:7>,<gregtech:cable:701>], 
[<gregtech:cable:701>,<gregtech:cable:701>,<gregtech:cable:701>]]);
		
//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped(<actuallyadditions:block_farmer>, [
	[<actuallyadditions:block_crystal:3>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:3>], 
	[<enderio:item_material:73>, <actuallyadditions:block_misc:9>, <enderio:item_material:73>], 
	[<actuallyadditions:block_crystal:3>, <enderio:item_material:73>, <actuallyadditions:block_crystal:3>]]);

//Drill
recipes.remove(<actuallyadditions:item_drill:3>);
recipes.addShaped(<actuallyadditions:item_drill:3>, [
	[<actuallyadditions:block_crystal:3>, <actuallyadditions:block_crystal:2>, <gregtech:meta_item_2:8111>], 
	[<gregtech:meta_item_2:26701>, <actuallyadditions:item_misc:16>, <actuallyadditions:block_crystal:2>], 
	[<enderio:block_alloy:1>, <gregtech:meta_item_2:26701>, <actuallyadditions:block_crystal:3>]]);	
	
//Drill Core
recipes.remove(<actuallyadditions:item_misc:16>);
<actuallyadditions:item_misc:16>.addTooltip(format.red("Acquired by exploration of Lost Cities buildings or vanilla dungeons."));
<actuallyadditions:item_misc:16>.addTooltip(format.red("Also can be purchased for Omnicoins."));

//Vertical Digger	
recipes.remove(<actuallyadditions:block_miner>);
recipes.addShaped(<actuallyadditions:block_miner>, [
	[<actuallyadditions:block_misc:9>, <gregtech:meta_tool:23>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_crystal:3>, <thermalinnovation:drill:2>, <actuallyadditions:block_crystal:3>], 
	[<actuallyadditions:block_misc:9>, <actuallyadditions:item_drill:*>, <actuallyadditions:block_misc:9>]]);
	
//Ender Casing
recipes.remove(<actuallyadditions:block_misc:8>);	
recipes.addShaped(<actuallyadditions:block_misc:8>, [
	[<gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12703>, <gregtech:meta_item_1:12218>],
	[<gregtech:meta_item_1:12703>, <actuallyadditions:block_misc:2>, <gregtech:meta_item_1:12703>], 
	[<gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12703>, <gregtech:meta_item_1:12218>]]);
	
	
	
//TE Drill
recipes.addShapeless(<thermalfoundation:material:640>, [<actuallyadditions:item_misc:16>]);
recipes.addShapeless(<thermalfoundation:material:656>, [<gregtech:meta_item_2:8183>]);
	
	
//medium crate
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.remove(<actuallyadditions:block_giant_chest_large>);
recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, [
	[<actuallyadditions:block_crystal:2>, <ore:plankWood>, <actuallyadditions:block_crystal:2>], 
	[<actuallyadditions:block_giant_chest>,<ore:plankWood>, <actuallyadditions:block_giant_chest>], 
	[<actuallyadditions:block_crystal:2>, <ore:plankWood>, <actuallyadditions:block_crystal:2>]]);
	
recipes.addShaped(<actuallyadditions:block_giant_chest_large>, [
	[<actuallyadditions:block_crystal_empowered:2>, <ore:plankWood>, <actuallyadditions:block_crystal_empowered:2>], 
	[<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_medium>], 
	[<actuallyadditions:block_crystal_empowered:2>, <ore:plankWood>, <actuallyadditions:block_crystal_empowered:2>]]);	
	
	
mods.jei.JEI.addDescription(<actuallyadditions:item_misc:13>, "Canola can be turned into Canola Oil via a Canola Press. This is a somewhat slow machine and requres RF to function");
	
	
print("--- ActuallyAdditions.zs initialized ---");