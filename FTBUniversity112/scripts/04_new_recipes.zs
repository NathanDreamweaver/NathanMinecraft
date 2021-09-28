#Name:04_unifier.zs
#Author: Feed The Beast and aaronhowser1

import crafttweaker.item.IItemStack;
import mods.thaumcraft.Infusion;


print("Initializing 04_modifier.zs");

recipes.addShapeless("akashic_filled",
    <akashictome:tome>.withTag({"akashictome:data": {integratedtunnels: {id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, pneumaticcraft: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "pneumaticcraft", "patchouli:book": "pneumaticcraft:book"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, rftools: {id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, deepmoblearning: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, rftools1: {id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rftools2: {id: "rftoolsdim:rftoolsdim_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools2"}, Damage: 0 as short}, extendedcrafting: {id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}, logisticspipes: {id: "logisticspipes:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "logisticspipes"}, Damage: 0 as short}, bloodmagic: {id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, opencomputers: {id: "opencomputers:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "opencomputers"}, Damage: 4 as short}, forestry: {id: "forestry:book_forester", Count: 1 as byte, tag: {"akashictome:definedMod": "forestry"}, Damage: 0 as short}, xnet: {id: "xnet:xnet_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "xnet"}, Damage: 0 as short}, nuclearcraft: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "nuclearcraft", "patchouli:book": "nuclearcraft:guide"}, Damage: 0 as short}}}),
    [<minecraft:dirt>]
);
recipes.removeByRecipeName("nuclearcraft:item.book");

recipes.removeByRecipeName("extrautils2:resonator");
recipes.addShaped("resonator_fixed_recipe",
    <extrautils2:resonator>,
    [
        [<minecraft:redstone>, <minecraft:coal_block>, <minecraft:redstone>],
        [<minecraft:iron_ingot>, <extrautils2:ingredients:0>, <minecraft:iron_ingot>],
        [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
    ]
);

recipes.addShapeless("undertale_reference",<minecraft:gold_ingot>,[<ore:coinGold>]);

/* Thank you so much to the BlameJared discord for the help with this!
Special shoutouts to Silk, Firstnecron, kindlich, and Jared! */
val blacklistCreativeHarvest = [
    <extrautils2:creativeharvest>,
    <minecraft:stone>,
    <minecraft:ender_chest>,
    <minecraft:chest>,
    <minecraft:white_shulker_box>,
    <minecraft:orange_shulker_box>,
    <minecraft:magenta_shulker_box>,
    <minecraft:light_blue_shulker_box>,
    <minecraft:yellow_shulker_box>,
    <minecraft:lime_shulker_box>,
    <minecraft:pink_shulker_box>,
    <minecraft:gray_shulker_box>,
    <minecraft:silver_shulker_box>,
    <minecraft:cyan_shulker_box>,
    <minecraft:purple_shulker_box>,
    <minecraft:blue_shulker_box>,
    <minecraft:brown_shulker_box>,
    <minecraft:green_shulker_box>,
    <minecraft:red_shulker_box>,
    <minecraft:black_shulker_box>,
    <minecraft:banner>
] as IItemStack[];

recipes.addHiddenShapeless("set_creative_harvest",
    <extrautils2:creativeharvest>,
    [
        <extrautils2:creativeharvest>,
        <*>.only(function(item) {
                if(!item.isItemBlock) {
                    return false;
                }
                if(item.hasTag) {
                    return false;
                }
                for blacklisted in blacklistCreativeHarvest {
                    if(blacklisted.matches(item)) {
                        return false;
                    }
                }
                return true;
            })
            .marked("target")
            .reuse()
        ],
    function(out, ingredients, craft) {
        val targetStack = ingredients.target;
        val targetDamage = ingredients.target.damage;
        print(targetStack.name);
        return out.withTag({creative_block:{
                                meta: targetDamage,
                                block: targetStack.definition.id
                            },
                            display_stack: {
                                id: targetStack.definition.id,
                                Count: 1 as byte,
                                Damage: targetDamage as short}
                            }
                        );
    },
    null
);

recipes.addShapeless("example_creative_harvest",
    <extrautils2:creativeharvest>.withTag({creative_block: {meta: 0, block: "minecraft:stone"}, display_stack: {id: "minecraft:stone", Count: 1 as byte, Damage: 0 as short}}),
    [
        <extrautils2:creativeharvest>,
        <minecraft:stone>.reuse()
    ]
);

# Thanks to Eutro for script help
recipes.addHiddenShapeless("set_creative_drum",
    <extrautils2:drum:4>,
    [
        <extrautils2:drum:4>,
        <*>.only(function(item) {
                if item.matches(<minecraft:water_bucket>) return false;
                return !isNull(item.liquid);
        })
            .marked("target")
            .reuse()
        ],
    function(out, ingredients, craft) {
        val targetFluid = ingredients.target;
        print(targetFluid.liquid.name);
        return out.withTag({Fluid:{
                                Amount: 10000000,
                                FluidName: targetFluid.liquid.name
                            }}
                        );
    },
    null
);

recipes.addShapeless("example_creative_drum",
    <extrautils2:drum:4>.withTag({Fluid: {FluidName: "water", Amount: 10000000}}),
    [
        <extrautils2:drum:4>,
        <minecraft:water_bucket>.reuse()
    ]
);


recipes.removeByRecipeName("mekanismtools:steelpaxel");
recipes.addShaped("steel_paxel",
    <mekanismtools:steelpaxel>,
    [
        [<thermalfoundation:tool.axe_steel>, <thermalfoundation:tool.pickaxe_steel>, <thermalfoundation:tool.shovel_steel>],
        [null, <ore:ingotSteel>, null],
        [null, <ore:ingotSteel>, null]
    ]
);

recipes.removeByRecipeName("mekanismtools:bronzepaxel");
recipes.addShaped("bronze_paxel",
    <mekanismtools:bronzepaxel>,
    [
        [<thermalfoundation:tool.axe_bronze>, <thermalfoundation:tool.pickaxe_bronze>, <thermalfoundation:tool.shovel_bronze>],
        [null, <ore:stickWood>, null],
        [null, <ore:stickWood>, null]
    ]
);

mods.recipestages.Recipes.setPackageStage("appeng", ["gendustry_unlocked","ec_unlocked"]);

#Adds gamestages to certain Gendustry recipes, because Gendustry adds recipes in postinit *for some reason*
#Original recipes were removed in the config

mods.recipestages.Recipes.addShaped("genetic_replicator_gamestaged",
    "gendustry_unlocked",
    <gendustry:replicator>,
    [
        [<ore:gearBronze>, <gendustry:genetics_processor>, <ore:gearBronze>],
        [<gendustry:power_module>, <forestry:sturdy_machine>, <gendustry:power_module>],
        [<ore:gearBronze>, <gendustry:genetics_processor>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("genetic_transposer_gamestaged",
    "gendustry_unlocked",
    <gendustry:transposer>,
    [
        [<ore:gearBronze>, <ore:ingotBronze>, <ore:gearBronze>],
        [<gendustry:genetics_processor>, <forestry:sturdy_machine>, <gendustry:genetics_processor>],
        [<ore:gearBronze>, <gendustry:power_module>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("dna_extractor_gamestaged",
    "gendustry_unlocked",
    <gendustry:extractor>,
    [
        [<ore:gearBronze>, <minecraft:hopper>, <ore:gearBronze>],
        [<gendustry:genetics_processor>, <forestry:sturdy_machine>, <gendustry:genetics_processor>],
        [<ore:gearBronze>, <gendustry:power_module>, <ore:gearBronze>]
    ]
);

recipes.remove(<gendustry:liquifier>);
mods.recipestages.Recipes.addShaped("protein_liquifier_gamestaged",
    "gendustry_unlocked",
    <gendustry:liquifier>,
    [
        [<ore:gearBronze>, <minecraft:hopper>, <ore:gearBronze>],
        [<minecraft:piston>, <forestry:sturdy_machine>, <minecraft:piston>],
        [<ore:gearBronze>, <gendustry:power_module>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("advanced_mutatron_gamestaged",
    "gendustry_unlocked",
    <gendustry:mutatron_advanced>,
    [
        [<ore:gearBronze>, <minecraft:quartz>, <ore:gearBronze>],
        [<gendustry:genetics_processor>, <gendustry:mutatron>, <gendustry:genetics_processor>],
        [<ore:gearBronze>, <gendustry:power_module>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("genetic_sampler_gamestaged",
    "gendustry_unlocked",
    <gendustry:sampler>,
    [
        [<ore:gearBronze>, <gendustry:genetics_processor>, <ore:gearBronze>],
        [<gendustry:bee_receptacle>, <forestry:sturdy_machine>, <ore:gemDiamond>],
        [<ore:gearBronze>, <gendustry:power_module>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("industrial_apiary_gamestaged",
    "gendustry_unlocked",
    <gendustry:industrial_apiary>,
    [
        [<ore:blockGlass>, <gendustry:bee_receptacle>, <ore:blockGlass>],
        [<ore:blockGlass>, <forestry:sturdy_machine>, <ore:blockGlass>],
        [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("mutatron_gamestaged",
    "gendustry_unlocked",
    <gendustry:mutatron>,
    [
        [<gendustry:bee_receptacle>, <gendustry:genetics_processor>, <ore:ingotBronze>],
        [<gendustry:power_module>, <forestry:sturdy_machine>, <gendustry:bee_receptacle>],
        [<gendustry:bee_receptacle>, <gendustry:mutagen_tank>, <ore:ingotBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("mutagen_producer_gamestaged",
    "gendustry_unlocked",
    <gendustry:mutagen_producer>,
    [
        [<ore:ingotBronze>, <minecraft:hopper>, <ore:ingotBronze>],
        [<gendustry:power_module>, <forestry:sturdy_machine>, <gendustry:power_module>],
        [<ore:gearBronze>, <gendustry:mutagen_tank>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShaped("genetic_imprinter_gamestaged",
    "gendustry_unlocked",
    <gendustry:imprinter>,
    [
        [<ore:gearBronze>, <gendustry:genetics_processor>, <ore:gearBronze>],
        [<gendustry:bee_receptacle>, <forestry:sturdy_machine>, <gendustry:bee_receptacle>],
        [<ore:gearBronze>, <gendustry:power_module>, <ore:gearBronze>]
    ]
);

mods.recipestages.Recipes.addShapeless("pollen_kit_gamestaged",
    "gendustry_unlocked",
    <gendustry:pollen_kit>,
    [
        <gendustry:labware>, <minecraft:string>, <minecraft:paper>
    ]
);

mods.recipestages.Recipes.setRecipeStageByMod("ec_unlocked", "energyconverters");


#New Compressed Cobble
val exu = <extrautils2:compressedcobblestone:7>;
val comp1 = <contenttweaker:compressedoctuplecompressedcobblestone>;
val comp2 = <contenttweaker:doublecompressedoctuplecompressedcobblestone>;
val comp3 = <contenttweaker:triplecompressedoctuplecompressedcobblestone>;
val comp4 = <contenttweaker:quadruplecompressedoctuplecompressedcobblestone>;
val comp5 = <contenttweaker:quintuplecompressedoctuplecompressedcobblestone>;
val comp6 = <contenttweaker:sextuplecompressedoctuplecompressedcobblestone>;
val comp7 = <contenttweaker:septuplecompressedoctuplecompressedcobblestone>;
val comp8 = <contenttweaker:octuplecompressedoctuplecompressedcobblestone>;

recipes.addShaped("create_oct_1",
    comp1,
    [
        [exu, exu, exu],
        [exu, exu, exu],
        [exu, exu, exu]
    ]
);

recipes.addShapeless("decompress_oct_1",
    exu * 9,
    [comp1]
);

recipes.addShaped("create_oct_2",
    comp2,
    [
        [comp1, comp1, comp1],
        [comp1, comp1, comp1],
        [comp1, comp1, comp1]
    ]
);

recipes.addShapeless("decompress_oct_2",
    comp1 * 9,
    [comp2]
);

recipes.addShaped("create_oct_3",
    comp3,
    [
        [comp2, comp2, comp2],
        [comp2, comp2, comp2],
        [comp2, comp2, comp2]
    ]
);

recipes.addShapeless("decompress_oct_3",
    comp2 * 9,
    [comp3]
);

recipes.addShaped("create_oct_4",
    comp4,
    [
        [comp3, comp3, comp3],
        [comp3, comp3, comp3],
        [comp3, comp3, comp3]
    ]
);

recipes.addShapeless("decompress_oct_4",
    comp3 * 9,
    [comp4]
);

recipes.addShaped("create_oct_5",
    comp5,
    [
        [comp4, comp4, comp4],
        [comp4, comp4, comp4],
        [comp4, comp4, comp4]
    ]
);

recipes.addShapeless("decompress_oct_5",
    comp4 * 9,
    [comp5]
);

recipes.addShaped("create_oct_6",
    comp6,
    [
        [comp5, comp5, comp5],
        [comp5, comp5, comp5],
        [comp5, comp5, comp5]
    ]
);

recipes.addShapeless("decompress_oct_6",
    comp5 * 9,
    [comp6]
);

recipes.addShaped("create_oct_7",
    comp7,
    [
        [comp6, comp6, comp6],
        [comp6, comp6, comp6],
        [comp6, comp6, comp6]
    ]
);

recipes.addShapeless("decompress_oct_7",
    comp6 * 9,
    [comp7]
);

recipes.addShaped("create_oct_8",
    comp8,
    [
        [comp7, comp7, comp7],
        [comp7, comp7, comp7],
        [comp7, comp7, comp7]
    ]
);

recipes.addShapeless("decompress_oct_8",
    comp7 * 9,
    [comp8]
);

furnace.addRecipe(<contenttweaker:arbitrarium_ingot>, <contenttweaker:arbitrarium_ore>, 20);

recipes.addShaped("compress_arbitrary",
    <contenttweaker:arbitrarium_block>,
    [
        [<contenttweaker:arbitrarium_ingot>,<contenttweaker:arbitrarium_ingot>,<contenttweaker:arbitrarium_ingot>],
        [<contenttweaker:arbitrarium_ingot>,<contenttweaker:arbitrarium_ingot>,<contenttweaker:arbitrarium_ingot>],
        [<contenttweaker:arbitrarium_ingot>,<contenttweaker:arbitrarium_ingot>,<contenttweaker:arbitrarium_ingot>]
    ]
);

recipes.addShapeless("decompress_arbitrary",
    <contenttweaker:arbitrarium_ingot> * 9,
    [<contenttweaker:arbitrarium_block>]
);

recipes.addShapeless("calc_press",
    <appliedenergistics2:material:13>,
    [<appliedenergistics2:sky_compass>,<appliedenergistics2:material:10>]
);

recipes.addShapeless("engi_press",
    <appliedenergistics2:material:14>,
    [<appliedenergistics2:sky_compass>,<minecraft:diamond>]
);

recipes.addShapeless("logic_press",
    <appliedenergistics2:material:15>,
    [<appliedenergistics2:sky_compass>,<minecraft:gold_ingot>]
);

recipes.addShapeless("sili_press",
    <appliedenergistics2:material:19>,
    [<appliedenergistics2:sky_compass>,<ore:itemSilicon>]
);

recipes.addShapeless("name_press",
    <appliedenergistics2:material:21>,
    [<appliedenergistics2:sky_compass>,<minecraft:name_tag>]
);

recipes.addShaped("sky_stone",
    <appliedenergistics2:sky_stone_block> * 8,
    [
        [<minecraft:stone:0>,<minecraft:obsidian>,<minecraft:stone:0>],
        [<minecraft:obsidian>,<appliedenergistics2:sky_compass>,<minecraft:obsidian>],
        [<minecraft:stone:0>,<minecraft:obsidian>,<minecraft:stone:0>]
    ]
);

recipes.removeByRecipeName("forestry:bottler");
recipes.addShaped("fixed_forestry_bottler",
    <forestry:bottler>,
    [
        [<forestry:can>, <ore:blockGlass>, <forestry:can>],
        [<ore:blockGlass>,<forestry:sturdy_machine>,<ore:blockGlass>],
        [<forestry:can>, <ore:blockGlass>, <forestry:can>]
    ]
);

recipes.addShaped("feral_ratlantean_egg",
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:feral_ratlantean"}}),
    [
        [null,<minecraft:rotten_flesh>,null],
        [<rats:feral_rat_claw>,<rats:raw_rat>,<rats:feral_rat_claw>],
        [null,<minecraft:egg>,null]
    ]
);

recipes.addShaped("ratlantean_spirit_egg",
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:ratlantean_spirit"}}),
    [
        [null,<minecraft:blaze_powder>,null],
        [<minecraft:blaze_powder>,<minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:feral_ratlantean"}}),<minecraft:blaze_powder>],
        [null,<minecraft:blaze_powder>,null]
    ]
);

recipes.addShaped("pirat_egg",
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:pirat"}}),
    [
        [null,<rats:pirat_hat>],
        [null,<minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:feral_ratlantean"}}),<rats:pirat_cutlass>]
    ]
);

recipes.addShaped("new_elytra_recipe",
    <minecraft:elytra>,
    [
        [null,<botania:manaresource:9>,null],
        [<rats:dragon_wing>,<deepmoblearning:pristine_matter_dragon>,<rats:dragon_wing>],
        [null,<botania:cosmetic:13>,null]
    ]
);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_helmet>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_helmet>, [
	[null, null, null, null, <botania:incensestick>.withTag({brewKey: "nightVision"}), null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ic2:quantum_helmet>.withTag({charge: 1.0E7}), <ore:ingotInfinity>, <botania:elementiumhelm>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, null, <avaritia:resource:5>, <enderio:item_stellar_alloy_helmet>, <avaritia:resource:5>, null, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <rftools:saturationplus_module>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <thaumicaugmentation:starfield_glass>, <ore:ingotInfinity>, null, <ore:ingotInfinity>, null, <ore:ingotInfinity>, <thaumicaugmentation:starfield_glass>, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_boots>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_boots>, [
	[null, <ore:ingotCosmicNeutronium>, <thaumcraft:jar_normal>.withTag({Aspects: [{amount: 250, key: "motus"}]}), <thaumicaugmentation:starfield_glass>, <ic2:quantum_boots>.withTag({charge: 1.0E7}), <thaumicaugmentation:starfield_glass>, <mekanism:freerunners>.withTag({mekData: {energyStored: 64000.0}}), <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <extrautils2:ingredients:16>, <ore:ingotCosmicNeutronium>, <thaumcraft:void_boots>, <ore:ingotCosmicNeutronium>, <extrautils2:ingredients:16>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, <botania:elementiumboots>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, <enderio:item_stellar_alloy_boots>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<bloodmagic:blood_rune:1>, <darkutils:trap_move_hyper>, <darkutils:trap_move_hyper>, <environmentaltech:modifier_jump_boost>, null, <environmentaltech:modifier_speed>, <darkutils:trap_move_hyper>, <darkutils:trap_move_hyper>, <bloodmagic:blood_rune:1>], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_shovel>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_shovel>, [
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:blockInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, null, <thaumcraft:elemental_shovel>, null, <ore:ingotInfinity>, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, null, null, null, null, null, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, null, null, null, null, null], 
	[<ore:ingotCosmicNeutronium>, null, null, null, null, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pickaxe>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_pickaxe>, [
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <mekanism:atomicdisassembler>.withTag({mekData: {energyStored: 1000000.0}}), <ore:blockCrystalMatrix>, <advancedrocketry:jackhammer>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, null, null, <thaumcraft:void_pick>, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null], 
	[null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_chestplate>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_chestplate>, [
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null], 
	[<ore:ingotCosmicNeutronium>, <extrautils2:angelring>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <hooked:hook:4>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <thaumicaugmentation:starfield_glass>, null, null, null, <thaumicaugmentation:starfield_glass>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <enderio:item_stellar_alloy_chestplate>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <mekanism:armoredjetpack>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}), <environmentaltech:modifier_creative_flight>, <ic2:jetpack_electric>.withTag({charge: 30000.0}), <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <botania:elementiumchest>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotInfinity>, <rftools:flight_module>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null], 
	[null, <ore:ingotCosmicNeutronium>, <environmentaltech:modifier_flight_speed>, <ore:ingotInfinity>, <ic2:quantum_chestplate>.withTag({charge: 1.0E7}), <ore:ingotInfinity>, <environmentaltech:modifier_flight_speed>, <ore:ingotCosmicNeutronium>, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_hoe>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_hoe>, [
	[null, null, null, null, null, <thaumcraft:lamp_growth>, null, null, null], 
	[null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <thaumcraft:elemental_hoe>, <ore:ingotInfinity>, null, null], 
	[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <enderio:item_dark_steel_hand>.withTag({"enderio.darksteel.upgrade.energyUpgrade": {level: 3, energy: 1000000}}), <ore:ingotInfinity>, null, null], 
	[<ore:ingotInfinity>, null, null, null, null, <ic2:electric_hoe>.withTag({charge: 10000.0}), <ore:ingotInfinity>, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_bow>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_bow>, [
	[null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[null, <extrautils2:compoundbow>, null, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[<pneumaticcraft:minigun>, null, null, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[<ore:ingotInfinity>, null, null, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[null, <thaumcraft:turret:1>, null, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, null, <appliedenergistics2:part:76>, null, null, null, null], 
	[null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:skullfire_sword>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:skullfire_sword>, [
	[null, null, null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>], 
	[null, null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>], 
	[null, null, null, null, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>, null], 
	[null, null, null, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>, null, null], 
	[null, <ore:bone>, null, <ore:ingotCrystalMatrix>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>, null, null, null], 
	[null, null, <ore:bone>, <ore:itemBlazePowder>, <ore:ingotCrystalMatrix>, null, null, null, null], 
	[null, null, <ore:logWood>, <ore:bone>, null, null, null, null, null], 
	[null, <ore:logWood>, null, null, <ore:bone>, null, null, null, null], 
	[<ore:netherStar>, null, null, null, null, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_sword>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_sword>, [
	[null, null, null, null, null, null, null, <ore:ingotInfinity>, <extrautils2:spike_creative>],
	[null, null, null, null, null, null, <ore:ingotInfinity>, <thaumcraft:jar_normal>.withTag({Aspects: [{amount: 250, key: "mortuus"}]}), <ore:ingotInfinity>], 
	[null, null, null, null, null, <ore:ingotInfinity>, <ic2:nano_saber>.withTag({charge: 160000.0}), <ore:ingotInfinity>, null], 
	[null, null, null, null, <ore:ingotInfinity>, <extrautils2:lawsword>.withTag({ench: [{lvl: 6 as short, id: 21 as short}, {lvl: 10 as short, id: 16 as short}]}), <ore:ingotInfinity>, null, null], 
	[null, <ore:ingotCrystalMatrix>, null, <ore:ingotInfinity>, <rats:plague_scythe>, <ore:ingotInfinity>, null, null, null], 
	[null, null, <ore:ingotCrystalMatrix>, <mahoutsukai:caliburn>, <ore:ingotInfinity>, null, null, null, null], 
	[null, null, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, null, null, null, null, null], 
	[null, <ore:ingotCosmicNeutronium>, null, null, <ore:ingotCrystalMatrix>, null, null, null, null], 
	[<avaritia:resource:5>, null, null, null, null, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_axe>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_axe>, [
	[null, null, null, <ore:ingotInfinity>, null, null, null, null, null], 
	[null, null, <ore:ingotInfinity>, <ic2:chainsaw>.withTag({charge: 30000.0}), <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null, null], 
	[null, null, null, <ore:ingotInfinity>, <extrautils2:fireaxe>, <thaumcraft:elemental_axe>.withTag({infench: [{lvl: 1 as short, id: 2 as short}, {lvl: 1 as short, id: 0 as short}]}), <ore:ingotInfinity>, null, null], 
	[null, null, null, null, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null], 
	[null, null, null, null, null, null, <ore:ingotCosmicNeutronium>, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pants>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:infinity_pants>, [
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ic2:quantum_leggings>.withTag({charge: 1.0E7}), <ore:ingotInfinity>, <ore:ingotInfinity>, <avaritia:resource:5>, <ore:ingotInfinity>, <ore:ingotInfinity>, <botania:elementiumlegs>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <enderio:block_reinforced_obsidian>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <enderio:block_reinforced_obsidian>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <thaumcraft:void_robe_legs>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <enderio:item_stellar_alloy_leggings>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <thaumicaugmentation:starfield_glass>, <ore:ingotCosmicNeutronium>, null, null, null, <ore:ingotCosmicNeutronium>, <thaumicaugmentation:starfield_glass>, <ore:ingotCosmicNeutronium>]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:resource:6>, [
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
mods.extendedcrafting.TableCrafting.addShapeless(0,
    <avaritia:resource:5>,
    [
        <avaritia:resource:0>,
        <avaritia:resource:1>,
        <avaritia:resource:2>,
        <avaritia:resource:3>,
        <avaritia:resource:4>,
        <avaritia:ultimate_stew>,
        <avaritia:cosmic_meatballs>,
        <avaritia:endest_pearl>,
        <avaritia:resource:7>,
        <extendedcrafting:singularity_ultimate>
    ]
);

mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:neutron_collector>, [
	[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:ingotCrystalMatrix>, <ore:blockIron>, <ore:ingotCrystalMatrix>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>], 
	[<ore:blockIron>, null, null, null, null, null, null, null, <ore:blockIron>], 
	[<ore:blockIron>, null, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, null, <ore:blockIron>], 
	[<ore:ingotCrystalMatrix>, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, <ore:ingotCrystalMatrix>], 
	[<ore:blockIron>, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:ingotCrystalMatrix>, <ore:blockRedstone>, <ore:blockRedstone>, null, <ore:blockIron>], 
	[<ore:ingotCrystalMatrix>, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, <ore:ingotCrystalMatrix>], 
	[<ore:blockIron>, null, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, null, <ore:blockIron>], 
	[<ore:blockIron>, null, null, null, null, null, null, null, <ore:blockIron>], 
	[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:ingotCrystalMatrix>, <ore:blockIron>, <ore:ingotCrystalMatrix>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:endest_pearl>);
mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:endest_pearl>, [
	[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null], 
	[null, <ore:endstone>, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, <ore:endstone>, null], 
	[null, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, null], 
	[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:ingotCosmicNeutronium>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
	[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:ingotCosmicNeutronium>, <ore:netherStar>, <ore:ingotCosmicNeutronium>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
	[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:ingotCosmicNeutronium>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
	[null, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, null], 
	[null, <ore:endstone>, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, <ore:endstone>, null], 
	[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:ultimate_stew>,
    [
        <avaritia:resource:2>,
        <minecraft:wheat>,
        <minecraft:carrot>,
        <minecraft:beetroot>,
        <minecraft:potato>,
        <minecraft:melon>,
        <minecraft:pumpkin>,
        <minecraft:cactus>,
        <minecraft:red_mushroom>,
        <minecraft:brown_mushroom>,
        <minecraft:nether_wart>,
        <mysticalworld:aubergine>,
        <minecraft:reeds>,
        <minecraft:apple>,
        <minecraft:dye:3>,
        <minecraft:chorus_fruit>,
        <mysticalworld:cooked_seeds>,
        <minecraft:golden_apple>,
        <minecraft:pumpkin_pie>,
        <minecraft:golden_carrot>,
        <minecraft:beetroot_soup>,
        <extrautils2:magicapple>,
        <integrateddynamics:menril_berries>,
        <forestry:honeyed_slice>,
        <rats:potato_kinishes>
    ]
);

mods.avaritia.ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:cosmic_meatballs>, 
    [
        <avaritia:resource:2>,
        <minecraft:beef>, <minecraft:beef>,
        <minecraft:chicken>, <minecraft:chicken>,
        <minecraft:porkchop>, <minecraft:porkchop>,
        <minecraft:rabbit>, <minecraft:rabbit>,
        <minecraft:fish>, <minecraft:fish>,
        <minecraft:fish:1>, <minecraft:fish:1>,
        <minecraft:fish:2>, <minecraft:fish:2>,
        <minecraft:fish:3>, <minecraft:fish:3>,
        <mysticalworld:raw_squid>, <mysticalworld:raw_squid>,
        <rats:raw_rat>, <rats:raw_rat>,
        <minecraft:mutton>, <minecraft:mutton>,
        <nuclearcraft:smore>, <nuclearcraft:smore>,
        <thaumcraft:triple_meat_treat>, <thaumcraft:triple_meat_treat>,
        <mysticalworld:venison>, <mysticalworld:venison>,
        <mowziesmobs:glowing_jelly>, <mowziesmobs:glowing_jelly>,
        <rats:cheese>, <rats:cheese>,
        <rats:confit_byaldi>, <rats:confit_byaldi>
    ]
);

<ore:storageInfinite>.addItems([<storagedrawers:upgrade_creative>, <yabba:upgrade_star_tier>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<storagedrawers:upgrade_creative:0>, 500000,
    <storagedrawers:upgrade_storage:4>,
    [
        <ironchest:wood_copper_chest_upgrade>,
        <ironchest:wood_iron_chest_upgrade>,
        <ironchest:copper_iron_chest_upgrade>,
        <ironchest:copper_silver_chest_upgrade>,
        <ironchest:silver_gold_chest_upgrade>,
        <ironchest:iron_gold_chest_upgrade>,
        <ironchest:gold_diamond_chest_upgrade>,
        <ironchest:diamond_crystal_chest_upgrade>,
        <ironchest:diamond_obsidian_chest_upgrade>
    ]
);

recipes.remove(<yabba:upgrade_star_tier>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<yabba:upgrade_star_tier>, 500000,
    <yabba:upgrade_diamond_tier>,
    [
        <ironchest:wood_copper_chest_upgrade>,
        <ironchest:wood_iron_chest_upgrade>,
        <ironchest:copper_iron_chest_upgrade>,
        <ironchest:copper_silver_chest_upgrade>,
        <ironchest:silver_gold_chest_upgrade>,
        <ironchest:iron_gold_chest_upgrade>,
        <ironchest:gold_diamond_chest_upgrade>,
        <ironchest:diamond_crystal_chest_upgrade>,
        <ironchest:diamond_obsidian_chest_upgrade>
    ]
);


mods.extendedcrafting.CombinationCrafting.addRecipe(<rats:rat_upgrade_creative>, 1000000000,
    <rats:rat_upgrade_basic_ratlantean>,
    [
        <rats:creative_cheese>,
        <rats:rat_upgrade_nonbeliever>,
        <rats:rat_upgrade_nonbeliever>,
        <rats:rat_upgrade_nonbeliever>,
        <rats:rat_upgrade_nonbeliever>,
        <ore:blockInfinity>
    ]
);

mods.extendedcrafting.CombinationCrafting.addRecipe(<rats:creative_cheese>, 50000000,
    <rats:cheese>,
    [
        <thaumcraft:jar_normal>.withTag({Aspects: [{amount: 250, key: "rattus"}]}),
        <thaumcraft:jar_normal>.withTag({Aspects: [{amount: 250, key: "victus"}]}),
        <thaumcraft:jar_normal>.withTag({Aspects: [{amount: 250, key: "cognitio"}]}),
        <rats:rat_breeding_lantern>,
        <ore:blockInfinity>
    ]
);

mods.extendedcrafting.CombinationCrafting.addRecipe(<rats:rat_upgrade_combined_creative>, 500000000,
    <rats:rat_upgrade_combined>,
    [
        <rats:creative_cheese>,
        <rats:upgrade_combiner>,
        <rats:upgrade_separator>,
        <rats:psionic_rat_brain>,
        <rats:psionic_rat_brain>,
        <rats:psionic_rat_brain>,
        <ore:storageInfinite>,
        <ore:blockInfinity>
    ]
);

mods.thaumcraft.Infusion.registerRecipe("cheaters_thaumonomicon", "",
    <thaumcraft:thaumonomicon:1>,
    100,
    [<aspect:cognitio>*500, <aspect:desiderium>*500, <aspect:praecantatio>*500],
    <thaumcraft:thaumonomicon>,
    [
        <thaumcraft:focus_3>,
        <thaumcraft:essentia_input>,
        <thaumcraft:turret:2>,
        <ore:blockVoid>,
        <thaumcraft:charm_undying>,
        <thaumcraft:curio:6>,
        <thaumcraft:primordial_pearl>,
        <thaumcraft:mind:1>,
        <ore:blockInfinity>
    ]
);

mods.thaumcraft.Infusion.registerRecipe("creative_flux_sponge", "",
    <thaumcraft:creative_flux_sponge>,
    100,
    [<aspect:praecantatio>*500, <aspect:vitium>*500],
    <thaumcraft:causality_collapser>,
    [
        <thaumcraft:condenser>,
        <thaumcraft:condenser_lattice_dirty>,
        <thaumcraft:condenser_lattice_dirty>,
        <rftools:syringe>.withTag({mobName: "Giant Taint Seed", level: 10, mobId: "thaumcraft:taintseedprime"}),
        <ore:blockInfinity>
    ]
);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:spike_creative>, 500000000,
    <extrautils2:spike_diamond>,
    [
        <darkutils:trap_tile:0>,
        <darkutils:trap_tile:1>,
        <darkutils:trap_tile:2>,
        <darkutils:trap_tile:3>,
        <darkutils:trap_tile:4>,
        <darkutils:trap_tile:5>,
        <darkutils:trap_tile:6>,
        <darkutils:trap_tile:7>,
        <extrautils2:lawsword>,
        <ore:blockInfinity>
    ]
);

mods.extendedcrafting.TableCrafting.addShaped(0, <ic2:debug_item>, [
	[<ic2:iridium_reflector>, <ore:blockInfinity>, <ic2:crafting:4>, <ic2:crafting:4>, <ic2:te:133>.withTag({FluidName: "ic2uu_matter", Amount: 128000}), <ic2:crafting:4>, <ic2:crafting:4>, <ore:blockInfinity>, <ic2:iridium_reflector>], 
	[<ic2:barrel>, <ic2:te:80>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:te:80>, <ic2:barrel>], 
	[<ic2:crafting:4>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:resource:14>, <ic2:resource:14>, <ic2:te:23>, <ic2:resource:14>, <ic2:resource:14>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:crafting:4>], 
	[<ic2:crafting:4>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:resource:14>, <ic2:nuclear:13>, <ic2:te:24>, <ic2:nuclear:13>, <ic2:resource:14>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:crafting:4>], 
	[<ic2:crafting:4>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:te:25>, <ic2:te:24>, <ic2:te:22>, <ic2:te:24>, <ic2:te:25>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:crafting:4>], 
	[<ic2:crafting:4>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:resource:14>, <ic2:nuclear:16>, <ic2:te:24>, <ic2:nuclear:16>, <ic2:resource:14>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:crafting:4>], 
	[<ic2:crafting:4>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:resource:14>, <ic2:resource:14>, <ic2:resource:14>, <ic2:resource:14>, <ic2:resource:14>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:crafting:4>], 
	[<ic2:mug:3>, <ic2:te:80>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:te:80>, <ic2:mug:3>], 
	[<ic2:iridium_reflector>, <ore:blockInfinity>, <ic2:crafting:4>, <ic2:crafting:4>, <ic2:crafting:4>, <ic2:crafting:4>, <ic2:crafting:4>, <ore:blockInfinity>, <ic2:iridium_reflector>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <ic2:te:86>, [
	[<ic2:containment_box>, <extendedcrafting:singularity_custom:19>, <ic2:containment_box>], 
	[<extendedcrafting:singularity_custom:19>, <ic2:debug_item>, <extendedcrafting:singularity_custom:19>], 
	[<ic2:containment_box>, <extendedcrafting:singularity_custom:19>, <ic2:containment_box>]
]);
/* 
mods.extendedcrafting.TableCrafting.addShaped(0, <ic2:debug_item>, [
	[<ic2:containment_box>, <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:containment_box>], 
	[<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte})], 
	[<ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:jetpack_electric>.withTag({charge: 30000.0}), <extendedcrafting:singularity_ultimate>, <ic2:jetpack:1>.withTag({Fluid: {FluidName: "ic2biogas", Amount: 30000}}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:energy_crystal>.withTag({charge: 1000000.0})], 
	[<ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <extendedcrafting:singularity_ultimate>, <ic2:te:86>, <extendedcrafting:singularity_ultimate>, <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:energy_crystal>.withTag({charge: 1000000.0})], 
	[<ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:cf_pack:1>.withTag({Fluid: {FluidName: "ic2construction_foam", Amount: 80000}}), <extendedcrafting:singularity_ultimate>, <ic2:energy_pack>.withTag({charge: 2000000.0}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:energy_crystal>.withTag({charge: 1000000.0})], 
	[<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:lapotron_crystal>.withTag({charge: 1.0E7}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte})], 
	[<ic2:containment_box>, <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:energy_crystal>.withTag({charge: 1000000.0}), <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:containment_box>]
]); */

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:drum:4>,1000000000,
    <extrautils2:drum:3>,
    [
        <bloodmagic:blood_tank:7>.withTag({Fluid: {FluidName: "water", Amount: 2048000}}),
        <extrautils2:drum:3>.withTag({Fluid: {FluidName: "lava", Amount: 65536000}}),
        <mekanism:machineblock2:11>.withTag({tier: 3, mekData: { fluidTank: {FluidName: "milk", Amount: 112000}}}),
        <ic2:te:134>.withTag({FluidName: "ic2air", Amount: 1024000}),
        <extracells:storage.component:10>,
        <ore:blockInfinity>
    ]
);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:creativeharvest>, 1000000000,
    <avaritia:block_resource:1>,
    [
        <yabba:item_barrel>.withTag({BlockEntityTag: {Item: {id: "minecraft:cobblestone", Count: 1 as byte, Damage: 0 as short}, Upgrades: [{ForgeCaps: {Parent: {}}, Slot: 0 as byte, id: "yabba:upgrade_iron_tier", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {Parent: {}}, Slot: 1 as byte, id: "yabba:upgrade_gold_tier", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {Parent: {}}, Slot: 2 as byte, id: "yabba:upgrade_diamond_tier", Count: 1 as byte, Damage: 0 as short}], Count: 262144, id: "yabba:item_barrel"}, display: {Lore: ["(+NBT)"]}}),
        <mekanism:basicblock:6>.withTag({tier: 3, mekData: {storedItem: {id: "minecraft:cobblestone", Count: 1 as byte, Damage: 0 as short}, itemCount: 262144}}),
        <botania:conjurationcatalyst>,
        <ore:storageInfinite>,
        <appliedenergistics2:part:320>,
        <environmentaltech:void_ore_miner_cont_6>,
        <environmentaltech:void_res_miner_cont_6>,
        <environmentaltech:void_botanic_miner_cont_6>,
        <botania:specialflower>.withTag({type: "orechid"}),
        <bloodmagic:ritual_diviner:1>.withTag({current_ritual: "meteor"}),
        <forge:bucketfilled>.withTag({FluidName: "liquiddna", Amount: 1000})
    ]
);

mods.extendedcrafting.TableCrafting.addShapeless(0, <extendedcrafting:material:32>, [<minecraft:iron_ingot>, <minecraft:gold_ingot>, <thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>, <thermalfoundation:material:131>, <thermalfoundation:material:132>, <thermalfoundation:material:133>, <thermalfoundation:material:134>, <mekanism:ingot:1>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <mekanism:ingot:3>, <mekanism:ingot>, <threng:material>, <enderio:item_alloy_ingot:9>, <enderio:item_alloy_ingot:7>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_endergy_ingot>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:6>, <enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_endergy_ingot:3>, <extrautils2:ingredients:17>, <extrautils2:ingredients:12>, <extrautils2:ingredients:11>, <libvulpes:productingot:7>, <thermalfoundation:material:135>, <advancedrocketry:productingot>, <advancedrocketry:productingot:1>, <thaumcraft:ingot:2>, <thaumcraft:ingot>, <thaumcraft:ingot:1>, <pneumaticcraft:ingot_iron_compressed>, <nuclearcraft:ingot:4>, <deepmoblearning:glitch_infused_ingot>, <botania:manaresource>, <botania:manaresource:4>, <botania:manaresource:7>, <botania:manaresource:14>, <nuclearcraft:smore>, <contenttweaker:arbitrarium_ingot>, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:6>]);

/* mods.extendedcrafting.CombinationCrafting.addRecipe(<storagedrawers:upgrade_creative:1>, 1000000000,
    <extrautils2:creativeharvest>,
    [
        <rats:creative_cheese>,
        <rats:rat_upgrade_combined_creative>.withTag({}),
        <rats:rat_upgrade_creative>,
        <rftools:shard_wand>,
        <buildinggadgets:constructionpastecontainercreative>,
        <pneumaticcraft:creative_compressor>,
        <mekanism:gastank>.withTag({tier: 4}),<botania:pool:1>,
        <botania:manatablet>.withTag({mana: 500000, creative: 1}),
        <thaumcraft:thaumonomicon:1>,
        <thaumcraft:creative_flux_sponge>,
        <bloodmagic:sacrificial_dagger:1>,
        <bloodmagic:activation_crystal:2>,
        <extrautils2:drum:4>,
        <storagedrawers:upgrade_creative:0>,
        <extrautils2:passivegenerator:6>,
        <extrautils2:spike_creative>,
        <extrautils2:creativeenergy>,
        <ic2:te:86>
    ]
); */
mods.extendedcrafting.TableCrafting.addShaped(0, <storagedrawers:upgrade_creative:1>, [
	[<nuclearcraft:cobblestone_generator_dense>, <extracells:storage.component:3>, <pneumaticcraft:creative_compressor>, <rats:rat_upgrade_combined_creative>.withTag({}), <rats:rat_upgrade_creative>, <rats:creative_cheese>, <mekanism:gastank>.withTag({tier: 4}), <extracells:storage.component:3>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <storagedrawers:upgrade_storage:4>, <contenttweaker:dungeon_loot>, <avaritia:ultimate_stew>, <contenttweaker:compressedoctuplecompressedcobblestone>, <avaritia:cosmic_meatballs>, <contenttweaker:mineshaft_loot>, <storagedrawers:upgrade_storage:4>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <ironchest:iron_shulker_box_purple:2>, <storagedrawers:upgrade_storage:3>, <avaritia:block_resource:2>, <extendedcrafting:material:19>, <avaritia:block_resource:2>, <storagedrawers:upgrade_storage:3>, <contenttweaker:desert_loot>, <nuclearcraft:cobblestone_generator_dense>], 
	[<thaumcraft:thaumonomicon:1>, <avaritia:block_resource>, <avaritia:block_resource:2>, <storagedrawers:upgrade_creative>, <extrautils2:drum:4>, <storagedrawers:upgrade_creative>, <avaritia:block_resource:2>, <avaritia:block_resource>, <botania:pool:1>], 
	[<bloodmagic:sacrificial_dagger:1>.withTag({sacrifice: 0 as byte}), <avaritia:block_resource>, <extendedcrafting:material:19>, <extrautils2:drum:4>, <extrautils2:creativeharvest>.withTag({creative_block: {meta: 1, block: "avaritia:block_resource"}, display_stack: {id: "avaritia:block_resource", Count: 1 as byte, Damage: 1 as short}}), <extrautils2:drum:4>, <extendedcrafting:material:19>, <avaritia:block_resource>, <bloodmagic:activation_crystal:2>], 
	[<thaumcraft:creative_flux_sponge>, <avaritia:block_resource>, <avaritia:block_resource:2>, <storagedrawers:upgrade_creative>, <extrautils2:drum:4>, <storagedrawers:upgrade_creative>, <avaritia:block_resource:2>, <avaritia:block_resource>, <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte})], 
	[<nuclearcraft:cobblestone_generator_dense>, <thaumicaugmentation:warded_chest>, <storagedrawers:upgrade_storage:3>, <avaritia:block_resource:2>, <extendedcrafting:material:19>, <avaritia:block_resource:2>, <storagedrawers:upgrade_storage:3>, <thaumcraft:hungry_chest>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <storagedrawers:upgrade_storage:4>, <contenttweaker:nether_loot>, <avaritia:cosmic_meatballs>, <rftools:shard_wand>, <avaritia:ultimate_stew>, <contenttweaker:jungle_loot>, <storagedrawers:upgrade_storage:4>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <extracells:storage.component:3>, <extrautils2:spike_creative>, <ic2:te:86>, <ore:creative_energy>, <extrautils2:passivegenerator:6>, <buildinggadgets:constructionpastecontainercreative>, <extracells:storage.component:3>, <nuclearcraft:cobblestone_generator_dense>]
]);

/* mods.extendedcrafting.CombinationCrafting.addRecipe(<yabba:upgrade_creative>, 1000000000,
    <extrautils2:creativeharvest>,
    [
        <rats:creative_cheese>,
        <rats:rat_upgrade_combined_creative>.withTag({}),
        <rats:rat_upgrade_creative>,
        <rftools:shard_wand>,
        <buildinggadgets:constructionpastecontainercreative>,
        <pneumaticcraft:creative_compressor>,
        <mekanism:gastank>.withTag({tier: 4}),<botania:pool:1>,
        <botania:manatablet>.withTag({mana: 500000, creative: 1}),
        <thaumcraft:thaumonomicon:1>,
        <thaumcraft:creative_flux_sponge>,
        <bloodmagic:sacrificial_dagger:1>,
        <bloodmagic:activation_crystal:2>,
        <extrautils2:drum:4>,
        <yabba:upgrade_star_tier>,
        <extrautils2:passivegenerator:6>,
        <extrautils2:spike_creative>,
        <extrautils2:creativeenergy>,
        <ic2:te:86>
    ]
); */
mods.extendedcrafting.TableCrafting.addShaped(0, <yabba:upgrade_creative>, [
	[<nuclearcraft:cobblestone_generator_dense>, <extracells:storage.component:3>, <pneumaticcraft:creative_compressor>, <rats:rat_upgrade_combined_creative>.withTag({}), <rats:rat_upgrade_creative>, <rats:creative_cheese>, <mekanism:gastank>.withTag({tier: 4}), <extracells:storage.component:3>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <yabba:upgrade_diamond_tier>, <contenttweaker:dungeon_loot>, <avaritia:ultimate_stew>, <contenttweaker:compressedoctuplecompressedcobblestone>, <avaritia:cosmic_meatballs>, <contenttweaker:mineshaft_loot>, <yabba:upgrade_diamond_tier>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <ironchest:iron_shulker_box_purple:2>, <yabba:upgrade_gold_tier>, <avaritia:block_resource:2>, <extendedcrafting:material:19>, <avaritia:block_resource:2>, <yabba:upgrade_gold_tier>, <contenttweaker:desert_loot>, <nuclearcraft:cobblestone_generator_dense>], 
	[<thaumcraft:thaumonomicon:1>, <avaritia:block_resource>, <avaritia:block_resource:2>, <yabba:upgrade_star_tier>, <extrautils2:drum:4>, <yabba:upgrade_star_tier>, <avaritia:block_resource:2>, <avaritia:block_resource>, <botania:pool:1>], 
	[<bloodmagic:sacrificial_dagger:1>.withTag({sacrifice: 0 as byte}), <avaritia:block_resource>, <extendedcrafting:material:19>, <extrautils2:drum:4>, <extrautils2:creativeharvest>.withTag({creative_block: {meta: 1, block: "avaritia:block_resource"}, display_stack: {id: "avaritia:block_resource", Count: 1 as byte, Damage: 1 as short}}), <extrautils2:drum:4>, <extendedcrafting:material:19>, <avaritia:block_resource>, <bloodmagic:activation_crystal:2>], 
	[<thaumcraft:creative_flux_sponge>, <avaritia:block_resource>, <avaritia:block_resource:2>, <yabba:upgrade_star_tier>, <extrautils2:drum:4>, <yabba:upgrade_star_tier>, <avaritia:block_resource:2>, <avaritia:block_resource>, <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte})], 
	[<nuclearcraft:cobblestone_generator_dense>, <thaumicaugmentation:warded_chest>, <yabba:upgrade_gold_tier>, <avaritia:block_resource:2>, <extendedcrafting:material:19>, <avaritia:block_resource:2>, <yabba:upgrade_gold_tier>, <thaumcraft:hungry_chest>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <yabba:upgrade_diamond_tier>, <contenttweaker:nether_loot>, <avaritia:cosmic_meatballs>, <rftools:shard_wand>, <avaritia:ultimate_stew>, <contenttweaker:jungle_loot>, <yabba:upgrade_diamond_tier>, <nuclearcraft:cobblestone_generator_dense>], 
	[<nuclearcraft:cobblestone_generator_dense>, <extracells:storage.component:3>, <extrautils2:spike_creative>, <ic2:te:86>, <ore:creative_energy>, <extrautils2:passivegenerator:6>, <buildinggadgets:constructionpastecontainercreative>, <extracells:storage.component:3>, <nuclearcraft:cobblestone_generator_dense>]
]);

recipes.addShapeless("creative_swap_1",<storagedrawers:upgrade_creative:1>,[<yabba:upgrade_creative>]);
recipes.addShapeless("creative_swap_2",<yabba:upgrade_creative>,[<storagedrawers:upgrade_creative:1>]);


mods.extendedcrafting.CombinationCrafting.addRecipe(<mekanism:gastank>.withTag({tier: 4}), 1000000000,
    <avaritia:resource:6>,
    [
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "hydrogen"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "oxygen"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "water"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "chlorine"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "sulfurdioxide"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "sulfurtrioxide"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "sulfuricacid"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "hydrogenchloride"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "ethene"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "sodium"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "brine"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "deuterium"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "tritium"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "fusionfuel"}}}),
        <mekanism:gastank>.withTag({tier: 3, mekData: {stored: {amount: 512000, gasName: "lithium"}}}),
        <extracells:storage.component:17>
    ]
);


val gases = [
    "hydrogen",
    "water",
    "chlorine",
    "sulfurdioxide",
    "sulfurtrioxide",
    "oxygen",
    "sulfuricacid",
    "hydrogenchloride",
    "ethene",
    "sodium",
    "brine",
    "deuterium",
    "tritium",
    "fusionfuel",
    "lithium"
] as string[];
for gas in gases{
    recipes.addShapeless("set_creative_" + gas, 
    <mekanism:gastank>.withTag({tier: 4, mekData: {stored: {amount: 2147483647, gasName: gas}}}), 
    [
        <mekanism:gastank>.withTag({tier: 4}),
        <mekanism:gastank>.withTag({tier: 0, mekData: {stored: {amount: 64000, gasName: gas}}})
    ]);
}

<ore:mowzieMask>.addItems([<mowziesmobs:barakoa_mask_fear>,
    <mowziesmobs:barakoa_mask_rage>,
    <mowziesmobs:barakoa_mask_bliss>,
    <mowziesmobs:barakoa_mask_misery>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<mowziesmobs:earth_talisman>, 1000000,
    <mowziesmobs:barako_mask>,
    [
        <mowziesmobs:ice_crystal>,
        <mowziesmobs:naga_fang>,
        <mowziesmobs:glowing_jelly>,
        <mowziesmobs:foliaath_seed>,
        <ore:mowzieMask>,
        <mowziesmobs:captured_grottol>,
        <mowziesmobs:wrought_axe>,
        <mowziesmobs:wrought_helmet>
    ]
);

recipes.addShaped("smore_singularity",
    <extendedcrafting:singularity_custom:4>,
    [
        [<contenttweaker:sixtyfoursmore>,<nuclearcraft:milk_chocolate>],
        [<nuclearcraft:marshmallow>,<contenttweaker:sixtyfoursmore>]
    ]
);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extendedcrafting:singularity_custom:18>, 1000000,
    <extendedcrafting:singularity:27>,
    [<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}})]
);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extendedcrafting:singularity_custom:19>, 1,
    <extendedcrafting:singularity:27>,
    [<ic2:re_battery>.withTag({charge: 10000.0})]
);

mods.extendedcrafting.TableCrafting.addShaped(0, <avaritiaio:infinitecapacitor>, [
	[<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}), <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}), <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}), <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}), <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"})], 
	[null, <enderio:item_capacitor_stellar>, <enderio:item_capacitor_totemic>.withTag({ench: [{lvl: 3 as short, id: 34 as short}, {lvl: 5 as short, id: 32 as short}]}), <enderio:item_capacitor_melodic>, null], 
	[null, <enderio:item_basic_capacitor:2>, <avaritiaio:grindingballinfinity>, <enderio:item_capacitor_vivid>, null], 
	[null, <enderio:item_basic_capacitor:1>, null, <enderio:item_capacitor_energetic_silver>], 
	[null, <enderio:item_capacitor_grainy>.withTag({ench: [{lvl: 3 as short, id: 34 as short}]}), null, <enderio:item_basic_capacitor>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <extrautils2:creativeenergy>, [
	[<environmentaltech:solar_cont_6>, <environmentaltech:solar_cell_aethium>, null, null, <ic2:te:86>, null, null, <environmentaltech:solar_cell_aethium>, <environmentaltech:solar_cont_6>], 
	[<environmentaltech:solar_cell_aethium>, <avaritia:block_resource:1>, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <avaritia:block_resource:1>, <environmentaltech:solar_cell_aethium>], 
	[null, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), null], 
	[null, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), null], 
	[<extrautils2:drum:4>, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <extrautils2:rainbowgenerator>, <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <pneumaticcraft:creative_compressor>], 
	[null, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <nuclearcraft:lithium_ion_battery_elite>.withTag({energyConnections0: 0, maxTransfer: 2048000000, energyConnections4: 0, energyConnections3: 0, energyConnections2: 0, energyConnections1: 0, energyConnections5: 0, energy: 2048000000, capacity: 2048000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), null], 
	[null, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), null], 
	[<environmentaltech:solar_cell_aethium>, <avaritia:block_resource:1>, <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <enderio:block_cap_bank:3>.withTag({"enderio:energy": 25000000}), <avaritia:block_resource:1>, <environmentaltech:solar_cell_aethium>], 
	[<environmentaltech:solar_cont_6>, <environmentaltech:solar_cell_aethium>, null, null, <extrautils2:passivegenerator:6>, null, null, <environmentaltech:solar_cell_aethium>, <environmentaltech:solar_cont_6>]
]);

recipes.addShaped("creative_energy_conversion_1",<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}),
    [
        [<extrautils2:creativeenergy>,null,null],
        [null,null,null],
        [null,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_2",<rftools:powercell_creative>,
    [
        [null,<extrautils2:creativeenergy>,null],
        [null,null,null],
        [null,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_3",<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
    [
        [null,null,<extrautils2:creativeenergy>],
        [null,null,null],
        [null,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_4",<appliedenergistics2:creative_energy_cell>,
    [
        [null,null,null],
        [<extrautils2:creativeenergy>,null,null],
        [null,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_5",<immersiveengineering:metal_device0:3>,
    [
        [null,null,null],
        [null,<extrautils2:creativeenergy>,null],
        [null,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_6",<libvulpes:creativepowerbattery>,
    [
        [null,null,null],
        [null,null,<extrautils2:creativeenergy>],
        [null,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_7",<integrateddynamics:creative_energy_battery>,
    [
        [null,null,null],
        [null,null,null],
        [<extrautils2:creativeenergy>,null,null]
    ]
);
recipes.addShaped("creative_energy_conversion_8",<randomthings:spectrecoil_genesis>,
    [
        [null,null,null],
        [null,null,null],
        [null,<extrautils2:creativeenergy>,null]
    ]
);

<ore:creative_energy>.addItems([
    <extrautils2:creativeenergy>,
    <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}),
    <rftools:powercell_creative>,
    <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
    <appliedenergistics2:creative_energy_cell>,
    <immersiveengineering:metal_device0:3>,
    <libvulpes:creativepowerbattery>,
    <integrateddynamics:creative_energy_battery>,
    <randomthings:spectrecoil_genesis>
]);


mods.pneumaticcraft.explosioncrafting.addRecipe(<extendedcrafting:singularity:1>, <extendedcrafting:singularity_custom:7>, 0);

/* mods.extendedcrafting.TableCrafting.addShaped(0, <pneumaticcraft:creative_compressor>, [
	[<pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>], 
	[<pneumaticcraft:pressure_chamber_glass>, <avaritia:resource:6>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <avaritia:resource:6>, <pneumaticcraft:pressure_chamber_glass>], 
	[<pneumaticcraft:pressure_chamber_glass>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <extrautils2:drum:1>.withTag({Fluid: {FluidName: "kerosene", Amount: 256000}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <extrautils2:drum:1>.withTag({Fluid: {FluidName: "plastic", Amount: 256000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:pressure_chamber_glass>], 
	[<pneumaticcraft:pressure_chamber_glass>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <pneumaticcraft:gun_ammo>.withTag({potion: {id: "minecraft:potion", Count: 1 as byte, tag: {Potion: "minecraft:strong_healing"}, Damage: 0 as short}}), <extendedcrafting:singularity_custom:7>, <pneumaticcraft:gun_ammo>.withTag({potion: {id: "minecraft:potion", Count: 1 as byte, tag: {Potion: "minecraft:strong_regeneration"}, Damage: 0 as short}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:pressure_chamber_glass>], 
	[<pneumaticcraft:pressure_chamber_valve>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <extendedcrafting:singularity_custom:7>, <extrautils2:drum:1>.withTag({Fluid: {FluidName: "etchacid", Amount: 256000}}), <extendedcrafting:singularity_custom:7>, <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:pressure_chamber_valve>], 
	[<pneumaticcraft:pressure_chamber_glass>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <pneumaticcraft:gun_ammo>.withTag({potion: {id: "minecraft:potion", Count: 1 as byte, tag: {Potion: "minecraft:strong_strength"}, Damage: 0 as short}}), <extendedcrafting:singularity_custom:7>, <pneumaticcraft:gun_ammo>.withTag({potion: {id: "minecraft:potion", Count: 1 as byte, tag: {Potion: "quark:strong_resistance"}, Damage: 0 as short}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:pressure_chamber_glass>], 
	[<pneumaticcraft:pressure_chamber_glass>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <extrautils2:drum:1>.withTag({Fluid: {FluidName: "lpg", Amount: 256000}}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <pneumaticcraft:reinforced_air_canister>.withTag({air: 120000}), <extrautils2:drum:1>.withTag({Fluid: {FluidName: "fuel", Amount: 256000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <pneumaticcraft:pressure_chamber_glass>], 
	[<pneumaticcraft:pressure_chamber_glass>, <avaritia:resource:6>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2air", Amount: 1000}}), <avaritia:resource:6>, <pneumaticcraft:pressure_chamber_glass>], 
	[<pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_chamber_wall>]
]); */

mods.pneumaticcraft.pressurechamber.addRecipe(
    [<extendedcrafting:singularity_custom:7>*4,<avaritia:resource:6>,<extrautils2:drum:1>.withTag({Fluid: {FluidName: "kerosene", Amount: 256000}}),<extrautils2:drum:1>.withTag({Fluid: {FluidName: "plastic", Amount: 256000}}),<extrautils2:drum:1>.withTag({Fluid: {FluidName: "lpg", Amount: 256000}}),<extrautils2:drum:1>.withTag({Fluid: {FluidName: "fuel", Amount: 256000}}),<extrautils2:drum:1>.withTag({Fluid: {FluidName: "etchacid", Amount: 256000}}),<contenttweaker:creative_compressor_certificate>],
    4.9, [<pneumaticcraft:creative_compressor>]
);

mods.extendedcrafting.TableCrafting.addShaped(0, <extrautils2:passivegenerator:6>, [
	[<extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>], 
	[<extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>], 
	[null, <extendedcrafting:singularity_custom:9>, <extrautils2:lawsword>.withTag({ench: [{lvl: 6 as short, id: 21 as short}, {lvl: 10 as short, id: 16 as short}]}), <avaritia:resource:5>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:mushroom_island"}), <avaritia:resource:5>, <extrautils2:luxsaber:1>.withTag({Energy: 40000}), <extendedcrafting:singularity_custom:8>, null], 
	[null, <extendedcrafting:singularity_custom:9>, <avaritia:resource:5>, <extrautils2:ingredients:16>, <extrautils2:suncrystal>, <extrautils2:ingredients:16>, <avaritia:resource:5>, <extendedcrafting:singularity_custom:8>, null], 
	[null, <extendedcrafting:singularity_custom:9>, <extrautils2:biomemarker>.withTag({Biome: "advancedrocketry:moon"}), <extrautils2:cursedearth>, <extrautils2:ingredients:1>, <extrautils2:snowglobe:1>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:sky"}), <extendedcrafting:singularity_custom:8>, null], 
	[null, <extendedcrafting:singularity_custom:9>, <avaritia:resource:5>, <extrautils2:ingredients:16>, <extrautils2:ingredients:5>, <extrautils2:ingredients:16>, <avaritia:resource:5>, <extendedcrafting:singularity_custom:8>, null], 
	[null, <extendedcrafting:singularity_custom:9>, <extrautils2:fireaxe>, <avaritia:resource:5>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:hell"}), <avaritia:resource:5>, <extrautils2:compoundbow>, <extendedcrafting:singularity_custom:8>, null], 
	[<extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>], 
	[<extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <rftools:shard_wand>, [
	[null, null, <rftoolsdim:dimensional_pattern2_block>, null, null], 
	[null, <rftoolsdim:dimensional_pattern2_block>, <rftoolsdim:biome_absorber>.withTag({biome: "minecraft:sky", infused: 0, absorbing: 0}), <rftoolsdim:dimensional_pattern2_block>, null], 
	[<rftoolsdim:dimensional_pattern2_block>, <rftools:syringe>.withTag({mobName: "Ender Dragon", level: 10, mobId: "minecraft:ender_dragon"}), <avaritia:resource:5>, <rftools:syringe>.withTag({mobName: "Wither", level: 10, mobId: "minecraft:wither"}), <rftoolsdim:dimensional_pattern2_block>], 
	[null, <rftoolsdim:dimensional_pattern2_block>, <rftoolsdim:liquid_absorber>.withTag({liquid: "minecraft:lava", infused: 0, absorbing: 0}), <rftoolsdim:dimensional_pattern2_block>, null], 
	[null, null, <rftoolsdim:dimensional_pattern2_block>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <buildinggadgets:constructionpastecontainercreative>, [
	[<integrateddynamics:facade>.withTag({blockName: "blockcraftery:editable_block", meta: 0}), null, <appliedenergistics2:facade>.withTag({damage: 11, item: "ic2:resource"}), null, <enderio:item_conduit_facade:3>.withTag({"enderio:paint": {Name: "buildinggadgets:constructionblock_dense"}, "enderio:paintsrc": {id: "buildinggadgets:constructionblock_dense", Count: 1 as byte, Damage: 0 as short}})], 
	[null, <buildinggadgets:copypastetool>.withTag({Energy: 500000}), <buildinggadgets:constructionpastecontainer>.withTag({amount: 512}), <buildinggadgets:destructiontool>.withTag({Energy: 1000000}), null], 
	[<appliedenergistics2:facade>.withTag({damage: 11, item: "ic2:resource"}), <buildinggadgets:constructionpastecontainert2>.withTag({amount: 2048}), <avaritia:resource:6>, <buildinggadgets:constructionpastecontainert2>.withTag({amount: 2048}), <appliedenergistics2:facade>.withTag({damage: 11, item: "ic2:resource"})], 
	[null, <buildinggadgets:exchangertool>.withTag({Energy: 500000}), <buildinggadgets:constructionpastecontainert3>.withTag({amount: 8192}), <buildinggadgets:buildingtool>.withTag({Energy: 500000}), null], 
	[<bloodmagic:mimic:3>, null, <appliedenergistics2:facade>.withTag({damage: 11, item: "ic2:resource"}), null, <darkutils:sneaky_ghost>]
]);
<integrateddynamics:facade>.withTag({blockName: "blockcraftery:editable_block", meta: 0}).addTooltip(format.yellow("ID Facade set to Blockcraftery Framed Block"));

mods.extendedcrafting.TableCrafting.addShaped(0, <wct:wct_creative>.withTag({IsInRange: 0 as byte}), [
	[<appliedenergistics2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), <extendedcrafting:singularity_ultimate>, <appliedenergistics2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0})], 
	[<ae2wtlib:infinity_booster_card>, <wct:wct>.withTag({InfinityEnergy: 2147483647, internalCurrentPower: 1600000.0}), <ae2wtlib:infinity_booster_card>], 
	[<ae2wtlib:infinity_booster_card>, <appliedenergistics2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), <ae2wtlib:infinity_booster_card>]
]);

mods.botania.ManaInfusion.addInfusion(<contenttweaker:creative_mana_drum>, <extrautils2:drum:4>, 1000000);
mods.extendedcrafting.TableCrafting.addShaped(0, <botania:pool:1>, [
	[<extendedcrafting:singularity_custom:20>, <rftools:syringe>.withTag({mobName: "Guardian of Gaia", level: 10, mobId: "botania:doppleganger"}), <extendedcrafting:singularity_custom:20>], 
	[<botania:manaresource:14>, <contenttweaker:creative_mana_drum>, <botania:manaresource:14>], 
	[<extendedcrafting:singularity_custom:21>, <botania:pool:3>, <extendedcrafting:singularity_custom:21>]
]);
mods.botania.RuneAltar.addRecipe(<botania:manatablet>.withTag({mana: 500000, creative: 1}),[<botania:pool:1>, <avaritia:resource:5>], 3000000);

/* mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:sacrificial_dagger:1>,
    [<bloodmagic:sacrificial_dagger>, <bloodmagic:blood_tank:4>.withTag({Fluid: {FluidName: "lifeessence", Amount: 256000}})],
    5000000,1200,5); */
mods.extendedcrafting.TableCrafting.addShaped(0, <bloodmagic:sacrificial_dagger:1>, [
	[null, null, null, null, null, null, <bloodmagic:inscription_tool:1>.withTag({uses: 10}), <bloodmagic:inscription_tool:4>.withTag({uses: 10}), <bloodmagic:inscription_tool:5>.withTag({uses: 10})], 
	[null, null, null, null, null, null, <bloodmagic:component:16>, <bloodmagic:blood_rune:4>, <bloodmagic:inscription_tool:3>.withTag({uses: 10})], 
	[null, null, null, null, null, <bloodmagic:demon_crystal:4>, <bloodmagic:blood_rune:4>, <bloodmagic:component:16>, <bloodmagic:inscription_tool:2>.withTag({uses: 10})], 
	[null, null, null, null, <bloodmagic:blood_shard>, <bloodmagic:blood_rune:4>, <bloodmagic:demon_crystal:3>, null, null], 
	[null, <bloodmagic:sentient_sword>.withTag({}), null, <bloodmagic:blood_shard>, <bloodmagic:blood_rune:4>, <bloodmagic:blood_shard>, null, null, null], 
	[null, null, <bloodmagic:dagger_of_sacrifice>, <bloodmagic:blood_rune:4>, <bloodmagic:blood_shard>, null, null, null, null], 
	[null, <bloodmagic:cutting_fluid>.withTag({}), <extendedcrafting:singularity:5>, <bloodmagic:sacrificial_dagger>.withTag({sacrifice: 0 as byte}), null, null, null, null, null], 
	[<bloodmagic:points_upgrade>, <bloodmagic:blood_tank:3>.withTag({Fluid: {FluidName: "lifeessence", Amount: 128000}}), <bloodmagic:cutting_fluid>.withTag({}), null, <bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), null, null, null, null], 
	[<bloodmagic:slate:4>, <bloodmagic:points_upgrade>, null, null, null, null, null, null, null]
]);


mods.bloodmagic.AlchemyTable.addRecipe(<bloodmagic:activation_crystal:2>,
    [<bloodmagic:activation_crystal:1>],
    5000000,1200,5);

recipes.addShaped("ender_star",
    <extendedcrafting:material:40>,
    [
        [null,<minecraft:ender_pearl>,null],
        [<minecraft:ender_eye>,<minecraft:nether_star>,<minecraft:ender_eye>],
        [null,<minecraft:ender_pearl>,null]
    ]
);

recipes.removeByRecipeName("extrautils2:shortcut_chest"); /*Conflict with Quark*/
recipes.removeByRecipeName("prefab:bundle_of_timber");
recipes.addShaped("timber_fixed",
    <prefab:item_bundle_of_timber>,
    [
        [<ore:logWood>,<ore:string>,<ore:logWood>],
        [<ore:logWood>,<ore:logWood>,<ore:logWood>],
        [<ore:logWood>,<ore:string>,<ore:logWood>]
    ]
); /*Conflict with Quark*/
recipes.removeByRecipeName("prefab:bundle_of_timber_to_logs");
recipes.addShapeless("timber_unpack",<minecraft:log:0>*9,[<prefab:item_bundle_of_timber>]);

recipes.removeByRecipeName("rats:assorted_vegetables");
recipes.addShaped("assorted_vegetables_balance",
    <rats:assorted_vegetables>,
    [
        [<minecraft:carrot>,<minecraft:golden_carrot>,<minecraft:potato>],
        [<minecraft:pumpkin>,<minecraft:gold_block>,<minecraft:pumpkin>],
        [<minecraft:potato>,<minecraft:golden_carrot>,<minecraft:carrot>]
    ]
);

recipes.addShaped("earth_portal",
    <contenttweaker:portal_earth>,
    [
        [<minecraft:grass>],
        [<minecraft:obsidian>]
    ]
);

recipes.addShaped("bb_portal",
    <contenttweaker:portal_bb>,
    [
        [<minecraft:stone>],
        [<minecraft:obsidian>]
    ]
);

recipes.addShaped("bbop_portal",
    <contenttweaker:portal_bbop>,
    [
        [<minecraft:obsidian>],
        [<minecraft:stone>]
    ]
);

recipes.addShaped("vv_portal",
    <contenttweaker:portal_vv>,
    [
        [<minecraft:stone>,<minecraft:obsidian>]
    ]
);

recipes.addShaped("vva_portal",
    <contenttweaker:portal_vva>,
    [
        [<minecraft:obsidian>,<minecraft:stone>]
    ]
);

recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes2_extraterrestrial/recipe3_nether_star");

recipes.removeByRecipeName("biomesoplenty:amber_block");
recipes.removeByRecipeName("biomesoplenty:amber");
recipes.removeByRecipeName("thaumcraft:amberblock");
recipes.removeByRecipeName("thaumcraft:amberblocktoamber");
recipes.removeByRecipeName("thaumcraft:ambertoblock");
recipes.addShaped("amber_block",
    <thaumcraft:amber_block>,
    [
        [<ore:gemAmber>,<ore:gemAmber>],
        [<ore:gemAmber>,<ore:gemAmber>]
    ]
);
recipes.addShapeless("amber", <thaumcraft:amber>*4, [<thaumcraft:amber_block>]);
recipes.addShapeless("amber_swap_1",<thaumcraft:amber>,[<biomesoplenty:gem:7>]);
recipes.addShapeless("amber_swap_2",<biomesoplenty:gem:7>,[<thaumcraft:amber>]);

recipes.addShaped("ghast_lasso", 
    <extrautils2:goldenlasso:1>.withTag({Animal: {HurtByTimestamp: 0, ForgeData: {}, Attributes: [{Base: 10.0, Name: "generic.maxHealth"}, {Base: 0.0, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071, Name: "generic.movementSpeed"}, {Base: 0.0, Name: "generic.armor"}, {Base: 0.0, Name: "generic.armorToughness"}, {Base: 1.0, Name: "forge.swimSpeed"}, {Base: 100.0, Modifiers: [{UUIDMost: -2840844633750814323 as long, UUIDLeast: -9218686429352356565 as long, Amount: 0.005692743738991483, Operation: 1, Name: "Random spawn bonus"}], Name: "generic.followRange"}], Invulnerable: 0 as byte, FallFlying: 0 as byte, PortalCooldown: 0, AbsorptionAmount: 0.0 as float, FallDistance: 0.0 as float, DeathTime: 0 as short, ForgeCaps: {"nuclearcraft:capability_entity_rads": {consumed: 0 as byte, radawayBuffer: 0.0, shouldWarn: 0 as byte, radXUsed: 0 as byte, poisonBuffer: 0.0, radXCooldown: 0.0, radXWoreOff: 0 as byte, radawayCooldown: 0.0, recentRadawayAddition: 0.0, maxRads: 500.0, setMaxRads: 1 as byte, radawayBufferSlow: 0.0, externalRadiationResistance: 0.0, messageCooldownTime: 0, totalRads: 0.0, radiationLevel: 0.0, recentPoisonAddition: 0.0, recentRadXAddition: 0.0, radiationImmunityStage: 0 as byte, giveGuidebook: 0 as byte, internalRadiationResistance: 0.0, radiationImmunityTime: 0.0}, "dsurround:data": {a: 0 as byte, f: 0 as byte}, "mahoutsukai:mahou": {MAHOUTSUKAI_PLAYER_PREV_YAW: 0.0 as float, MAHOUTSUKAI_SHOW_MAHOU: 1 as byte, MAHOUTSUKAI_MANA_FULL: 1 as byte, MAHOUTSUKAI_MANA_UP_COUNTER: 100, MAHOUTSUKAI_PLAYER_POSSESSING: 0 as byte, MAHOUTSUKAI_AUTHORITY_HIT: 0 as byte, MAHOUTSUKAI_LAST_RECIPE_CLOTH: 0 as byte, MAHOUTSUKAI_PLAYER_HAS_MAGIC: 0 as byte, MAHOUTSUKAI_PLAYER_CHARGE_RATE: 0.1, MAHOUTSUKAI_PLAYER_DAMAGE_EXCHANGE_USES: 0, MAHOUTSUKAI_PLAYER_PREV_PITCH: 0.0 as float, MAHOUTSUKAI_KODOKU_VALUE: 0, MAHOUTSUKAI_PLAYER_MAX_MANA: 100, MAHOUTSUKAI_PLAYER_STORED_MANA: 100, MAHOUTSUKAI_PLAYER_OLD_DIMENSION: 0, MAHOUTSUKAI_PLAYER_PROTECTIVE_DISPLACEMENT_USES: 0, MAHOUTSUKAI_CANCEL_TIME: -1 as long, MAHOUTSUKAI_PLAYER_DEATH_COLLECTION_USES_LEFT: 0.0 as float}, "llibrary:extendedentitydatacapability": {"mm:living": {frozenYaw: 0.0 as float, freezeProgress: 0.0 as float, frozenPitch: 0.0 as float, prevHasAI: 0 as byte, freezeDecayDelay: 0, frozenYawHead: 0.0 as float, frozenLimbSwingAmount: 0.0 as float, frozenRenderYawOffset: 0.0 as float, frozenSwingProgress: 0.0 as float}}, "champions:championship": {tier: 0}, "thaumicaugmentation:portal_state": {inPortal: 0 as byte}, "pneumaticcraft:hacking": {}}, HandDropChances: [0.085 as float, 0.085 as float], PersistenceRequired: 0 as byte, id: "minecraft:ghast", Motion: [-0.12331107215236507, 0.1371038271524162, 0.3299076935400571], Leashed: 0 as byte, UUIDLeast: -7623420066169818785 as long, Health: 10.0 as float, LeftHanded: 0 as byte, Air: 300 as short, OnGround: 0 as byte, Dimension: 0, ExplosionPower: 1, Rotation: [20.494225 as float, 0.0 as float], UpdateBlocked: 0 as byte, HandItems: [{}, {}], ArmorDropChances: [0.085 as float, 0.085 as float, 0.085 as float, 0.085 as float], UUIDMost: -1982756349670896863 as long, Pos: [-237.37855341721774, 68.81184088612723, -128.77437745536034], Fire: -1 as short, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0 as byte, HurtTime: 0 as short, SurgeAABB: [-239.37855341721774, 68.81184088612723, -130.77437745536034, -235.37855341721774, 72.81184088612723, -126.77437745536034]}, Animal_Metadata: {Health: 10.0 as float, MaxHealth: 10.0 as float}, No_Place: 0 as byte}),
    [
        [<minecraft:ghast_tear>,<extrautils2:goldenlasso:1>,<minecraft:ghast_tear>]
    ]
);

recipes.addShapeless("bat_lasso",
    <extrautils2:goldenlasso>.withTag({Animal: {HurtByTimestamp: 0, ForgeData: {}, Attributes: [{Base: 6.0, Name: "generic.maxHealth"}, {Base: 0.0, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071, Name: "generic.movementSpeed"}, {Base: 0.0, Name: "generic.armor"}, {Base: 0.0, Name: "generic.armorToughness"}, {Base: 1.0, Name: "forge.swimSpeed"}, {Base: 16.0, Modifiers: [{UUIDMost: 8796997346294384415 as long, UUIDLeast: -6650638331109507375 as long, Amount: -0.0015187951395329992, Operation: 1, Name: "Random spawn bonus"}], Name: "generic.followRange"}], Invulnerable: 0 as byte, FallFlying: 0 as byte, PortalCooldown: 0, AbsorptionAmount: 0.0 as float, FallDistance: 0.0 as float, DeathTime: 0 as short, ForgeCaps: {"nuclearcraft:capability_entity_rads": {consumed: 0 as byte, radawayBuffer: 0.0, shouldWarn: 0 as byte, radXUsed: 0 as byte, poisonBuffer: 0.0, radXCooldown: 0.0, radXWoreOff: 0 as byte, radawayCooldown: 0.0, recentRadawayAddition: 0.0, maxRads: 300.0, setMaxRads: 1 as byte, radawayBufferSlow: 0.0, externalRadiationResistance: 0.0, messageCooldownTime: 0, totalRads: 0.0, radiationLevel: 0.0, recentPoisonAddition: 0.0, recentRadXAddition: 0.0, radiationImmunityStage: 0 as byte, giveGuidebook: 0 as byte, internalRadiationResistance: 0.0, radiationImmunityTime: 0.0}, "dsurround:data": {a: 0 as byte, f: 0 as byte}, "mahoutsukai:mahou": {MAHOUTSUKAI_PLAYER_PREV_YAW: 0.0 as float, MAHOUTSUKAI_SHOW_MAHOU: 1 as byte, MAHOUTSUKAI_MANA_FULL: 1 as byte, MAHOUTSUKAI_MANA_UP_COUNTER: 100, MAHOUTSUKAI_PLAYER_POSSESSING: 0 as byte, MAHOUTSUKAI_AUTHORITY_HIT: 0 as byte, MAHOUTSUKAI_LAST_RECIPE_CLOTH: 0 as byte, MAHOUTSUKAI_PLAYER_HAS_MAGIC: 0 as byte, MAHOUTSUKAI_PLAYER_CHARGE_RATE: 0.1, MAHOUTSUKAI_PLAYER_DAMAGE_EXCHANGE_USES: 0, MAHOUTSUKAI_PLAYER_PREV_PITCH: 0.0 as float, MAHOUTSUKAI_KODOKU_VALUE: 0, MAHOUTSUKAI_PLAYER_MAX_MANA: 100, MAHOUTSUKAI_PLAYER_STORED_MANA: 100, MAHOUTSUKAI_PLAYER_OLD_DIMENSION: 0, MAHOUTSUKAI_PLAYER_PROTECTIVE_DISPLACEMENT_USES: 0, MAHOUTSUKAI_CANCEL_TIME: -1 as long, MAHOUTSUKAI_PLAYER_DEATH_COLLECTION_USES_LEFT: 0.0 as float}, "llibrary:extendedentitydatacapability": {"mm:living": {frozenYaw: 0.0 as float, freezeProgress: 0.0 as float, frozenPitch: 0.0 as float, prevHasAI: 0 as byte, freezeDecayDelay: 0, frozenYawHead: 0.0 as float, frozenLimbSwingAmount: 0.0 as float, frozenRenderYawOffset: 0.0 as float, frozenSwingProgress: 0.0 as float}}, "thaumicaugmentation:portal_state": {inPortal: 0 as byte}, "pneumaticcraft:hacking": {}}, HandDropChances: [0.085 as float, 0.085 as float], PersistenceRequired: 0 as byte, id: "minecraft:bat", BatFlags: 0 as byte, Motion: [0.1587510871768967, -0.013923401364427136, 0.1587510871768967], Leashed: 0 as byte, UUIDLeast: -8711202105160615192 as long, Health: 6.0 as float, LeftHanded: 0 as byte, Air: 300 as short, OnGround: 0 as byte, Dimension: 0, Rotation: [-45.00001 as float, 0.0 as float], UpdateBlocked: 0 as byte, HandItems: [{}, {}], ArmorDropChances: [0.085 as float, 0.085 as float, 0.085 as float, 0.085 as float], UUIDMost: 2345205697766181671 as long, Pos: [-234.90815448248796, 68.23049076649134, -129.90815448248796], Fire: -1 as short, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0 as byte, HurtTime: 0 as short, SurgeAABB: [-235.15815448248796, 68.23049076649134, -130.15815448248796, -234.65815448248796, 69.13049074264949, -129.65815448248796]}, Animal_Metadata: {Health: 6.0 as float, MaxHealth: 6.0 as float}, No_Place: 0 as byte}),
    [<extrautils2:goldenlasso:0>,<charm:bat_bucket>]
);

recipes.addShaped("squid_lasso",
    <extrautils2:goldenlasso>.withTag({Animal: {HurtByTimestamp: 0, ForgeData: {}, Attributes: [{Base: 10.0, Name: "generic.maxHealth"}, {Base: 0.0, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071, Name: "generic.movementSpeed"}, {Base: 0.0, Name: "generic.armor"}, {Base: 0.0, Name: "generic.armorToughness"}, {Base: 1.0, Name: "forge.swimSpeed"}, {Base: 16.0, Modifiers: [{UUIDMost: 2732382180505502105 as long, UUIDLeast: -6003763713320145999 as long, Amount: 0.0011398791773280313, Operation: 1, Name: "Random spawn bonus"}], Name: "generic.followRange"}], Invulnerable: 0 as byte, FallFlying: 0 as byte, PortalCooldown: 0, AbsorptionAmount: 0.0 as float, FallDistance: 0.0 as float, DeathTime: 0 as short, ForgeCaps: {"nuclearcraft:capability_entity_rads": {consumed: 0 as byte, radawayBuffer: 0.0, shouldWarn: 0 as byte, radXUsed: 0 as byte, poisonBuffer: 0.0, radXCooldown: 0.0, radXWoreOff: 0 as byte, radawayCooldown: 0.0, recentRadawayAddition: 0.0, maxRads: 500.0, setMaxRads: 1 as byte, radawayBufferSlow: 0.0, externalRadiationResistance: 0.0, messageCooldownTime: 0, totalRads: 0.0, radiationLevel: 0.0, recentPoisonAddition: 0.0, recentRadXAddition: 0.0, radiationImmunityStage: 0 as byte, giveGuidebook: 0 as byte, internalRadiationResistance: 0.0, radiationImmunityTime: 0.0}, "dsurround:data": {a: 0 as byte, f: 0 as byte}, "mahoutsukai:mahou": {MAHOUTSUKAI_PLAYER_PREV_YAW: 0.0 as float, MAHOUTSUKAI_SHOW_MAHOU: 1 as byte, MAHOUTSUKAI_MANA_FULL: 1 as byte, MAHOUTSUKAI_MANA_UP_COUNTER: 100, MAHOUTSUKAI_PLAYER_POSSESSING: 0 as byte, MAHOUTSUKAI_AUTHORITY_HIT: 0 as byte, MAHOUTSUKAI_LAST_RECIPE_CLOTH: 0 as byte, MAHOUTSUKAI_PLAYER_HAS_MAGIC: 0 as byte, MAHOUTSUKAI_PLAYER_CHARGE_RATE: 0.1, MAHOUTSUKAI_PLAYER_DAMAGE_EXCHANGE_USES: 0, MAHOUTSUKAI_PLAYER_PREV_PITCH: 0.0 as float, MAHOUTSUKAI_KODOKU_VALUE: 0, MAHOUTSUKAI_PLAYER_MAX_MANA: 100, MAHOUTSUKAI_PLAYER_STORED_MANA: 100, MAHOUTSUKAI_PLAYER_OLD_DIMENSION: 0, MAHOUTSUKAI_PLAYER_PROTECTIVE_DISPLACEMENT_USES: 0, MAHOUTSUKAI_CANCEL_TIME: -1 as long, MAHOUTSUKAI_PLAYER_DEATH_COLLECTION_USES_LEFT: 0.0 as float}, "llibrary:extendedentitydatacapability": {"mm:living": {frozenYaw: 0.0 as float, freezeProgress: 0.0 as float, frozenPitch: 0.0 as float, prevHasAI: 0 as byte, freezeDecayDelay: 0, frozenYawHead: 0.0 as float, frozenLimbSwingAmount: 0.0 as float, frozenRenderYawOffset: 0.0 as float, frozenSwingProgress: 0.0 as float}}, "mysticallib:new_animal_cooldown_capability": {cooldown: 0 as long}, "thaumicaugmentation:portal_state": {inPortal: 0 as byte}, "pneumaticcraft:hacking": {}}, HandDropChances: [0.085 as float, 0.085 as float], PersistenceRequired: 0 as byte, id: "minecraft:squid", Motion: [0.0, -0.0784000015258789, 0.0], Leashed: 0 as byte, UUIDLeast: -5636401393079908105 as long, Health: 10.0 as float, LeftHanded: 0 as byte, Air: 289 as short, OnGround: 1 as byte, Dimension: 0, Rotation: [108.91011 as float, 0.0 as float], UpdateBlocked: 0 as byte, HandItems: [{}, {}], ArmorDropChances: [0.085 as float, 0.085 as float, 0.085 as float, 0.085 as float], UUIDMost: -3488368737886584294 as long, Pos: [-246.5, 68.0, -129.5], Fire: -1 as short, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0 as byte, HurtTime: 0 as short, SurgeAABB: [-246.90000000596046, 68.0, -129.90000000596046, -246.09999999403954, 68.80000001192093, -129.09999999403954]}, Animal_Metadata: {Health: 10.0 as float, MaxHealth: 10.0 as float}, No_Place: 0 as byte}),
    [
        [null,<minecraft:dye:0>,null],
        [null,<extrautils2:goldenlasso:0>,null],
        [<mysticalworld:raw_squid>,<mysticalworld:raw_squid>,<mysticalworld:raw_squid>]
    ]
);

recipes.addShaped("chicken_lasso",
    <extrautils2:goldenlasso>.withTag({Animal: {IsChickenJockey: 0 as byte, HurtByTimestamp: 0, ForgeData: {}, Attributes: [{Base: -2.0, Name: "tc.mobmod"}, {Base: 0.0, Name: "tc.mobmodtaint"}, {Base: 4.0, Name: "generic.maxHealth"}, {Base: 0.0, Name: "generic.knockbackResistance"}, {Base: 0.25, Name: "generic.movementSpeed"}, {Base: 0.0, Name: "generic.armor"}, {Base: 0.0, Name: "generic.armorToughness"}, {Base: 1.0, Name: "forge.swimSpeed"}, {Base: 16.0, Modifiers: [{UUIDMost: -9107750135488822148 as long, UUIDLeast: -6411965472852072313 as long, Amount: 0.0038599232524773423, Operation: 1, Name: "Random spawn bonus"}], Name: "generic.followRange"}], Invulnerable: 0 as byte, FallFlying: 0 as byte, ForcedAge: 0, PortalCooldown: 0, AbsorptionAmount: 0.0 as float, FallDistance: 0.0 as float, InLove: 0, DeathTime: 0 as short, ForgeCaps: {"nuclearcraft:capability_entity_rads": {consumed: 0 as byte, radawayBuffer: 0.0, shouldWarn: 0 as byte, radXUsed: 0 as byte, poisonBuffer: 0.0, radXCooldown: 0.0, radXWoreOff: 0 as byte, radawayCooldown: 0.0, recentRadawayAddition: 0.0, maxRads: 200.0, setMaxRads: 1 as byte, radawayBufferSlow: 0.0, externalRadiationResistance: 0.0, messageCooldownTime: 0, totalRads: 0.0, radiationLevel: 0.0, recentPoisonAddition: 0.0, recentRadXAddition: 0.0, radiationImmunityStage: 0 as byte, giveGuidebook: 0 as byte, internalRadiationResistance: 0.0, radiationImmunityTime: 0.0}, "dsurround:data": {a: 0 as byte, f: 0 as byte}, "mahoutsukai:mahou": {MAHOUTSUKAI_PLAYER_PREV_YAW: 0.0 as float, MAHOUTSUKAI_SHOW_MAHOU: 1 as byte, MAHOUTSUKAI_MANA_FULL: 1 as byte, MAHOUTSUKAI_MANA_UP_COUNTER: 100, MAHOUTSUKAI_PLAYER_POSSESSING: 0 as byte, MAHOUTSUKAI_AUTHORITY_HIT: 0 as byte, MAHOUTSUKAI_LAST_RECIPE_CLOTH: 0 as byte, MAHOUTSUKAI_PLAYER_HAS_MAGIC: 0 as byte, MAHOUTSUKAI_PLAYER_CHARGE_RATE: 0.1, MAHOUTSUKAI_PLAYER_DAMAGE_EXCHANGE_USES: 0, MAHOUTSUKAI_PLAYER_PREV_PITCH: 0.0 as float, MAHOUTSUKAI_KODOKU_VALUE: 0, MAHOUTSUKAI_PLAYER_MAX_MANA: 100, MAHOUTSUKAI_PLAYER_STORED_MANA: 100, MAHOUTSUKAI_PLAYER_OLD_DIMENSION: 0, MAHOUTSUKAI_PLAYER_PROTECTIVE_DISPLACEMENT_USES: 0, MAHOUTSUKAI_CANCEL_TIME: -1 as long, MAHOUTSUKAI_PLAYER_DEATH_COLLECTION_USES_LEFT: 0.0 as float}, "llibrary:extendedentitydatacapability": {"mm:living": {frozenYaw: 0.0 as float, freezeProgress: 0.0 as float, frozenPitch: 0.0 as float, prevHasAI: 0 as byte, freezeDecayDelay: 0, frozenYawHead: 0.0 as float, frozenLimbSwingAmount: 0.0 as float, frozenRenderYawOffset: 0.0 as float, frozenSwingProgress: 0.0 as float}}, "thaumicaugmentation:portal_state": {inPortal: 0 as byte}, "pneumaticcraft:hacking": {}}, HandDropChances: [0.085 as float, 0.085 as float], PersistenceRequired: 0 as byte, id: "minecraft:chicken", Age: 0, Motion: [0.0, -0.0784000015258789, 0.0], Leashed: 0 as byte, UUIDLeast: -9001949167856141385 as long, Health: 4.0 as float, LeftHanded: 1 as byte, Air: 300 as short, OnGround: 1 as byte, Dimension: 0, Rotation: [139.51723 as float, 0.0 as float], UpdateBlocked: 0 as byte, HandItems: [{}, {}], ArmorDropChances: [0.085 as float, 0.085 as float, 0.085 as float, 0.085 as float], EggLayTime: 8805, UUIDMost: 5334791514818495570 as long, Pos: [-238.5, 68.0, -129.5], Fire: -1 as short, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0 as byte, HurtTime: 0 as short, SurgeAABB: [-238.70000000298023, 68.0, -129.70000000298023, -238.29999999701977, 68.69999998807907, -129.29999999701977]}, Animal_Metadata: {Health: 4.0 as float, MaxHealth: 4.0 as float}, No_Place: 0 as byte}),
    [
        [null,<extrautils2:goldenlasso:0>,null],
        [<minecraft:feather>,<minecraft:chicken>,<minecraft:feather>],
        [<minecraft:stick>,null,<minecraft:stick>]
    ]
);

recipes.removeByRecipeName("botania:lexicon");
<ore:mysticFlower>.addItems([
    <botania:flower:0>,
    <botania:flower:1>,
    <botania:flower:2>,
    <botania:flower:3>,
    <botania:flower:4>,
    <botania:flower:5>,
    <botania:flower:6>,
    <botania:flower:7>,
    <botania:flower:8>,
    <botania:flower:9>,
    <botania:flower:10>,
    <botania:flower:11>,
    <botania:flower:12>,
    <botania:flower:13>,
    <botania:flower:14>,
    <botania:flower:15>
]);
recipes.addShapeless("lexicon_fixed",
    <botania:lexicon>,
    [<ore:mysticFlower>,<minecraft:book>]
);

recipes.addShaped("coke_torch",
    <minecraft:torch>*8,
    [
        [<ore:fuelCoke>],
        [<ore:stickWood>]
    ]
);

print("Initialized 04_modifier.zs");