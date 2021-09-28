#Name: 06_unidict_changes.zs
#Author: Feed the Beast, taken from FTB Revelation

print("Initializing 06_unidict_changes");

#Unidict remove plate recipes
mods.unidict.removalByKind.get("Crafting").remove("plate");

recipes.remove(<thermalfoundation:material:325>);
recipes.remove(<thermalfoundation:material:324>);
recipes.remove(<thermalfoundation:material:352>);
recipes.remove(<thermalfoundation:material:33>);
recipes.remove(<thermalfoundation:material:321>);
recipes.remove(<thermalfoundation:material:320>);
recipes.remove(<thermalfoundation:material:32>);
recipes.remove(<thermalfoundation:material:323>);
recipes.remove(<thermalfoundation:material:353>);
recipes.remove(<thermalfoundation:material:327>);
recipes.remove(<thermalfoundation:material:356>);
recipes.remove(<thermalfoundation:material:358>);
recipes.remove(<thermalfoundation:material:359>);
recipes.remove(<thermalfoundation:material:354>);
recipes.remove(<thermalfoundation:material:357>);
recipes.remove(<thermalfoundation:material:328>);
recipes.remove(<thermalfoundation:material:326>);

 #Forge Hammer
recipes.addShapeless(<thermalfoundation:material:325>,
    [<ic2:forge_hammer:*>, <ore:ingotNickel>]
);
recipes.addShapeless(<thermalfoundation:material:324>,
    [<ic2:forge_hammer:*>, <ore:ingotAluminum>]
);
recipes.addShapeless(<thermalfoundation:material:352>,
    [<ic2:forge_hammer:*>, <ore:ingotSteel>]
);
recipes.addShapeless(<thermalfoundation:material:33>,
    [<ic2:forge_hammer:*>, <ore:ingotGold>]
);
recipes.addShapeless(<thermalfoundation:material:322>,
    [<ic2:forge_hammer:*>, <ore:ingotSilver>]
);
recipes.addShapeless(<thermalfoundation:material:355>,
    [<ic2:forge_hammer:*>, <ore:ingotBronze>]
);
recipes.addShapeless(<thermalfoundation:material:321>,
    [<ic2:forge_hammer:*>, <ore:ingotTin>]
);
recipes.addShapeless(<thermalfoundation:material:320>,
    [<ic2:forge_hammer:*>, <ore:ingotCopper>]
);
recipes.addShapeless(<thermalfoundation:material:32>,
    [<ic2:forge_hammer:*>, <ore:ingotIron>]
);
recipes.addShapeless(<thermalfoundation:material:323>,
    [<ic2:forge_hammer:*>, <ore:ingotLead>]
);
recipes.addShapeless(<thermalfoundation:material:353>,
    [<ic2:forge_hammer:*>, <ore:ingotElectrum>]
);
recipes.addShapeless(<thermalfoundation:material:327>,
    [<ic2:forge_hammer:*>, <ore:ingotIridium>]
);
recipes.addShapeless(<thermalfoundation:material:356>,
    [<ic2:forge_hammer:*>, <ore:ingotConstantan>]
);
recipes.addShapeless(<thermalfoundation:material:358>,
    [<ic2:forge_hammer:*>, <ore:ingotLumium>]
);
recipes.addShapeless(<thermalfoundation:material:359>,
    [<ic2:forge_hammer:*>, <ore:ingotEnderium>]
);
recipes.addShapeless(<thermalfoundation:material:354>,
    [<ic2:forge_hammer:*>, <ore:ingotInvar>]
);
recipes.addShapeless(<thermalfoundation:material:357>,
    [<ic2:forge_hammer:*>, <ore:ingotSignalum>]
);
recipes.addShapeless(<thermalfoundation:material:328>,
    [<ic2:forge_hammer:*>, <ore:ingotMithril>]
);
recipes.addShapeless(<thermalfoundation:material:326>,
    [<ic2:forge_hammer:*>, <ore:ingotPlatinum>]
);
recipes.addShapeless(<thaumcraft:plate>,
    [<ic2:forge_hammer:*>, <thaumcraft:ingot:2>]
);
recipes.addShapeless(<thaumcraft:plate:2>,
    [<ic2:forge_hammer:*>, <thaumcraft:ingot>]
);
recipes.addShapeless(<thaumcraft:plate:3>,
    [<ic2:forge_hammer:*>, <thaumcraft:ingot:1>]
);
    
    #Engineer's Hammer
recipes.addShapeless(<thermalfoundation:material:326>,
    [<immersiveengineering:tool>, <ore:ingotPlatinum>]
);
recipes.addShapeless(<thermalfoundation:material:328>,
    [<immersiveengineering:tool>, <ore:ingotMithril>]
);
recipes.addShapeless(<thermalfoundation:material:357>,
    [<immersiveengineering:tool>, <ore:ingotSignalum>]
);
recipes.addShapeless(<thermalfoundation:material:354>, 
    [<immersiveengineering:tool>, <ore:ingotInvar>]
);
recipes.addShapeless(<thermalfoundation:material:359>, 
    [<immersiveengineering:tool>, <ore:ingotEnderium>]
);
recipes.addShapeless(<thermalfoundation:material:358>, 
    [<immersiveengineering:tool>, <ore:ingotLumium>]
);
recipes.addShapeless(<thermalfoundation:material:356>, 
    [<immersiveengineering:tool>, <ore:ingotConstantan>]
);
recipes.addShapeless(<thermalfoundation:material:327>, 
    [<immersiveengineering:tool>, <ore:ingotIridium>]
);
recipes.addShapeless(<thermalfoundation:material:353>, 
    [<immersiveengineering:tool>, <ore:ingotElectrum>]
);
recipes.addShapeless(<thermalfoundation:material:323>, 
    [<immersiveengineering:tool>, <ore:ingotLead>]
);
recipes.addShapeless(<thermalfoundation:material:325>, 
    [<immersiveengineering:tool>, <ore:ingotNickel>]
);
recipes.addShapeless(<thermalfoundation:material:324>, 
    [<immersiveengineering:tool>, <ore:ingotAluminum>]
);
recipes.addShapeless(<thermalfoundation:material:352>, 
    [<immersiveengineering:tool>, <ore:ingotSteel>]
);
recipes.addShapeless(<thermalfoundation:material:33>, 
    [<immersiveengineering:tool>, <ore:ingotGold>]
);
recipes.addShapeless(<thermalfoundation:material:322>, 
    [<immersiveengineering:tool>, <ore:ingotSilver>]
);
recipes.addShapeless(<thermalfoundation:material:355>,
    [<immersiveengineering:tool>, <ore:ingotBronze>]
);
recipes.addShapeless(<thermalfoundation:material:321>, 
    [<immersiveengineering:tool>, <ore:ingotTin>]
);
recipes.addShapeless(<thermalfoundation:material:320>, 
    [<immersiveengineering:tool>, <ore:ingotCopper>]
);
recipes.addShapeless(<thermalfoundation:material:32>, 
    [<immersiveengineering:tool>, <ore:ingotIron>]
);
recipes.addShapeless(<thaumcraft:plate>,
    [<immersiveengineering:tool>, <thaumcraft:ingot:2>]
);
recipes.addShapeless(<thaumcraft:plate:2>,
    [<immersiveengineering:tool>, <thaumcraft:ingot>]
);
recipes.addShapeless(<thaumcraft:plate:3>,
    [<immersiveengineering:tool>, <thaumcraft:ingot:1>]
);

    #Steel Casing
recipes.addShapeless(<ic2:casing:5> * 2, 
    [<thermalfoundation:material:352>,<ic2:forge_hammer>]
);

recipes.addShapeless(<ic2:misc_resource:2> * 9,
    [<thermalfoundation:material:135>]
);

    #HV Cable
recipes.addShapeless(<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}) * 9,
    [<ic2:cutter>,<ore:plateIron>]
);

furnace.addRecipe(<nuclearcraft:ingot:6>,<ic2:dust:11>);

# Mek fixes
    #Lead
mods.mekanism.enrichment.removeRecipe(<immersiveengineering:ore:2>,<mekanism:dust:6>);
mods.mekanism.enrichment.removeRecipe(<ic2:resource:2>,<mekanism:dust:6>);
mods.mekanism.enrichment.removeRecipe(<nuclearcraft:ore:2>,<mekanism:dust:6>);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:3>, <thermalfoundation:material:67> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:6>, <thermalfoundation:material:67>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:6>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:67>);
mods.jei.JEI.removeAndHide(<mekanism:dust:6>);
    #Gold
mods.mekanism.enrichment.removeRecipe(<minecraft:gold_ore>,<mekanism:dust:1>);
mods.mekanism.enrichment.addRecipe(<minecraft:gold_ore>, <thermalfoundation:material:1> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:1>, <thermalfoundation:material:1>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:1>);
mods.mekanism.crusher.addRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:1>);
mods.jei.JEI.removeAndHide(<mekanism:dust:1>);
    #Iron
mods.mekanism.enrichment.addRecipe(<minecraft:iron_ore>, <thermalfoundation:material:0> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:0>, <thermalfoundation:material:0>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:0>);
mods.mekanism.crusher.addRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:0>);
mods.jei.JEI.removeAndHide(<mekanism:dust:0>);
    #Copper
mods.mekanism.enrichment.removeRecipe(<immersiveengineering:ore:0>,<mekanism:dust:3>);
mods.mekanism.enrichment.removeRecipe(<ic2:resource:1>,<mekanism:dust:3>);
mods.mekanism.enrichment.removeRecipe(<nuclearcraft:ore:0>,<mekanism:dust:3>);
mods.mekanism.enrichment.removeRecipe(<forestry:resources:1>,<mekanism:dust:3>);
mods.mekanism.enrichment.removeRecipe(<libvulpes:ore0:4>,<mekanism:dust:3>);
mods.mekanism.enrichment.removeRecipe(<mekanism:oreblock:1>,<mekanism:dust:3>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:ore:0>,<mekanism:dust:3>);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:0>, <thermalfoundation:material:64> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:3>, <thermalfoundation:material:64>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:3>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:64>);
mods.jei.JEI.removeAndHide(<mekanism:dust:3>);
    #Silver
mods.mekanism.enrichment.removeRecipe(<immersiveengineering:ore:3>,<mekanism:dust:5>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:ore:2>,<mekanism:dust:5>);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:2>, <thermalfoundation:material:66> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:5>, <thermalfoundation:material:66>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:5>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:130>, <thermalfoundation:material:66>);
mods.jei.JEI.removeAndHide(<mekanism:dust:5>);
    #Tin
mods.mekanism.enrichment.removeRecipe(<forestry:resources:2>,<mekanism:dust:4>);
mods.mekanism.enrichment.removeRecipe(<libvulpes:ore0:5>,<mekanism:dust:4>);
mods.mekanism.enrichment.removeRecipe(<mekanism:oreblock:2>,<mekanism:dust:4>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:ore:1>,<mekanism:dust:4>);
mods.mekanism.enrichment.removeRecipe(<nuclearcraft:ore:1>,<mekanism:dust:4>);
mods.mekanism.enrichment.removeRecipe(<ic2:resource:3>,<mekanism:dust:4>);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:ore:1>, <thermalfoundation:material:65> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:4>, <thermalfoundation:material:65>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:4>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:material:65>);
mods.jei.JEI.removeAndHide(<mekanism:dust:4>);
    #Steel
mods.mekanism.crusher.removeRecipe(<mekanism:otherdust:1>);
mods.mekanism.crusher.addRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:96>);
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, <thermalfoundation:material:96>);


#Integrated Dynamics fix
mods.integrateddynamics.Squeezer.addRecipe(<thermalfoundation:ore:4>, 
    <thermalfoundation:material:68>,1.0,
    <thermalfoundation:material:68>,0.75
);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<thermalfoundation:ore:4>,
    <thermalfoundation:material:68> * 2,1.0,
    <thermalfoundation:material:68>,0.5
);
mods.integrateddynamics.Squeezer.addRecipe(<mysticalworld:quartz_ore>,
    <minecraft:quartz>*2,1.0,
    <minecraft:quartz>,0.5
);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mysticalworld:quartz_ore>,
    <minecraft:quartz>*3,1.0,
    <minecraft:quartz>,0.5
);
mods.integrateddynamics.Squeezer.addRecipe(<mysticalworld:granite_quartz_ore>,
    <minecraft:quartz>*2,1.0,
    <minecraft:quartz>,0.5
);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mysticalworld:granite_quartz_ore>,
    <minecraft:quartz>*3,1.0,
    <minecraft:quartz>,0.5
);
mods.integrateddynamics.Squeezer.addRecipe(<thaumcraft:ore_quartz>,
    <minecraft:quartz>*2,1.0,
    <minecraft:quartz>,0.5
);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<thaumcraft:ore_quartz>,
    <minecraft:quartz>*3,1.0,
    <minecraft:quartz>,0.5
);

#Titanium fix
mods.immersiveengineering.Crusher.removeRecipe(<qmd:dust:3>);
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust:7>, <libvulpes:productingot:7>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust:7>*2, <libvulpes:ore0:8>, 2048);
mods.immersiveengineering.ArcFurnace.removeRecipe(<qmd:ingot:3>);
mods.immersiveengineering.ArcFurnace.addRecipe(<libvulpes:productingot:7>*2, <libvulpes:ore0:8>, <immersiveengineering:material:7>, 2000, 2048);
mods.immersiveengineering.ArcFurnace.addRecipe(<libvulpes:productingot:7>, <libvulpes:productdust:7>, <immersiveengineering:material:7>, 2000, 2048);
mods.bloodmagic.AlchemyTable.removeRecipe([<bloodmagic:cutting_fluid>.withTag({}),<libvulpes:ore0:8>]);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<qmd:dust:3>);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<qmd:dust:3>*2);
mods.nuclearcraft.Manufactory.addRecipe(<libvulpes:ore0:8>, <libvulpes:productdust:7>*2);
mods.nuclearcraft.Manufactory.addRecipe(<libvulpes:productingot:7>, <libvulpes:productdust:7>);

#Prefab
mods.jei.JEI.removeAndHide(<prefab:block_compressed_stone:5>);
mods.jei.JEI.removeAndHide(<prefab:block_compressed_stone:6>);
recipes.removeByRecipeName("prefab:compressed_dirt_to_dirt");
recipes.removeByRecipeName("prefab:jail");
recipes.addShaped("prefab_fixed_jail",
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "Jail", structureDisplayName: "Jail"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, tag: {}, Damage: 0 as short}),
    [
        [<ore:barsIron>,<ore:barsIron>,<ore:barsIron>],
        [<ore:barsIron>,<ore:compressedStone3>,<ore:barsIron>],
        [<ore:compressed2xDirt>,<ore:compressedStone2>,<ore:compressed2xDirt>]
    ]
);
recipes.removeByRecipeName("prefab:tree_farm_with_lanterns");
recipes.addShaped("prefab_fixed_tree_1",
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "Jail", structureDisplayName: "Jail"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, tag: {}, Damage: 0 as short}),
    [
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>],
        [<minecraft:flower_pot>,<prefab:item_coil_of_lanterns>,<minecraft:flower_pot>],
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>]
    ]
);
recipes.removeByRecipeName("prefab:tree_farm");
recipes.addShaped("prefab_fixed_tree_2",
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "Jail", structureDisplayName: "Jail"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, tag: {}, Damage: 0 as short}),
    [
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>],
        [<minecraft:flower_pot>,<ore:compressedGlowstone2>,<minecraft:flower_pot>],
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>]
    ]
);
recipes.removeByRecipeName("prefab:chicken_coop");
recipes.addShaped("prefab_fixed_chicken_coop",
    <prefab:item_chicken_coop>,
    [
        [<minecraft:brick_block>,<minecraft:brick_block>,<minecraft:brick_block>],
        [<ore:logWood>,<ore:egg>,<ore:logWood>],
        [<ore:compressed1xDirt>,<minecraft:hay_block>,<ore:compressed1xDirt>]
    ]
);
recipes.removeByRecipeName("prefab:fish_farm");
recipes.addShaped("prefab_fixed_fish",
    <prefab:item_fish_pond>,
    [
        [<minecraft:tallgrass:1>,<ore:sugarcane>,<ore:treeSapling>],
        [<minecraft:water_bucket>,<minecraft:fishing_rod>,<minecraft:water_bucket>],
        [<ore:compressed2xDirt>,<ore:fish>,<ore:compressed2xDirt>]
    ]
);
recipes.removeByRecipeName("prefab:produce_farm_with_lanterns");
recipes.addShaped("prefab_fixed_produce_1",
    <prefab:item_produce_farm>,
    [
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>],
        [<minecraft:water_bucket>,<prefab:item_coil_of_lanterns>,<minecraft:water_bucket>],
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>]
    ]
);
recipes.removeByRecipeName("prefab:produce_farm");
recipes.addShaped("prefab_fixed_produce_2",
    <prefab:item_produce_farm>,
    [
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>],
        [<minecraft:water_bucket>,<ore:compressedGlowstone2>,<minecraft:water_bucket>],
        [<prefab:item_pallet_of_bricks>,<ore:compressed2xDirt>,<prefab:item_pallet_of_bricks>]
    ]
);
recipes.removeByRecipeName("prefab:green_house");
recipes.addShaped("prefab_fixed_greenhouse",
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "GreenHouse", structureDisplayName: "Green House"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, tag: {}, Damage: 0 as short}),
    [
        [<ore:compressedStone2>,<ore:paneGlassColorless>,<ore:compressedStone2>],
        [<ore:compressedStone2>,<minecraft:water_bucket>,<ore:compressedStone2>],
        [<prefab:item_string_of_lanterns>,<ore:compressed2xDirt>,<prefab:item_string_of_lanterns>]
    ]
);
recipes.removeByRecipeName("prefab:grassy_plains");
recipes.addShaped("prefab_fixed_grass",
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "GrassyPlain", structureDisplayName: "Grassy Plains"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, tag: {}, Damage: 0 as short}),
    [
        [<minecraft:tallgrass:1>,<minecraft:tallgrass:1>,<minecraft:tallgrass:1>],
        [<ore:compressed1xDirt>,<ore:compressed1xDirt>,<ore:compressed1xDirt>],
        [<ore:compressed2xDirt>,<ore:compressed2xDirt>,<ore:compressed2xDirt>]
    ]
);
recipes.removeByRecipeName("prefab:barn");
recipes.addShaped("prefab_fixed_barn",
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "Barn", structureDisplayName: "Barn"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, tag: {}, Damage: 0 as short}),
    [
        [<prefab:item_pallet_of_bricks>,<ore:compressedGlowstone1>,<prefab:item_pallet_of_bricks>],
        [<prefab:item_bundle_of_timber>,<prefab:item_bundle_of_timber>,<prefab:item_bundle_of_timber>],
        [<prefab:item_bundle_of_timber>,<ore:compressed1xDirt>,<prefab:item_bundle_of_timber>]
    ]
);

mods.immersiveengineering.ArcFurnace.removeRecipe(<mekanism:ingot:0>);
mods.immersiveengineering.ArcFurnace.addRecipe(<mekanism:ingot:0>, <mekanism:otherdust:5>, <immersiveengineering:material:7>, 2000, 512, [<mekanism:ingot:1>]);

/* Ingots to Plates */
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:322>, <thermalfoundation:material:130>); /*Silver*/
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:324>, <thermalfoundation:material:132>); /*Aluminum*/
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:325>, <thermalfoundation:material:133>); /*Nickel*/
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:327>, <thermalfoundation:material:135>); /*Iridium*/
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:353>, <thermalfoundation:material:161>); /*Electrum*/
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:356>, <thermalfoundation:material:164>); /*Constantan*/
mods.ic2.MetalFormer.addRollingRecipe(<libvulpes:productplate:3>, <libvulpes:productingot:3>); /*Silicon*/
mods.ic2.MetalFormer.addRollingRecipe(<libvulpes:productplate:7>, <libvulpes:productingot:7>); /*Titanium*/
mods.ic2.MetalFormer.addRollingRecipe(<thaumcraft:plate:0>, <thaumcraft:ingot:2>); /*Brass*/
mods.ic2.MetalFormer.addRollingRecipe(<thaumcraft:plate:2>, <thaumcraft:ingot:0>); /*Thaumium*/
mods.ic2.MetalFormer.addRollingRecipe(<thaumcraft:plate:3>, <thaumcraft:ingot:1>); /*Void*/
/* Blocks to Plates */
mods.ic2.BlockCutter.addRecipe(<thermalfoundation:material:322>*9, <thermalfoundation:storage:2>); /*Silver*/
mods.ic2.BlockCutter.addRecipe(<thermalfoundation:material:324>*9, <thermalfoundation:storage:4>); /*Aluminum*/
mods.ic2.BlockCutter.addRecipe(<thermalfoundation:material:325>*9, <thermalfoundation:storage:5>); /*Nickel*/
mods.ic2.BlockCutter.addRecipe(<thermalfoundation:material:327>*9, <thermalfoundation:storage:7>); /*Iridium*/
mods.ic2.BlockCutter.addRecipe(<thermalfoundation:material:353>*9, <thermalfoundation:storage_alloy:1>); /*Electrum*/
mods.ic2.BlockCutter.addRecipe(<thermalfoundation:material:356>*9, <thermalfoundation:storage_alloy:4>); /*Constantan*/
mods.ic2.BlockCutter.addRecipe(<libvulpes:productplate:7>*9, <libvulpes:metal0:7>); /*Titanium*/
mods.ic2.BlockCutter.addRecipe(<thaumcraft:plate:0>*9, <thaumcraft:metal_brass>); /*Brass*/
mods.ic2.BlockCutter.addRecipe(<thaumcraft:plate:2>*9, <thaumcraft:metal_thaumium>); /*Thaumium*/
mods.ic2.BlockCutter.addRecipe(<thaumcraft:plate:3>*9, <thaumcraft:metal_void>); /*Void*/

/*QMD Osmium removal*/
mods.immersiveengineering.Crusher.removeRecipe(<qmd:dust:8>);
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dust:2>,<mekanism:ingot:1>,2048);
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dust:2>*2,<mekanism:oreblock:0>,2048);
mods.bloodmagic.AlchemyTable.removeRecipe([<mekanism:oreblock:0>,<bloodmagic:cutting_fluid>]);
mods.bloodmagic.AlchemyTable.addRecipe(<mekanism:dust:2>*2,
    [<mekanism:oreblock:0>,<bloodmagic:cutting_fluid>],
    2,200,0
);
mods.appliedenergistics2.Grinder.removeRecipe(<mekanism:crystal:2>);
mods.appliedenergistics2.Grinder.removeRecipe(<qmd:ingot:8>);
mods.appliedenergistics2.Grinder.removeRecipe(<mekanism:oreblock:0>);
mods.appliedenergistics2.Grinder.removeRecipe(<mekanism:ingot:1>);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:2>, <mekanism:crystal:2>,4);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:2>, <qmd:ingot:8>,4);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:2>, <mekanism:oreblock:0>,4);
/* mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:2>, <mekanism:ingot:1>,4,<mekanism:dust:2>,90); */

recipes.removeByRecipeName("thermalfoundation:paper");

<ore:dustCoal>.remove(<enderio:item_material:23>);
<ore:dustCoal>.remove(<threng:material:3>);
<ore:dustCoal>.remove(<nuclearcraft:gem_dust:7>);
<ore:dustObsidian>.remove(<enderio:item_material:29>);
<ore:dustObsidian>.remove(<ic2:dust:12>);
<ore:dustObsidian>.remove(<mekanism:otherdust:6>);
mods.mekanism.enrichment.removeRecipe(<minecraft:obsidian>);
mods.mekanism.enrichment.addRecipe(<minecraft:obsidian>, <thermalfoundation:material:770> * 4);
<ore:dustObsidian>.remove(<nuclearcraft:gem_dust:3>);
<ore:dustEnderPearl>.remove(<ic2:dust:31>);
<ore:dustTin>.remove(<enderio:item_material:27>);
<ore:dustCopper>.remove(<enderio:item_material:26>);
<ore:dustGold>.remove(<appliedenergistics2:material:51>);
<ore:dustGold>.remove(<bloodmagic:component:20>);
<ore:dustGold>.remove(<enderio:item_material:25>);
<ore:dustGold>.remove(<immersiveengineering:metal:19>);


print("Initialized 06_unidict_changes");