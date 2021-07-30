import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.CommonVars.makeShaped as makeShaped;
import scripts.CommonVars.makeExtremeRecipe5 as makeExtremeRecipe5;

// Machine Structure
recipes.remove(<libvulpes:structuremachine>);
makeShaped("libvulpes_structure_machine",
	<libvulpes:structuremachine>, [
		" P ",
		"PMP",
		" P ",
	], {
		P: <ore:plateStainlessSteel>, // Stainless Steel Plate
		M: <extrautils2:machine>,     // Extra Utils 2 Machine Block
	});

recipes.remove(<libvulpes:hatch>);
recipes.remove(<libvulpes:hatch:1>);
recipes.remove(<libvulpes:hatch:2>);
recipes.remove(<libvulpes:hatch:3>);
recipes.remove(<libvulpes:forgepowerinput>);
recipes.remove(<advancedrocketry:loader:2>);
recipes.remove(<advancedrocketry:loader:3>);
recipes.remove(<advancedrocketry:loader:4>);
recipes.remove(<advancedrocketry:loader:5>);
recipes.addShapeless(<libvulpes:hatch>, [<libvulpes:structuremachine>,<gregtech:machine:720>]);
recipes.addShapeless(<libvulpes:hatch:1>, [<libvulpes:structuremachine>,<gregtech:machine:721>]);
recipes.addShapeless(<libvulpes:hatch:2>, [<libvulpes:structuremachine>,<gregtech:machine:722>]);
recipes.addShapeless(<libvulpes:hatch:3>, [<libvulpes:structuremachine>,<gregtech:machine:723>]);
recipes.addShapeless(<libvulpes:forgepowerinput>, [<libvulpes:structuremachine>,<gregtech:machine:724>]);
recipes.addShapeless(<advancedrocketry:loader:2>, [<libvulpes:hatch:1>,<metaitem:electric.piston.hv>]);
recipes.addShapeless(<advancedrocketry:loader:3>, [<libvulpes:hatch:0>,<metaitem:electric.piston.hv>]);
recipes.addShapeless(<advancedrocketry:loader:4>, [<libvulpes:hatch:3>,<metaitem:electric.pump.hv>]);
recipes.addShapeless(<advancedrocketry:loader:5>, [<libvulpes:hatch:2>,<metaitem:electric.pump.hv>]);

// Liquid Fueled Engine
recipes.remove(<advancedrocketry:rocketmotor>);
makeShaped("ar_liquid_engine",
	<advancedrocketry:rocketmotor>, [
		" P ",
		"PPP",
		"TTT",
	], {
		P: <contenttweaker:steelplating>,   // Heavy Steel Plating
		T: <simplyjetpacks:metaitemmods:7>, // Electrical Steel Thruster
	});

// Seat
recipes.remove(<advancedrocketry:seat>);
recipes.addShaped(<advancedrocketry:seat>, [
	[<minecraft:wool>         , <minecraft:wool>          , <minecraft:wool>         ],
	[<ore:plateStainlessSteel>, <ore:plateStainlessSteel> , <ore:plateStainlessSteel>]
]);

// Structure Tower
recipes.remove(<advancedrocketry:structuretower>);
recipes.addShaped(<advancedrocketry:structuretower> * 3, [
	[<gregtech:frame_stainless_steel>],
	[<gregtech:frame_stainless_steel>],
	[<gregtech:frame_stainless_steel>]
]);

/**
 *	Pressure Tanks
 */

val arTanks as IIngredient[IItemStack]  = {
	<advancedrocketry:pressuretank>:   hardenedtankIng,
	<advancedrocketry:pressuretank:1>: reinforcedtankIng,
	<advancedrocketry:pressuretank:2>: signalumtankIng,
	<advancedrocketry:pressuretank:3>: resonanttankIng,
};

var counter = -1;
for pressureTank, thermalTank in arTanks {
	counter = counter + 1;

	recipes.remove(pressureTank);
	makeShaped("ar_pressure_tank_" + (counter as string),
		pressureTank, [
			" M ",
			"PTP",
			" P ",
		], {
			M: <gregtech:fluid_pipe:2183>, // Medium Stainless Steel Pipe
			P: <ore:plateStainlessSteel>,  // Stainless Steel Plate
			T: thermalTank,                // Portable Tank
		});
}

/**
 *  Gas Mining
 */
recipes.remove(<advancedrocketry:deployablerocketbuilder>);
recipes.addShaped(<advancedrocketry:deployablerocketbuilder>, [
	[<gregtech:meta_item_2:26135>, <gregtech:meta_item_1:32654>, <gregtech:meta_item_2:26135>],
	[<contenttweaker:steelplating>, <libvulpes:advstructuremachine>, <contenttweaker:steelplating>],
	[<contenttweaker:signalumplating>, <advancedrocketry:rocketbuilder>, <contenttweaker:signalumplating>]
]);
recipes.remove(<advancedrocketry:liquidtank>);
recipes.addShaped(<advancedrocketry:liquidtank>, [
	[<gregtech:meta_item_1:19135>, reinforcedtankIng, <gregtech:meta_item_1:19135>],
	[<gregtech:meta_item_1:12145>, null, <gregtech:meta_item_1:12145>],
	[<contenttweaker:signalumplating>, reinforcedtankIng, <contenttweaker:signalumplating>]
]);
<advancedrocketry:liquidtank>.addTooltip("Used on gas mining drones.");
recipes.remove(<advancedrocketry:intake>);
recipes.addShaped(<advancedrocketry:intake>, [
	[<contenttweaker:steelplating>, <gregtech:meta_item_1:32613>, <contenttweaker:steelplating>],
	[<gregtech:meta_item_2:26135>, <libvulpes:advstructuremachine>, <gregtech:meta_item_2:26135>],
	[<contenttweaker:steelplating>, <gregtech:meta_item_1:32613>, <contenttweaker:steelplating>],
]);
<advancedrocketry:intake>.addTooltip("Used on gas mining drones.");


// Hardened Glass
alloy.recipeBuilder()
	.inputs([
		<ore:dustLead>,
		<ore:dustObsidian> * 4
	])
	.outputs([<thermalfoundation:glass:3>])
	.duration(100)
	.EUt(30)
	.buildAndRegister();

// Suit Workstation
recipes.remove(<advancedrocketry:suitworkstation>);
makeShaped("ar_suit_workstation",
	<advancedrocketry:suitworkstation>, [
		"RTR",
		"CXC",
		"WWW",
	], {
		T: <avaritia:compressed_crafting_table>, // Compressed Crafting Table
		R: <metaitem:robot.arm.mv>, // MV Robot Arm
		C: <ore:circuitGood>,       // T2 Circuit
		X: <gregtech:machine:502>,  // MV Machine Hull
		W: <gregtech:machine:825>,  // GTCE Crafting Station
	});

// Gas Charger
recipes.remove(<advancedrocketry:oxygencharger>);
makeShaped("ar_oxygen_charger",
	<advancedrocketry:oxygencharger>, [
		"   ",
		"SPS",
		"ETE",
	], {
		S: <contenttweaker:steelplating>, // Heavy Steel Plating
		P: <gregtech:fluid_pipe:2183>,    // Medium Stainless Steel Pipe
		E: <metaitem:electric.pump.hv>,   // HV Pump
		T: hardenedtank,                  // Hardened Portable Tank
	});

// Cloth
makeShaped("ctt_cloth",
	<contenttweaker:cloth> * 4, [
		"SSS",
		"SSS",
		"SSS",
	], {
		S: <minecraft:string> // Ssssssssstring 🐍
	});

makeShaped("ctt_thermal_cloth",
	<contenttweaker:thermalcloth> * 3, [
		"RRR",
		"CCC",
		"RRR",
	], {
		R: <minecraft:redstone>,   // Redstone
		C: <contenttweaker:cloth>, // Cloth
	});

/**
 * Unprepared Space Suit
 */

var thermalCloth as IIngredient[string] = {
	T: <contenttweaker:thermalcloth>,
};

makeShaped("ctt_unprepared_space_helmet",
	<contenttweaker:unpreparedspacehelmet>, [
		"TTT",
		"T T",
		"   ",
	], thermalCloth);

makeShaped("ctt_unprepared_space_chestpiece",
	<contenttweaker:unpreparedspacechestpiece>, [
		"T T",
		"TTT",
		"TTT",
	], thermalCloth);

makeShaped("ctt_unprepared_space_leggins",
	<contenttweaker:unpreparedspaceleggings>, [
		"TTT",
		"T T",
		"T T",
	], thermalCloth);

makeShaped("ctt_unprepared_space_boots",
	<contenttweaker:unpreparedspaceboots>, [
		"   ",
		"T T",
		"T T",
	], thermalCloth);

/**
 * Space Suit
 */

recipes.remove(<advancedrocketry:spacehelmet>);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.remove(<advancedrocketry:spaceboots>);
recipes.remove(<advancedrocketry:spaceleggings>);

val spaceSuitLayerPattern as string[] = [
	"CPC",
	"CPC",
	"CPC",
];

makeShaped("ctt_pressure_layer",
	<contenttweaker:pressurelayer>, spaceSuitLayerPattern, {
		C: <contenttweaker:cloth>, // Cloth
		P: <ore:plateBlackSteel>,  // Black Steel Plate
	});

makeShaped("ctt_radiation_layer",
	<contenttweaker:radiationlayer>, spaceSuitLayerPattern, {
		C: <contenttweaker:cloth>, // Cloth
		P: <ore:plateLead>,        // Lead Plate
	});

// Space Helmet
assembler.recipeBuilder()
	.inputs([
		<contenttweaker:unpreparedspacehelmet>,
		<contenttweaker:pressurelayer> * 2,
		<contenttweaker:radiationlayer> * 2,
		<minecraft:glass_pane>,
		<ore:circuitAdvanced>
	])
	.outputs([<advancedrocketry:spacehelmet>])
	.duration(500)
	.EUt(30)
	.buildAndRegister();

// Space Chestplate
assembler.recipeBuilder()
	.inputs([
		<contenttweaker:unpreparedspacechestpiece>,
		<contenttweaker:pressurelayer> * 4,
		<contenttweaker:radiationlayer> * 4
	])
	.outputs([<advancedrocketry:spacechestplate>])
	.duration(800)
	.EUt(30)
	.buildAndRegister();

// Space Leggins
assembler.recipeBuilder()
	.inputs([
		<contenttweaker:unpreparedspaceleggings>,
		<contenttweaker:pressurelayer> * 3,
		<contenttweaker:radiationlayer> * 3
	])
	.outputs([<advancedrocketry:spaceleggings>])
	.duration(600)
	.EUt(30)
	.buildAndRegister();

// Space boots
assembler.recipeBuilder()
	.inputs([
		<contenttweaker:unpreparedspaceboots>,
		<contenttweaker:pressurelayer>,
		<contenttweaker:radiationlayer>
	])
	.outputs([<advancedrocketry:spaceboots>])
	.duration(400)
	.EUt(30)
	.buildAndRegister();

/* ---- */

// Liquid Fuel Tank
recipes.remove(<advancedrocketry:fueltank>);
makeShaped("ar_fuel_tank",
	<advancedrocketry:fueltank>, [
		"PTP",
		"PTP",
		"PTP",
	], {
		P: <ore:plateStainlessSteel>,
		T: <thermalexpansion:tank>,
	});

// Guidance Computer
recipes.remove(<advancedrocketry:guidancecomputer>);
makeExtremeRecipe5(<advancedrocketry:guidancecomputer>,
	[
		"GPPPG",
		"PSMEP",
		"PCXCP",
		"PECSP",
		"GPPPG",
	], {
		G: <appliedenergistics2:quartz_vibrant_glass>, // Vibrant Quartz Glass
		P: <contenttweaker:steelplating>, // Steel Heavy Plating
		X: <libvulpes:structuremachine>,  // Machine Structure
		S: <metaitem:sensor.hv>,  // HV Sensor
		E: <metaitem:emitter.hv>, // HV Emitter
		C: <ore:circuitAdvanced>, // T3 Circuit
		M: <extrautils2:screen>,  // ExU2 Screen
	});

// Rocket Assembling Machine
recipes.remove(<advancedrocketry:rocketbuilder>);
makeExtremeRecipe5(<advancedrocketry:rocketbuilder>,
	[
		"RPEPR",
		"PXMXP",
		"PCACP",
		"PXCXP",
		"RPEPR",
	], {
		P: <contenttweaker:steelplating>, // Steel Heavy Plating
		R: <metaitem:robot.arm.mv>,       // MV Robot Arm
		X: <libvulpes:structuremachine>,  // Machine Structure
		A: <gregtech:machine:101>, // MV Assembling Machine
		E: <metaitem:emitter.mv>,  // MV Emitter
		M: <extrautils2:screen>,   // ExU2 Screen
		C: <ore:circuitGood>,      // T2 Circuit
	});

// Planet ID Chip
recipes.remove(<advancedrocketry:planetidchip>);
makeShaped("ar_planet_id_chip", 
	<advancedrocketry:planetidchip>, [
		"WPW",
		"WCW",
		"WPW",
	], {
		W: <ore:wireFineStainlessSteel>, // Fine Stainless Steel Wire
		P: <ore:plateVibrantAlloy>, // Vibrant Alloy Plate
		C: <ore:circuitGood>, // T2 Circuit
	});


// Launch Pad
recipes.remove(<advancedrocketry:launchpad>);
makeShaped("ar_launchpad",
	<advancedrocketry:launchpad> * 9, [
		"CCC",
		"CCC",
		"CCC",
	], {
		C: <gregtech:concrete>
	});

//Linker
recipes.remove(<libvulpes:linker>);
makeShaped("ar_linker",
	<libvulpes:linker>, [
		" E ",
		"SCS",
		"SSS",
	], {
		S: <ore:plateStainlessSteel>, // Stainless Steel Plate
		E: <metaitem:emitter.hv>,     // HV Emitter
		C: <ore:circuitAdvanced>,     // T3 Circuit
	});


// Fueling Station
recipes.remove(<advancedrocketry:fuelingstation>);
makeShaped("ar_fueling_station",
	<advancedrocketry:fuelingstation>, [
		"PMP",
		"PXP",
		"SSS",
	], {
		S: <contenttweaker:steelplating>, // Heavy Steel Plating
		X: <libvulpes:structuremachine>,  // Machine Structure
		P: <metaitem:electric.pump.hv>,   // HV Pump
		M: <gregtech:fluid_pipe:2183>,    // Medium Stainless Steel Pipe
	});

<advancedrocketry:fuelingstation>.displayName = "Fueling Station";

// Dilithium Dust
macerator.recipeBuilder()
	.inputs([<libvulpes:ore0>])
	.outputs([<ore:dustDilithium>.firstItem * 2])
	.duration(200)
	.EUt(420)
	.buildAndRegister();

// Dilithium Crystal
autoclave.recipeBuilder()
	.inputs([<ore:dustDilithium> * 4])
	.fluidInputs(<liquid:deuterium> * 1000)
	.outputs([<ore:crystalDilithium>.firstItem * 4])
	.duration(400)
	.EUt(110)
	.buildAndRegister();

// Space Station Builder
recipes.remove(<advancedrocketry:stationbuilder>);
makeExtremeRecipe5(<advancedrocketry:stationbuilder>,
	[
		"RTETR",
		"TXMXT",
		"TCACT",
		"TXCXT",
		"RTETR",
	], {
		T: <contenttweaker:titaniumplating>, // Heavy Titanium Plating
		X: <libvulpes:structuremachine>,     // Machine Structure
		R: <metaitem:robot.arm.ev>, // EV Robot Arm
		E: <metaitem:emitter.ev>,   // EV Emitter
		A: <gregtech:machine:103>,  // EV Assembling Machine
		C: <ore:circuitExtreme>, // T4 Circuit
		M: <extrautils2:screen>, // ExU2 Screen
	});

// Station ID Chip
recipes.remove(<advancedrocketry:spacestationchip>);
makeShaped("ar_station_id_chip", 
	<advancedrocketry:spacestationchip>, [
		"WPW",
		"WCW",
		"WPW",
	], {
		W: <ore:wireFineTitanium>, // Fine Titanium Wire
		P: <ore:plateBlackSteel>,  // Black Steel Plate
		C: <ore:circuitExtreme>,   // T4 Circuit
	});

// Warp Monitor
recipes.remove(<advancedrocketry:warpmonitor>);
makeShaped("ar_warp_monitor",
	<advancedrocketry:warpmonitor>, [
		"SMS",
		"CXC",
		"SCS",
	], {
		X: <libvulpes:structuremachine>, // Machine Structure
		S: <metaitem:sensor.ev>, // EV Sensor
		M: <extrautils2:screen>, // ExU2 Screen
		C: <ore:circuitExtreme>, // T4 Circuit
	});

// Holo Projector
recipes.remove(<libvulpes:holoprojector>);
makeShaped("ar_holo_projector", 
	<libvulpes:holoprojector>, [
		"   ",
		"TOT",
		"TTT",
	], {
		O: <advancedrocketry:satelliteprimaryfunction>, // Optical Sensor
		T: <ore:plateTitanium>, // Titanium Plate
	});

// Optical Sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
makeShaped("ar_optical_sensor",
	<advancedrocketry:satelliteprimaryfunction>, [
		"GGG",
		"ISI",
		" I ",
	], {
		G: <minecraft:glass_pane>,   // Glass Pane
		I: <ore:ingotPulsatingIron>, // Pulsating Iron Ingot
		S: <metaitem:sensor.ev>,     // EV Sensor
	});

// Warp Core
recipes.remove(<advancedrocketry:warpcore>);
makeShaped("ar_warp_core",
	<advancedrocketry:warpcore>, [
		"LTL",
		"TNT",
		"LTL",
	], {
		L: <ore:blockLumium>,     // Block of Lumium
		T: <ore:blockTitanium>,   // Block of Titanium
		N: <ore:blockNetherStar>, // Block of Nether Stars
	});

// Rocket Monitoring Station
recipes.remove(<advancedrocketry:monitoringstation>);
makeShaped("ar_rocket_monitoring_station", 
	<advancedrocketry:monitoringstation>, [
		"ROR",
		"RXR",
		"RCR",
	], {
		O: <advancedrocketry:satelliteprimaryfunction>, // Optical Sensor
		X: <libvulpes:structuremachine>, // Machine Structure
		R: <ore:stickCopper>, // Copper Rod
		C: <ore:circuitGood>, // T2 Circuit
	});

// Guidance Computer Access Hatch
recipes.remove(<advancedrocketry:loader:6>);
makeShaped("ar_guidance_computer_access_hatch",
	<advancedrocketry:loader:6>, [
		" C ",
		"RXR",
		" C ",
	], {
		X: <libvulpes:structuremachine>, // Machine Structure
		R: <ore:stickCopper>, // Copper Rod
		C: <ore:circuitGood>, // T2 Circuit
	});

// Station Docking Port
recipes.remove(<advancedrocketry:stationmarker>);
recipes.addShapeless(<advancedrocketry:stationmarker>, [
	<actuallyadditions:item_battery>, <ore:circuitGood>, <libvulpes:structuremachine>
]);

// Station Gravity Controller
recipes.remove(<advancedrocketry:gravitycontroller>);
recipes.addShapeless(<advancedrocketry:gravitycontroller>, [
	<libvulpes:structuremachine>, <minecraft:piston>, <extrautils2:screen>
]);

// Altitude Controller
recipes.remove(<advancedrocketry:altitudecontroller>);
recipes.addShapeless(<advancedrocketry:altitudecontroller>, [
	<libvulpes:structuremachine>, <extrautils2:screen>, <ore:circuitGood>
]);

// Orientation Controller
recipes.remove(<advancedrocketry:orientationcontroller>);
recipes.addShapeless(<advancedrocketry:orientationcontroller>, [
	<libvulpes:structuremachine>, <extrautils2:screen>, <minecraft:compass>
]);

// Docking Pad
recipes.remove(<advancedrocketry:landingpad>);
recipes.addShapeless(<advancedrocketry:landingpad>, [
	<advancedrocketry:launchpad>, <ore:circuitGood>
]);

// Station Light
recipes.remove(<advancedrocketry:circlelight>);
recipes.addShapeless(<advancedrocketry:circlelight>, [
	<ore:plateIron>, <minecraft:glowstone>
]);

// Atmosphere Detector
recipes.remove(<advancedrocketry:oxygendetection>);
makeShaped("ar_atmosphere_detector", 
	<advancedrocketry:oxygendetection>, [
		"PMP",
		"BXR",
		"PCP",
	], {
		X: <libvulpes:structuremachine>,
		B: <minecraft:iron_bars>, // Vanilla Iron Bars
		M: <extrautils2:screen>,  // ExU2 Screen
		P: <ore:plateSteel>,  // Steel Plate
		C: <ore:circuitGood>, // T2 Circuit
		R: <ore:rotorSteel>,  // Steel Rotor
	});

// Area Gravity Controller
recipes.remove(<advancedrocketry:gravitymachine>);
makeShaped("ar_gravity_machine",
	<advancedrocketry:gravitymachine>, [
		" M ",
		"TWT",
		"TCT",
	], {
		W: <advancedrocketry:warpcore>, // Warp Core
		T: <ore:plateTitanium>,  // Titanium Plate
		C: <ore:circuitExtreme>, // T4 Circuit
		M: <extrautils2:screen>, // ExU2 Screen
	});

// Seal Detector
recipes.remove(<advancedrocketry:sealdetector>);
recipes.addShaped(<advancedrocketry:sealdetector>, [
	[<metaitem:sensor.mv>  ],
	[<extrautils2:screen>  ],
	[<minecraft:comparator>]
]);

// HoverCraft
recipes.remove(<advancedrocketry:hovercraft>);
makeShaped("ar_hovercraft",
	<advancedrocketry:hovercraft>, [
		"CMC",
		"DTD",
		"E E",
	], {
		T: <advancedrocketry:structuretower>, // Structure Tower
		E: <advancedrocketry:rocketmotor>,    // Liquid Engine
		C: <ore:circuitGood>,    // T2 Circuit
		M: <extrautils2:screen>, // ExU2 Screen
		D: <ore:crystalDilithium>,   // Dilithium Crystal
	});

// Planet Selector
recipes.remove(<advancedrocketry:planetselector>);
recipes.addShaped(<advancedrocketry:planetselector>, [
	[<ore:circuitGood>            , <advancedrocketry:planetidchip> , <ore:circuitGood>           ],
	[<libvulpes:structuremachine> , <libvulpes:structuremachine>    , <libvulpes:structuremachine>]
]);

// Holographic Planet Selector
recipes.remove(<advancedrocketry:planetholoselector>);
makeShaped("ar_planetselector_holo",
	<advancedrocketry:planetholoselector>, [
		"CGC",
		"XPX",
		"CHC",
	], {
		P: <advancedrocketry:planetselector>,
		X: <libvulpes:structuremachine>,
		C: <ore:circuitGood>,
		G: <minecraft:glowstone>,
		H: <libvulpes:holoprojector>,
	});

// Advanced Machine Structure
recipes.remove(<libvulpes:advstructuremachine>);
makeShaped("ar_advanced_structure", 
	<libvulpes:advstructuremachine>, [
		"RPR",
		"PSP",
		"RPR",
	], {
		P: <gregtech:meta_item_1:12072>,
		R: <gregtech:meta_item_1:14072>,
		S: <libvulpes:structuremachine>,
	});

// Space Suit Upgrades
// Hover Upgrade
assembler.recipeBuilder()
	.inputs([
		<enderio:item_dark_steel_upgrade:1>
			.withTag({"enderio:dsu": "enderio:glide", "enderio:enabled": 1 as byte}),
		<contenttweaker:radiationlayer>,
		<contenttweaker:pressurelayer>
	])
	.outputs(<advancedrocketry:itemupgrade:0>)
	.duration(400)
	.EUt(100)
	.buildAndRegister();

// Bionic Leg upgrade
assembler.recipeBuilder()
	.inputs([
		<enderio:item_dark_steel_upgrade:1>
			.withTag({"enderio:dsu": "enderio:speedboost3", "enderio:enabled": 1 as byte}),
		<contenttweaker:radiationlayer>,
		<contenttweaker:pressurelayer>
	])
	.outputs(<advancedrocketry:itemupgrade:2>)
	.duration(400)
	.EUt(100)
	.buildAndRegister();

// Flight Speed Control Upgrade
assembler.recipeBuilder()
	.inputs([
		<enderio:item_dark_steel_upgrade:1>
			.withTag({"enderio:dsu": "enderio:travel", "enderio:enabled": 1 as byte}),
		<contenttweaker:radiationlayer>,
		<contenttweaker:pressurelayer>
	])
	.outputs(<advancedrocketry:itemupgrade:1>)
	.duration(400)
	.EUt(100)
	.buildAndRegister();

// Anti Fog visor
assembler.recipeBuilder()
	.inputs([
		<enderio:item_dark_steel_upgrade:1>
			.withTag({"enderio:dsu": "enderio:nightvision", "enderio:enabled": 1 as byte}),
		<contenttweaker:radiationlayer>,
		<contenttweaker:pressurelayer>
	])
	.outputs(<advancedrocketry:itemupgrade:4>)
	.duration(400)
	.EUt(100)
	.buildAndRegister();

// Padded Landing Boots
assembler.recipeBuilder()
	.inputs([
		<enderio:item_dark_steel_upgrade:1>
			.withTag({"enderio:dsu": "enderio:energyupgrade4", "enderio:enabled": 1 as byte}),
		<contenttweaker:radiationlayer>,
		<contenttweaker:pressurelayer>
	])
	.outputs(<advancedrocketry:itemupgrade:3>)
	.duration(400)
	.EUt(100)
	.buildAndRegister();

// Atmospheric sensor
assembler.recipeBuilder()
	.inputs([
		<enderio:item_dark_steel_upgrade>,
		<metaitem:sensor.mv>
	])
	.outputs(<advancedrocketry:atmanalyser>)
	.duration(200)
	.EUt(100)
	.buildAndRegister();

/*

  Removals

*/

mods.jei.JEI.removeAndHide(<advancedrocketry:blockpump>);    // Fluid Pump
mods.jei.JEI.removeAndHide(<advancedrocketry:centrifuge>);   // Centrifuge
mods.jei.JEI.removeAndHide(<advancedrocketry:landingfloat>); // Landing Float
mods.jei.JEI.removeAndHide(<advancedrocketry:airlock_door>); // Airlock Door (Technical Block)
mods.jei.JEI.removeAndHide(<advancedrocketry:lightsource>);  // Light source (Technical Block)
mods.jei.JEI.removeAndHide(<advancedrocketry:astrobed>);     // Astrobed     (Technical Block)

// Various unused satellite sensors
mods.jei.JEI.removeAndHide(<advancedrocketry:satelliteprimaryfunction:2>);
mods.jei.JEI.removeAndHide(<advancedrocketry:satelliteprimaryfunction:3>);
mods.jei.JEI.removeAndHide(<advancedrocketry:satelliteprimaryfunction:4>);
mods.jei.JEI.removeAndHide(<advancedrocketry:satelliteprimaryfunction:5>);

// Unused Chips
mods.jei.JEI.removeAndHide(<advancedrocketry:ic:1>);
mods.jei.JEI.removeAndHide(<advancedrocketry:satelliteidchip>);
