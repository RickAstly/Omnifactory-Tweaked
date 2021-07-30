
import mods.gregtech.recipe.RecipeMap;

/**
 *	Heavy Platings
 */

// Steel
compressor.recipeBuilder()
	.inputs([<ore:plateSteel> * 2])
	.outputs(<contenttweaker:steelplating>)
	.EUt(100)
	.duration(200)
	.buildAndRegister();

// Titanium
compressor.recipeBuilder()
	.inputs([<ore:plateTitanium> * 2])
	.outputs(<contenttweaker:titaniumplating>)
	.EUt(500)
	.duration(200)
	.buildAndRegister();

// TungstenCarbide
compressor.recipeBuilder()
	.inputs([<ore:plateTungstenCarbide> * 2])
	.outputs(<contenttweaker:tungstencarbideplating>)
	.EUt(2000)
	.duration(200)
	.buildAndRegister();

// Signalum
compressor.recipeBuilder()
	.inputs([<thermalfoundation:material:357> * 2])
	.outputs(<contenttweaker:signalumplating>)
	.duration(200)
	.EUt(8000)
	.buildAndRegister();

// Iridium
compressor.recipeBuilder()
	.inputs([<ore:plateIridium> * 2])
	.outputs(<contenttweaker:iridiumalloyplating>)
	.EUt(15000)
	.duration(200)
	.buildAndRegister();

// Enderium
compressor.recipeBuilder()
	.inputs([<thermalfoundation:material:359> * 2])
	.outputs(<contenttweaker:enderiumplating>)
	.duration(200)
	.EUt(30000)
	.buildAndRegister();

// Draconium
compressor.recipeBuilder()
	.inputs([<moreplates:draconium_plate> * 2])
	.outputs(<contenttweaker:draconiumplating>)
	.duration(200)
	.EUt(60000)
	.buildAndRegister();

// Crystal Matrix
compressor.recipeBuilder()
	.inputs([<moreplates:crystal_matrix_plate> * 2])
	.outputs(<contenttweaker:crystalmatrixplating>)
	.duration(200)
	.EUt(125000)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs([<ore:blockSteel>])
	.outputs(<ore:plateDenseSteel>.firstItem)
	.duration(200)
	.EUt(30)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs([<ore:blockTitanium>])
	.outputs(<ore:plateDenseTitanium>.firstItem)
	.duration(200)
	.EUt(300)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs([<ore:blockTungstenSteel>])
	.outputs(<ore:plateDenseTungstenSteel>.firstItem)
	.duration(200)
	.EUt(300)
	.buildAndRegister();

// Quantum Fluxed Eternium Heavy Plating
blast_furnace.recipeBuilder()
	.inputs([
		<redstonearsenal:material:224> * 10,
		<moreplates:awakened_draconium_plate>,
		<contenttweaker:quantumflux> * 16
	])
	.fluidInputs([<liquid:krypton> * 1000])
	.outputs(<contenttweaker:quantumfluxedeterniumplating>)
	.property("temperature", 9000)
	.duration(200)
	.EUt(250000)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs([<moreplates:neutronium_plate> * 2])
	.fluidInputs([<liquid:einsteinium> * 144])
	.outputs(<contenttweaker:neutroniumplating>)
	.property("temperature", 9600)
	.duration(200)
	.EUt(500000)
	.buildAndRegister();

// Field Generators
var fieldGeneratorPattern as string[] = [
	"WCW",
	"CXC",
	"WCW",
];

recipes.remove(<metaitem:field.generator.lv>);
recipes.remove(<metaitem:field.generator.mv>);
recipes.remove(<metaitem:field.generator.hv>);
recipes.remove(<metaitem:field.generator.ev>);
recipes.remove(<metaitem:field.generator.iv>);
recipes.remove(<metaitem:field.generator.luv>);

makeShaped("gt_field_generator_lv",
	<metaitem:field.generator.lv>, fieldGeneratorPattern, {
		W: <ore:wireGtSingleConductiveIron>, // 1x Conductive Iron Wire
		C: <ore:circuitBasic>,               // T1 Circuit
		X: <minecraft:ender_pearl>,          // Ender Pearl
	});

makeShaped("gt_field_generator_mv",
	<metaitem:field.generator.mv>, fieldGeneratorPattern, {
		W: <ore:wireGtSingleEnergeticAlloy>, // 1x Energetic Alloy Wire
		C: <ore:circuitGood>,                // T2 Circuit
		X: <minecraft:ender_eye>,            // Ender Eye
	});

makeShaped("gt_field_generator_hv",
	<metaitem:field.generator.hv>, fieldGeneratorPattern, {
		W: <ore:wireGtSingleVibrantAlloy>, // 1x Vibrant Alloy Wire
		C: <ore:circuitAdvanced>,          // T3 Circuit
		X: <metaitem:quantumeye>,          // Quantum Eye
	});

makeShaped("gt_field_generator_ev",
	<metaitem:field.generator.ev>, fieldGeneratorPattern, {
		W: <ore:wireGtSingleEndSteel>, // 1x End Steel Wire
		C: <ore:circuitExtreme>,       // T4 Circuit
		X: <minecraft:nether_star>,    // Nether Star
	});

makeShaped("gt_field_generator_iv",
	<metaitem:field.generator.iv>, fieldGeneratorPattern, {
		W: <ore:wireGtSingleLumium>, // 1x Lumium Wire
		C: <ore:circuitElite>,       // T5 Circuit
		X: <metaitem:quantumstar>,   // Quantum Star
	});


// Saltpeter
macerator.recipeBuilder()
	.inputs([<ore:sandstone> * 4])
	.outputs([<ore:dustSaltpeter>.firstItem])
	.duration(300)
	.EUt(30)
	.buildAndRegister();



// Soul Powder
macerator.recipeBuilder()
	.inputs([<enderio:item_alloy_ingot:7>])
	.outputs([<enderio:item_material:74>])
	.duration(200).EUt(30)
	.buildAndRegister();

// Certus Quartz Dust
macerator.recipeBuilder()
	.inputs([<appliedenergistics2:material>])
	.outputs([<ore:dustCertusQuartz>.firstItem])
	.duration(20)
	.EUt(16)
	.buildAndRegister();

// Draconium
macerator.recipeBuilder()
	.inputs([<draconicevolution:draconium_ore:2>])
	.outputs([<draconicevolution:draconium_dust> * 3])
	.duration(40)
	.EUt(500)
	.buildAndRegister();



// Concrete
mixer.recipeBuilder()
	.inputs([
		<minecraft:gravel> * 3,
		<ore:dustClay>
	])
	.fluidInputs([<liquid:water> * 500])
	.fluidOutputs(<liquid:concrete> * 1000)
	.EUt(16)
	.duration(200)
	.buildAndRegister();