#priority -9500



//Omnifactory Tweaked
//Fix all the weird chemistry things.

//Polymerization of dimethyldichlorosilane does not produce water, replace diluted hcl with hcl and increase efficiency as this is a complicated recipe
reactor.findRecipe(96, [null], [<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000)
	.fluidOutputs(<liquid:hydrochloric_acid> * 1000)
	.outputs(<gregtech:meta_item_1:2392> * 3)
	.duration(240).EUt(384)
	.buildAndRegister();

//Add improved catalyzed recipe
reactor.recipeBuilder()
	.fluidInputs(<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000)
	.notConsumable(<ore:foilNaquadahAlloy> * 1)//Catalyst
	.fluidOutputs(<liquid:hydrochloric_acid> * 1500)//Not net neutral though
	.outputs(<gregtech:meta_item_1:2392> * 3)
	.duration(120).EUt(1920)
	.buildAndRegister();

//Nerf simple recipe
reactor.findRecipe(96, [<gregtech:meta_item_1:2061>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:methane> * 2000, <liquid:chlorine> * 4000, <liquid:water> * 1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:methane> * 2000, <liquid:chlorine> * 4000, <liquid:water> * 1000)
	.inputs(<gregtech:meta_item_1:2061>)
	.fluidOutputs(<liquid:diluted_hydrochloric_acid> * 2000)
	.outputs(<gregtech:meta_item_1:2392> * 3)
	.duration(720).EUt(384)
	.buildAndRegister();
