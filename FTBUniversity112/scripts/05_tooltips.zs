#Name:05_tooltips.zs
#Author: Feed The Beast and aaronhowser1

import crafttweaker.item.IItemStack;

print("Initializing 05_tooltips.zs");

<ore:blockCoal>.addTooltip(format.yellow("Most recipes that say they need 8 only need 1"));
<contenttweaker:compressedoctuplecompressedcobblestone>.addTooltip("387,420,489 Blocks");
<contenttweaker:doublecompressedoctuplecompressedcobblestone>.addTooltip("3,486,784,401 Blocks");
<contenttweaker:triplecompressedoctuplecompressedcobblestone>.addTooltip("31,381,059,609 Blocks");
<contenttweaker:quadruplecompressedoctuplecompressedcobblestone>.addTooltip("282,429,536,481 Blocks");
<contenttweaker:quintuplecompressedoctuplecompressedcobblestone>.addTooltip("2,541,865,828,329 Blocks");
<contenttweaker:sextuplecompressedoctuplecompressedcobblestone>.addTooltip("22,876,792,454,961 Blocks");
<contenttweaker:septuplecompressedoctuplecompressedcobblestone>.addTooltip("205,891,132,094,649 Blocks");
<contenttweaker:octuplecompressedoctuplecompressedcobblestone>.addTooltip("1,853,020,188,851,841 Blocks");
<appliedenergistics2:facade>.addTooltip("Facades can be made out of almost any block");
<extrautils2:bagofholding>.addTooltip(format.yellow("Disabled due to dupe bugs"));
<extrautils2:goldenlasso:0>.addTooltip(format.yellow("Sometimes fails to pick up mobs correctly, causes desync"));
<extrautils2:goldenlasso:0>.addTooltip(format.yellow("Suggested to use the Soul Vial instead"));
<extrautils2:goldenlasso:1>.addTooltip(format.yellow("Sometimes fails to pick up mobs correctly, causes desync"));
<extrautils2:goldenlasso:1>.addTooltip(format.yellow("Suggested to use the Soul Vial instead"));
<extrautils2:creativeharvest>.addTooltip(format.yellow("Craft with a block to set it, then you can mine it infinitely"));
<extrautils2:creativeharvest>.addTooltip(format.yellow("Sneak click to pick it back up"));
<extrautils2:drum:4>.addTooltip(format.yellow("Craft with a fluid container to set it, then you can empty infinitely"));
<extrautils2:drum:4>.addTooltip(format.yellow("Craft by itself to clear"));
<minecraft:enchanting_table>.addTooltip(format.yellow("Modified by Quark Oddities"));
<yabba:upgrade_star_tier>.addTooltip(format.yellow("Recipe altered by modpack"));
<rats:assorted_vegetables>.addTooltip(format.yellow("Recipe altered by modpack"));
<contenttweaker:creative_compressor_certificate>.addTooltip("This item certifies the user to create infinite air pressure out of nothing, somehow");

<contenttweaker:portal_earth>.addTooltip("Does nothing if you're already on Earth (aka the Overworld)!");
val otgPortals = [
    <contenttweaker:portal_bb>,
    <contenttweaker:portal_bbop>,
    <contenttweaker:portal_vv>,
    <contenttweaker:portal_vva>
] as IItemStack[];
for portal in otgPortals {
    portal.addTooltip("Does nothing if you're already there!");
}
val otgPortalsAll = [
    <contenttweaker:portal_earth>,
    <contenttweaker:portal_bb>,
    <contenttweaker:portal_bbop>,
    <contenttweaker:portal_vv>,
    <contenttweaker:portal_vva>
] as IItemStack[];
for portal in otgPortals {
    portal.addTooltip(format.red("Sends you near the spawn of its dimension"));
}

<extrautils2:creativeharvest>
    .withTag({
        creative_block: {
            meta: 1, 
            block: "avaritia:block_resource"}, 
        display_stack: {
            id: "avaritia:block_resource", 
            Count: 1 as byte, 
            Damage: 1 as short}
        }).addTooltip(format.darkAqua("Set to Infinity Block"));

val ColoredAE2Parts = [
    <appliedenergistics2:part:20>,
    <appliedenergistics2:part:500>,
    <appliedenergistics2:part:60>,
    <appliedenergistics2:part:0>,
    <appliedenergistics2:part:40>
] as IItemStack[];
for item in ColoredAE2Parts{
    item.addTooltip(format.yellow("Can be crafted in any of the 16 colors!"));
}

val PrefabCraftingComponents = [
    <prefab:item_compressed_chest>,
    <prefab:item_pile_of_bricks>,
    <prefab:item_pallet_of_bricks>,
    <prefab:item_warehouse_upgrade>,
    <prefab:item_bundle_of_timber>,
    <prefab:item_string_of_lanterns>,
    <prefab:item_coil_of_lanterns>,
] as IItemStack[];
for item in PrefabCraftingComponents{
    item.addTooltip(format.yellow("Crafting component"));
}

val ChiselBlocksThatArentHidden = [
    <chisel:blockaluminum:0>,
    <chisel:andesite:0>,
    <chisel:antiblock:0>,
    <chisel:arcane_stone:0>,
    <chisel:basalt:0>,
    <chisel:bookshelf_oak:0>,
    <chisel:bookshelf_spruce:0>,
    <chisel:bookshelf_jungle:0>,
    <chisel:bookshelf_acacia:0>,
    <chisel:bookshelf_darkoak:0>,
    <chisel:bricks:0>,
    <chisel:blockbronze:0>,
    <chisel:brownstone:0>,
    <chisel:certus:0>,
    <chisel:block_charcoal:0>,
    <chisel:cloud:0>,
    <chisel:blockcobalt:0>,
    <chisel:cobblestone:0>,
    <chisel:block_coal:0>,
    <chisel:block_coal_coke:0>,
    <chisel:cobblestonemossy:0>,
    <chisel:concrete_black:0>,
    <chisel:concrete_red:0>,
    <chisel:concrete_brown:0>,
    <chisel:concrete_blue:0>,
    <chisel:concrete_purple:0>,
    <chisel:concrete_cyan:0>,
    <chisel:concrete_lightgray:0>,
    <chisel:concrete_gray:0>,
    <chisel:concrete_pink:0>,
    <chisel:concrete_lime:0>,
    <chisel:concrete_yellow:0>,
    <chisel:concrete_lightblue:0>,
    <chisel:concrete_magenta:0>,
    <chisel:concrete_orange:0>,
    <chisel:concrete_white:0>,
    <chisel:blockcopper:0>,
    <chisel:diamond:0>,
    <chisel:diorite:0>,
    <chisel:dirt:0>,
    <chisel:emerald:0>,
    <chisel:purpur:0>,
    <chisel:endstone:0>,
    <chisel:glassdyedblack:0>,
    <chisel:glassdyedred:0>,
    <chisel:glassdyedgreen:0>,
    <chisel:glassdyedbrown:0>,
    <chisel:glassdyedblue:0>,
    <chisel:glassdyedpurple:0>,
    <chisel:glassdyedcyan:0>,
    <chisel:glassdyedlightgray:0>,
    <chisel:glassdyedgray:0>,
    <chisel:glassdyedpink:0>,
    <chisel:glassdyedlime:0>,
    <chisel:glassdyedyellow:0>,
    <chisel:glassdyedlightblue:0>,
    <chisel:glassdyedmagenta:0>,
    <chisel:glassdyedorange:0>,
    <chisel:glassdyedwhite:0>,
    <chisel:glasspanedyedblack:0>,
    <chisel:glasspanedyedred:0>,
    <chisel:glasspanedyedgreen:0>,
    <chisel:glasspanedyedbrown:0>,
    <chisel:glasspanedyedblue:0>,
    <chisel:glasspanedyedpurple:0>,
    <chisel:glasspanedyedcyan:0>,
    <chisel:glasspanedyedlightgray:0>,
    <chisel:glasspanedyedgray:0>,
    <chisel:glasspanedyedpink:0>,
    <chisel:glasspanedyedlime:0>,
    <chisel:glasspanedyedyellow:0>,
    <chisel:glasspanedyedlightblue:0>,
    <chisel:glasspanedyedmagenta:0>,
    <chisel:glasspanedyedorange:0>,
    <chisel:glasspanedyedwhite:0>,
    <chisel:glowstone:0>,
    <chisel:blockgold:0>,
    <chisel:granite:0>,
    <chisel:hardenedclay:0>,
    <chisel:ice:0>,
    <chisel:blockinvar:0>,
    <chisel:iron:0>,
    <chisel:lapis:0>,
    <chisel:blocklead:0>,
    <chisel:limestone:0>,
    <chisel:marble:0>,
    <chisel:netherbrick:0>,
    <chisel:netherrack:0>,
    <chisel:blocknickel:0>,
    <chisel:obsidian:0>,
    <chisel:planks-oak:0>,
    <chisel:planks-spruce:0>,
    <chisel:planks-birch:0>,
    <chisel:planks-jungle:0>,
    <chisel:planks-acacia:0>,
    <chisel:planks-dark-oak:0>,
    <chisel:blockplatinum:0>,
    <chisel:prismarine:0>,
    <chisel:quartz:0>,
    <chisel:redstone:0>,
    <chisel:sandstoneyellow:0>,
    <chisel:sandstonered:0>,
    <chisel:blocksilver:0>,
    <chisel:stonebrick:0>,
    <chisel:temple:0>,
    <chisel:blocktin:0>,
    <chisel:blockuranium:0>
] as IItemStack[];
for item in ChiselBlocksThatArentHidden{
    item.addTooltip(format.yellow("Has more versions when used with a Chisel!"));
}

val QuarkOddities = [
    <quark:backpack>,
    <quark:pipe>
] as IItemStack[];
for item in QuarkOddities{
    item.addTooltip(format.yellow("Added by Quark Oddities"));
}

val EnderIOEndergy = [
    <enderio:block_alloy_endergy:*>,
    <enderio:item_alloy_endergy_ingot:*>,
    <enderio:item_alloy_endergy_nugget:*>,
    <enderio:item_alloy_endergy_ball:*>,
    <enderio:item_endergy_conduit:*>,
    <enderio:item_stellar_alloy_sword>,
    <enderio:item_stellar_alloy_pickaxe>,
    <enderio:item_stellar_alloy_axe>,
    <enderio:item_stellar_alloy_helmet>,
    <enderio:item_stellar_alloy_boots>,
    <enderio:item_stellar_alloy_chestplate>,
    <enderio:item_stellar_alloy_leggings>,
    <enderio:item_capacitor_grainy>,
    <enderio:item_capacitor_crystalline>,
    <enderio:item_capacitor_melodic>,
    <enderio:item_capacitor_stellar>,
    <enderio:item_capacitor_totemic>,
    <enderio:item_capacitor_silver>,
    <enderio:item_capacitor_energetic_silver>,
    <enderio:item_capacitor_vivid>
] as IItemStack[];
for item in EnderIOEndergy{
    item.addTooltip(format.yellow("Added by EnderIO Endergy"));
}

<enderio:item_capacitor_grainy>.addTooltip(format.yellow("Has durability"));
<enderio:item_capacitor_totemic>.addTooltip(format.yellow("Can be enchanted, has durability"));
<avaritiaio:infinitecapacitor>.addTooltip("Global Level: "+ format.lightPurple("9.999999"));

val GendustryLocked = [
    <gendustry:imprinter>,
    <gendustry:replicator>,
    <gendustry:transposer>,
    <gendustry:extractor>,
    <gendustry:liquifier>,
    <gendustry:mutatron_advanced>,
    <gendustry:sampler>,
    <gendustry:industrial_apiary>,
    <gendustry:mutatron>,
    <gendustry:mutagen_producer>,
    <gendustry:pollen_kit>
] as IItemStack[];
for item in GendustryLocked{
    item.addTooltip(format.yellow("Recipe locked until Alveary quest completed"));
}

for item in loadedMods["energyconverters"].items{
    item.addTooltip(format.yellow("Recipe locked until Kinetic Generator quest completed"));
}

<environmentaltech:modifier_speed>.addTooltip(format.yellow("On Miners, reduces time 30%, increases cost 12%"));
<environmentaltech:modifier_speed>.addTooltip(format.yellow("On Beacons, grants Speed"));
<environmentaltech:modifier_luck>.addTooltip(format.yellow("On Miners, gives chance to get multiple"));
<environmentaltech:modifier_luck>.addTooltip(format.yellow("On Beacons, grants Luck"));
<environmentaltech:modifier_piezo>.addTooltip(format.yellow("On Solar Arrays, allows them to work better in rain"));
<environmentaltech:modifier_accuracy>.addTooltip(format.yellow("On Miners, increases chance of colored Lens influencing"));
<environmentaltech:modifier_creative_flight>.addTooltip(format.yellow("On Personal Beacons, grants creative flight"));
<environmentaltech:modifier_flight_speed>.addTooltip(format.yellow("On Personal Beacons, increases flight speed"));
<environmentaltech:modifier_haste>.addTooltip(format.yellow("On Beacons, grants Haste"));
<environmentaltech:modifier_strength>.addTooltip(format.yellow("On Beacons, grants Strength"));
<environmentaltech:modifier_jump_boost>.addTooltip(format.yellow("On Beacons, grants Jump Boost"));
<environmentaltech:modifier_regeneration>.addTooltip(format.yellow("On Beacons, grants Regeneration"));
<environmentaltech:modifier_resistance>.addTooltip(format.yellow("On Beacons, grants Resistance"));
<environmentaltech:modifier_fire_resistance>.addTooltip(format.yellow("On Beacons, grants Fire Resistance"));
<environmentaltech:modifier_water_breathing>.addTooltip(format.yellow("On Beacons, grants Water Breathing"));
<environmentaltech:modifier_invisibility>.addTooltip(format.yellow("On Beacons, grants Invisibilty"));
<environmentaltech:modifier_night_vision>.addTooltip(format.yellow("On Beacons, grants Night Vision"));
<environmentaltech:modifier_health_boost>.addTooltip(format.yellow("On Beacons, grants Health Boost, giving 2 extra hearts"));
<environmentaltech:modifier_saturation>.addTooltip(format.yellow("On Beacons, grants Saturation, quickly feeding you"));
<environmentaltech:modifier_glowing>.addTooltip(format.yellow("On Beacons, grants Glowing"));

val AE2presses = [
    <appliedenergistics2:material:13>,
    <appliedenergistics2:material:14>,
    <appliedenergistics2:material:15>,
    <appliedenergistics2:material:19>,
    <appliedenergistics2:material:21>,
    <appliedenergistics2:sky_stone_block>
] as IItemStack[];
for item in AE2presses{
    item.addTooltip(format.yellow("Recipe added by modpack"));
}

<minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:feral_ratlantean"}}).addTooltip(format.yellow("Recipe added by modpack"));
<minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:ratlantean_spirit"}}).addTooltip(format.yellow("Recipe added by modpack"));
<minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:pirat"}}).addTooltip(format.yellow("Recipe added by modpack"));

<libvulpes:coil0:4>.addTooltip(format.yellow("Machine Speed: 1"));
<libvulpes:coil0:2>.addTooltip(format.yellow("Machine Speed: 1.11"));
<libvulpes:coil0:9>.addTooltip(format.yellow("Machine Speed: 1.25"));
<libvulpes:coil0:7>.addTooltip(format.yellow("Machine Speed: 1.33"));
<libvulpes:coil0:10>.addTooltip(format.yellow("Machine Speed: 2"));

<advancedrocketry:solarpanel>.addTooltip(format.yellow("Only function when used with Satellites"));
<advancedrocketry:solargenerator>.addTooltip(format.yellow("Only function when used with Satellites"));

val passiveMobs = [
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:bat"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:donkey"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:horse"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:llama"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mooshroom"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mule"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ocelot"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:parrot"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:rabbit"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton_horse"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:squid"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_horse"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:grottol"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:lantern"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_fox"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_frog"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_beetle"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_sprout"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_hell_sprout"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_deer"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_owl"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_lava_cat"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_silkworm"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:stoneling"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:archaeologist"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:frog"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:crab"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:plague_doctor"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:pech"}})
] as IItemStack[];
for item in passiveMobs {
    item.addTooltip(format.green("Passive"));
}

val hostileMobs = [
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:blaze"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cave_spider"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:creeper"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:enderman"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:endermite"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:evocation_illager"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ghast"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:guardian"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:husk"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:magma_cube"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:shulker"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:silverfish"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:slime"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:spider"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:stray"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:vex"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:vindication_illager"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:witch"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:wither_skeleton"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_villager"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:foliaath"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:barakoana"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:barakoaya"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:naga"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalworld:entity_endermini"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "nuclearcraft:feral_ghoul"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:dweller"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:ashen"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:pirate"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:wraith"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:illager_piper"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:ratlantean_spirit"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:feral_ratlantean"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:pirat"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:plague_beast"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:brainyzombie"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:giantbrainyzombie"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:wisp"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:firebat"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:mindspider"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchguardian"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistknight"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistcleric"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchcrab"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:inhabitedzombie"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:thaumslime"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintcrawler"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintacle"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintswarm"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintseed"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintseedprime"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumicaugmentation:eldritch_guardian"}})
] as IItemStack[];
for item in hostileMobs {
    item.addTooltip(format.red("Hostile"));
}

val bossMobs = [
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:elder_guardian"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:ferrous_wroughtnaut"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:barako"}}),
    <mowziesmobs:spawn_egg>.withTag({EntityTag: {id: "mowziesmobs:frostmaw"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:neo_ratlantean"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:marbled_cheese_golem"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "rats:black_death"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchwarden"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchgolem"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintaclegiant"}})
] as IItemStack[];
for item in bossMobs {
    item.addTooltip(format.lightPurple("Boss"));
}

val neutralMobs = [
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:polar_bear"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:wolf"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_pigman"}})
] as IItemStack[];
for item in neutralMobs {
    item.addTooltip(format.gray("Neutral"));
}

print("Initialized 05_tooltips.zs");