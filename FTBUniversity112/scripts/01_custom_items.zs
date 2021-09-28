#Name:01_custom_items.zs
#Author: Feed The Beast and aaronhowser1

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.DropHandler;

print("Initializing 01_custom_items.zs");

#Blocks
var octCompStoneComp1 = VanillaFactory.createBlock("compressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp1.setBlockHardness(20.0);
    octCompStoneComp1.setBlockResistance(1000000.0);
    octCompStoneComp1.setToolClass("pickaxe");
    octCompStoneComp1.setToolLevel(3);
    octCompStoneComp1.setBlockSoundType(<soundtype:metal>);
octCompStoneComp1.register();

var octCompStoneComp2 = VanillaFactory.createBlock("doublecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp2.setBlockHardness(20.0);
    octCompStoneComp2.setBlockResistance(1000000.0);
    octCompStoneComp2.setToolClass("pickaxe");
    octCompStoneComp2.setToolLevel(3);
    octCompStoneComp2.setBlockSoundType(<soundtype:metal>);
octCompStoneComp2.register();

var octCompStoneComp3 = VanillaFactory.createBlock("triplecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp3.setBlockHardness(20.0);
    octCompStoneComp3.setBlockResistance(1000000.0);
    octCompStoneComp3.setToolClass("pickaxe");
    octCompStoneComp3.setToolLevel(3);
    octCompStoneComp3.setBlockSoundType(<soundtype:metal>);
octCompStoneComp3.register();

var octCompStoneComp4 = VanillaFactory.createBlock("quadruplecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp4.setBlockHardness(20.0);
    octCompStoneComp4.setBlockResistance(1000000.0);
    octCompStoneComp4.setToolClass("pickaxe");
    octCompStoneComp4.setToolLevel(3);
    octCompStoneComp4.setBlockSoundType(<soundtype:metal>);
octCompStoneComp4.register();

var octCompStoneComp5 = VanillaFactory.createBlock("quintuplecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp5.setBlockHardness(20.0);
    octCompStoneComp5.setBlockResistance(1000000.0);
    octCompStoneComp5.setToolClass("pickaxe");
    octCompStoneComp5.setToolLevel(3);
    octCompStoneComp5.setBlockSoundType(<soundtype:metal>);
octCompStoneComp5.register();

var octCompStoneComp6 = VanillaFactory.createBlock("sextuplecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp6.setBlockHardness(20.0);
    octCompStoneComp6.setBlockResistance(1000000.0);
    octCompStoneComp6.setToolClass("pickaxe");
    octCompStoneComp6.setToolLevel(3);
    octCompStoneComp6.setBlockSoundType(<soundtype:metal>);
octCompStoneComp6.register();

var octCompStoneComp7 = VanillaFactory.createBlock("septuplecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp7.setBlockHardness(20.0);
    octCompStoneComp7.setBlockResistance(1000000.0);
    octCompStoneComp7.setToolClass("pickaxe");
    octCompStoneComp7.setToolLevel(3);
    octCompStoneComp7.setBlockSoundType(<soundtype:metal>);
octCompStoneComp7.register();

var octCompStoneComp8 = VanillaFactory.createBlock("octuplecompressedoctuplecompressedcobblestone", <blockmaterial:rock>);
    octCompStoneComp8.setBlockHardness(20.0);
    octCompStoneComp8.setBlockResistance(1000000.0);
    octCompStoneComp8.setToolClass("pickaxe");
    octCompStoneComp8.setToolLevel(3);
    octCompStoneComp8.setBlockSoundType(<soundtype:metal>);
octCompStoneComp8.register();

var oreArbitrarium = VanillaFactory.createBlock("arbitrarium_ore", <blockmaterial:rock>);
    oreArbitrarium.setBlockHardness(2.0);
    oreArbitrarium.setToolClass("pickaxe");
    oreArbitrarium.setToolLevel(3);
oreArbitrarium.register();

var blockArbitrarium = VanillaFactory.createBlock("arbitrarium_block", <blockmaterial:iron>);
    blockArbitrarium.setBlockHardness(2.0);
    blockArbitrarium.setToolClass("pickaxe");
    blockArbitrarium.setToolLevel(3);
blockArbitrarium.register();

var oreDungeonLoot = VanillaFactory.createBlock("dungeon_loot", <blockmaterial:rock>);
oreDungeonLoot.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/simple_dungeon", id: "minecraft:chest"}, display: {LocName: "ct.ore.dungeon",Lore: ["Place me!"]}}));
});
oreDungeonLoot.register();

var oreMineshaftLoot = VanillaFactory.createBlock("mineshaft_loot", <blockmaterial:rock>);
oreMineshaftLoot.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/abandoned_mineshaft", id: "minecraft:chest"}, display: {LocName: "ct.ore.mineshaft",Lore: ["Place me!"]}}));
});
oreMineshaftLoot.register();

var oreDesertLoot = VanillaFactory.createBlock("desert_loot", <blockmaterial:rock>);
oreDesertLoot.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/desert_pyramid", id: "minecraft:chest"}, display: {LocName: "ct.ore.desert",Lore: ["Place me!"]}}));
});
oreDesertLoot.register();

var oreJungleLoot = VanillaFactory.createBlock("jungle_loot", <blockmaterial:rock>);
oreJungleLoot.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/jungle_temple", id: "minecraft:chest"}, display: {LocName: "ct.ore.jungle",Lore: ["Place me!"]}}));
});
oreJungleLoot.register();

var oreNetherLoot = VanillaFactory.createBlock("nether_loot", <blockmaterial:rock>);
oreNetherLoot.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/nether_bridge", id: "minecraft:chest"}, display: {LocName: "ct.ore.nether",Lore: ["Place me!"]}}));
});
oreNetherLoot.register();

var portalEarth = VanillaFactory.createBlock("portal_earth", <blockmaterial:rock>);
portalEarth.register();

var portalBB = VanillaFactory.createBlock("portal_bb", <blockmaterial:rock>);
portalBB.register();

var portalBBOP = VanillaFactory.createBlock("portal_bbop", <blockmaterial:rock>);
portalBBOP.register();

var portalVV = VanillaFactory.createBlock("portal_vv", <blockmaterial:rock>);
portalVV.register();

var portalVVA = VanillaFactory.createBlock("portal_vva", <blockmaterial:rock>);
portalVVA.register();


#Items
var ingotArbitrarium = VanillaFactory.createItem("arbitrarium_ingot");
ingotArbitrarium.register();

var logoModpack = VanillaFactory.createItem("university_logo");
logoModpack.register();

var drumMana = VanillaFactory.createItem("creative_mana_drum");
drumMana.register();

var certCompressor = VanillaFactory.createItem("creative_compressor_certificate");
certCompressor.register();

print("Initialized 01_custom_items.zs");