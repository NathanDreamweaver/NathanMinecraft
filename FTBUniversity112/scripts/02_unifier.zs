#Name:02_unifier.zs
#Author: TheSilkMiner, used with permission

import crafttweaker.item.IItemStack;

print("Initializing 02_unifier.zs");

val thingsToKeep as IItemStack[] = [
    <thermalfoundation:ore:0>,                  #Copper Ore
    <thermalfoundation:material:192>,           #Copper Nugget
    <thermalfoundation:material:128>,           #Copper Ingot
    <thermalfoundation:material:64>,            #Pulverized Copper
    <thermalfoundation:storage:0>,              #Block of Copper
    <thermalfoundation:material:256>,           #Copper Gear
    <thermalfoundation:material:320>,           #Copper Plate

    <thermalfoundation:ore:1>,                  #Tin Ore
    <thermalfoundation:material:193>,           #Tin Nugget
    <thermalfoundation:material:129>,           #Tin Ingot
    <thermalfoundation:material:65>,            #Pulverized Tin
    <thermalfoundation:storage:1>,              #Block of Tin
    <thermalfoundation:material:257>,           #Tin Gear
    <thermalfoundation:material:321>,           #Tin Plate

    <thermalfoundation:ore:2>,                  #Silver Ore
    <thermalfoundation:material:194>,           #Silver Nugget
    <thermalfoundation:material:130>,           #Silver Ingot
    <thermalfoundation:material:66>,            #Pulverized Silver
    <thermalfoundation:storage:2>,              #Block of Silver
    <thermalfoundation:material:258>,           #Silver Gear
    <thermalfoundation:material:322>,           #Silver Plate

    <thermalfoundation:ore:3>,                  #Lead Ore
    <thermalfoundation:material:195>,           #Lead Nugget
    <thermalfoundation:material:131>,           #Lead Ingot
    <thermalfoundation:material:67>,            #Pulverized Lead
    <thermalfoundation:storage:3>,              #Block of Lead
    <thermalfoundation:material:259>,           #Lead Gear
    <thermalfoundation:material:323>,           #Lead Plate

    <thermalfoundation:ore:4>,                  #Aluminum Ore
    <thermalfoundation:material:196>,           #Aluminum Nugget
    <thermalfoundation:material:132>,           #Aluminum Ingot
    <thermalfoundation:material:68>,            #Pulverized Aluminum
    <thermalfoundation:storage:4>,              #Block of Aluminum
    <thermalfoundation:material:260>,           #Aluminum Gear
    <thermalfoundation:material:324>,           #Aluminum Plate

    <thermalfoundation:ore:5>,                  #Nickel Ore
    <thermalfoundation:material:197>,           #Nickel Nugget
    <thermalfoundation:material:133>,           #Nickel Ingot
    <thermalfoundation:material:69>,            #Pulverized Nickel
    <thermalfoundation:storage:5>,              #Block of Nickel
    <thermalfoundation:material:261>,           #Nickel Gear
    <thermalfoundation:material:325>,           #Nickel Plate

    <thermalfoundation:ore:6>,                  #Platinum Ore
    <thermalfoundation:material:198>,           #Platinum Nugget
    <thermalfoundation:material:134>,           #Platinum Ingot
    <thermalfoundation:material:70>,            #Pulverized Platinum
    <thermalfoundation:storage:6>,              #Block of Platinum
    <thermalfoundation:material:262>,           #Platinum Gear
    <thermalfoundation:material:326>,           #Platinum Plate

    <thermalfoundation:ore:7>,                  #Iridium Ore
    <ic2:misc_resource:2>,                      #Iridium Nugget
    <thermalfoundation:material:135>,           #Iridium Ingot
    <thermalfoundation:material:71>,            #Pulverized Iridium
    <thermalfoundation:storage:7>,              #Block of Iridium
    <thermalfoundation:material:263>,           #Iridium Gear
    <thermalfoundation:material:327>,           #Iridium Plate

    <thermalfoundation:material:224>,           #Steel Nugget
    <thermalfoundation:material:160>,           #Steel Ingot
    <thermalfoundation:material:96>,            #Steel Blend
    <thermalfoundation:storage_alloy:0>,        #Block of Steel
    <thermalfoundation:material:288>,           #Steel Gear
    <thermalfoundation:material:352>,           #Steel Plate

    <thermalfoundation:material:225>,           #Electrum Nugget
    <thermalfoundation:material:161>,           #Electrum Ingot
    <thermalfoundation:material:97>,            #Electrum Blend
    <thermalfoundation:storage_alloy:1>,        #Block of Electrum
    <thermalfoundation:material:289>,           #Electrum Gear
    <thermalfoundation:material:353>,           #Electrum Plate

    <thermalfoundation:material:226>,           #Invar Nugget
    <thermalfoundation:material:162>,           #Invar Ingot
    <thermalfoundation:material:98>,            #Invar Blend
    <thermalfoundation:storage_alloy:2>,        #Block of Invar
    <thermalfoundation:material:290>,           #Invar Gear
    <thermalfoundation:material:354>,           #Invar Plate

    <thermalfoundation:material:227>,           #Bronze Nugget
    <thermalfoundation:material:163>,           #Bronze Ingot
    <thermalfoundation:material:99>,            #Bronze Blend
    <thermalfoundation:storage_alloy:3>,        #Block of Bronze
    <thermalfoundation:material:291>,           #Bronze Gear
    <thermalfoundation:material:355>,           #Bronze Plate

    <thermalfoundation:material:228>,           #Constantan Nugget
    <thermalfoundation:material:164>,           #Constantan Ingot
    <thermalfoundation:material:100>,           #Constantan Blend
    <thermalfoundation:storage_alloy:4>,        #Block of Constantan
    <thermalfoundation:material:292>,           #Constantan Gear
    <thermalfoundation:material:356>,           #Constantan Plate

    <nuclearcraft:ore:4>,                       #Uranium Ore
    <nuclearcraft:ingot:4>,                     #Uranium Ingot
    <nuclearcraft:dust:4>,                      #Uranium Dust
    <ic2:resource:10>,                          #Block of Uranium
    <immersiveengineering:metal:5>,             #Uranium Nugget
    <immersiveengineering:metal:35>,            #Uranium Plate

    <minecraft:iron_ore>,                       #Iron Ore
    <minecraft:iron_nugget>,                    #Iron Nugget, BECAUSE APPARENTLY SOME MODS ADD THEIR OWN???
    <minecraft:iron_ingot>,                     #Iron Ingot
    <thermalfoundation:material:0>,             #Pulverized Iron
    <minecraft:iron_block>,                     #Iron Block
    <thermalfoundation:material:24>,            #Iron Gear
    <thermalfoundation:material:32>,            #Iron Plate

    <immersiveengineering:material:6>,          #Coal Coke
    <immersiveengineering:material:17>,         #Coke Dust
    <immersiveengineering:stone_decoration:3>,  #Block of Coal Coke

    <thermalfoundation:material:796>,           #Pulverized Charcoal
    <thermalfoundation:storage_resource:0>,     #Block of Charcoal

    #Chisel stuff
    <chisel:blockaluminum:0>,
    <chisel:blockbronze:0>,
    <chisel:block_charcoal:0>,
    <chisel:block_coal:0>,
    <chisel:block_coal_coke:0>,
    <chisel:blockcopper:0>,
    <chisel:blockinvar:0>,
    <chisel:blocklead:0>,
    <chisel:blocknickel:0>,
    <chisel:blockplatinum:0>,
    <chisel:blocksilver:0>,
    <chisel:blocktin:0>,
    <chisel:blockuranium:0>

    ] as IItemStack[];

val thingsToUnify = [
    "Tin",
    "Copper",
    "Silver",
    "Lead",
    "Aluminum",
    "Nickel",
    "Platinum",
    "Iridium",
    "Steel",
    "Electrum",
    "Invar",
    "Bronze",
    "Constantan",
    "Coke",
    "Charcoal",
    "FuelCoke",
    "Uranium",
    "Iron"
    ] as string[];

val prefixes = [
    "ore",
    "nugget",
    "ingot",
    "block",
    "dust",
    "fuel",
    "gear",
    "plate"
    ] as string[];

for material in thingsToUnify {
    for target in prefixes {
        val oreDictName = target ~ material;
        val itemList = oreDict[oreDictName];
        for item in itemList.items {
            if (thingsToKeep has item) continue;
            mods.jei.JEI.removeAndHide(item);
        }
    }
}

print("Initialized 02_unifier.zs");