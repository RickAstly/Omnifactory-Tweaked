#priority 9500



//Omnifactory Tweaked
//Fix all the weird chemistry things.

//Polymerization of dimethyldichlorosilane does not produce water, replace 1b diluted hcl with 0.5b hcl.
reactor.findRecipe(96, [null], [<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000)
	.fluidOutputs(<liquid:hydrochloric_acid> * 500)
	.outputs(<gregtech:meta_item_1:2392> * 3)
	.buildAndRegister();

//Add improved catalyzed recipe
reactor.recipeBuilder()
	.fluidInputs(<liquid:water> * 1000, <liquid:dimethyldichlorosilane> * 1000)
	.notConsumable(<ore:foilNaquadahAlloy> * 1)//Catalyst
	.fluidOutputs(<liquid:hydrochloric_acid> * 1500)//Not net neutral though
	.outputs(<gregtech:meta_item_1:2392> * 3)
	.buildAndRegister();
