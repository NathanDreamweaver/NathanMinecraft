#Name:03_removals.zs
#Author: Feed The Beast and aaronhowser1

import mods.jei.JEI.removeAndHide;
import crafttweaker.item.IItemStack;

print("Initializing 03_removals.zs");

#Extended Crafting
removeAndHide(<extendedcrafting:crafting_table>);          #Decorative crafting table
removeAndHide(<extendedcrafting:material:36>);             #Ender Ingot
removeAndHide(<extendedcrafting:material:37>);             #Ender Nugget
removeAndHide(<extendedcrafting:material:48>);             #Enhanced Ender Ingot
removeAndHide(<extendedcrafting:material:49>);             #Enhanced Ender Nugget
removeAndHide(<extendedcrafting:material:128>);            #Diamond Nuget
removeAndHide(<extendedcrafting:material:129>);            #Emerald Nugget
removeAndHide(<extendedcrafting:storage:7>);               #Block of Enhanced Ender
removeAndHide(<extendedcrafting:storage:5>);               #Block of Ender

#Avaritia
removeAndHide(<avaritia:compressed_crafting_table>);       #Compressed Crafting Table
removeAndHide(<avaritia:double_compressed_crafting_table>);#Double Compressed Crafting Table
removeAndHide(<avaritia:extreme_crafting_table>);          #Extreme Crafting Table
removeAndHide(<avaritia:singularity:*>);                   #Singularities
removeAndHide(<avaritia:neutronium_compressor>);           #Neutronium Compressor

#Charm
removeAndHide(<charm:rotten_flesh_block>);                 #Rotten Flesh Block

#Extra Utilities 2
recipes.remove(<extrautils2:bagofholding>);                             #Bag of Holding
removeAndHide(<extrautils2:sickle_wood>);                  #Wood Sickle
removeAndHide(<extrautils2:sickle_stone>);                 #Stone Sickle
removeAndHide(<extrautils2:sickle_iron>);                  #Iron Sickle
removeAndHide(<extrautils2:sickle_gold>);                  #Gold Sickle
removeAndHide(<extrautils2:sickle_diamond>);               #Diamond Sickle

#Thermal Foundation
removeAndHide(<thermalfoundation:coin:*>);                 #Coins
removeAndHide(<thermalfoundation:meter>);                  #Multimeter
removeAndHide(<thermalfoundation:upgrade:*>);              #Upgrade Kits
removeAndHide(<thermalfoundation:security>);               #Signalum Security Lock
removeAndHide(<thermalfoundation:diagram_redprint>);       #Redprint
removeAndHide(<thermalfoundation:tome_lexicon>);           #Forge Lexicon
removeAndHide(<thermalfoundation:bait:*>);                 #Aqua Chow
removeAndHide(<thermalfoundation:material:512>);           #Redstone Servo
removeAndHide(<thermalfoundation:material:513>);           #Redstone Reception Coil
removeAndHide(<thermalfoundation:material:514>);           #Redstone Transmission Coil
removeAndHide(<thermalfoundation:material:515>);           #Redstone Conductance Coil
removeAndHide(<thermalfoundation:material:640>);           #Tool Casing
removeAndHide(<thermalfoundation:material:656>);           #Drill Head
removeAndHide(<thermalfoundation:material:657>);           #Saw Blade
removeAndHide(<thermalfoundation:material:1028>);          #Mana Dust
removeAndHide(<thermalfoundation:material:72>);            #Pulverized Mana Infused Metal
removeAndHide(<thermalfoundation:material:136>);           #Mana Infused Ingot
removeAndHide(<thermalfoundation:material:200>);           #Mana Infused Nugget
removeAndHide(<thermalfoundation:geode>);                  #Geode
removeAndHide(<thermalfoundation:material:326>);           #Platinum Plate
removeAndHide(<thermalfoundation:material:328>);           #Mana Infused Plate
removeAndHide(<thermalfoundation:material:354>);           #Invar Plate
removeAndHide(<thermalfoundation:material:357>);           #Signalum Plate
removeAndHide(<thermalfoundation:material:358>);           #Lumium Plate
removeAndHide(<thermalfoundation:material:359>);           #Enderium Plate
removeAndHide(<thermalfoundation:material:24>);            #Iron Gear
removeAndHide(<thermalfoundation:material:25>);            #Gold Gear
removeAndHide(<thermalfoundation:material:26>);            #Diamond Gear
removeAndHide(<thermalfoundation:material:27>);            #Emerald Gear
removeAndHide(<thermalfoundation:material:258>);           #Silver Gear
removeAndHide(<thermalfoundation:material:259>);           #Lead Gear
removeAndHide(<thermalfoundation:material:260>);           #Aluminum Gear
removeAndHide(<thermalfoundation:material:261>);           #Nickel Gear
removeAndHide(<thermalfoundation:material:262>);           #Platinum Gear
removeAndHide(<thermalfoundation:material:263>);           #Iridium Gear
removeAndHide(<thermalfoundation:material:264>);           #Mana Infused Gear
removeAndHide(<thermalfoundation:material:289>);           #Electrum Gear
removeAndHide(<thermalfoundation:material:290>);           #Invar Gear
removeAndHide(<thermalfoundation:material:292>);           #Constantan Gear
removeAndHide(<thermalfoundation:material:293>);           #Signalum Gear
removeAndHide(<thermalfoundation:material:294>);           #Lumium Gear
removeAndHide(<thermalfoundation:material:295>);           #Enderium Gear
removeAndHide(<thermalfoundation:material:800>);           #Sawdust
removeAndHide(<thermalfoundation:material:801>);           #Compressed Sawdust
removeAndHide(<thermalfoundation:material:832>);           #Rosin
removeAndHide(<thermalfoundation:material:865>);           #Rich Slag

#ProjectRed
removeAndHide(<projectred-core:resource_item:104>);        #Electrotine Alloy Ingot
removeAndHide(<projectred-core:resource_item:105>);        #Electrotine
removeAndHide(<projectred-core:resource_item:252>);        #Electrotine Iron Compound
removeAndHide(<projectred-core:resource_item:312>);        #Electrotine Silicon Compound
removeAndHide(<projectred-core:resource_item:342>);        #Electro Silicon
removeAndHide(<projectred-core:resource_item:200>);        #Ruby
removeAndHide(<projectred-core:resource_item:201>);        #Sapphire
removeAndHide(<projectred-core:resource_item:202>);        #Peridot
removeAndHide(<projectred-core:resource_item:400>);        #Copper Coil
removeAndHide(<projectred-core:resource_item:401>);        #Iron Coil
removeAndHide(<projectred-core:resource_item:402>);        #Gold Coil
removeAndHide(<projectred-core:resource_item:410>);        #Motor
removeAndHide(<projectred-core:resource_item:420>);        #Woven Cloth
removeAndHide(<projectred-core:resource_item:421>);        #Sail
removeAndHide(<projectred-core:resource_item:600>);        #Null-Logic Routing Chip
removeAndHide(<projectred-core:drawplate>);                #Drawplate
removeAndHide(<projectred-transmission:wire:34>);          #Low Load Power Line
removeAndHide(<projectred-transmission:framed_wire:34>);   #Framed Low Load Power Line

#AE2
removeAndHide(<appliedenergistics2:material:40>);          #Wooden Gear

#EnderIO
removeAndHide(<enderio:item_material:9>);                  #Wooden Gear
removeAndHide(<enderio:item_material:10>);                 #Stone Compound Gear

#Immersive Engineering
removeAndHide(<immersiveengineering:material:2>);          #Steel Rod
removeAndHide(<immersiveengineering:material:1>);          #Iron Rod

#EnderIO Endergy
removeAndHide(<enderio:block_alloy_endergy:4>);            #Crystalline Pink Slime Block
removeAndHide(<enderio:item_alloy_endergy_ingot:4>);       #Crystalline Pink Slime Ingot
removeAndHide(<enderio:item_alloy_endergy_nugget:4>);      #Crystalline Pink Slime Nugget
removeAndHide(<enderio:item_alloy_endergy_ball:4>);        #Crystalline Pink Slime Grinding Ball
removeAndHide(<enderio:item_endergy_conduit:9>);           #Crystalline Pink Slime Energy Conduit

#TheOneProbe
removeAndHide(<theoneprobe:probe>);                        #The One Probe
removeAndHide(<theoneprobe:creativeprobe>);                #Creative Probe
removeAndHide(<theoneprobe:probenote>);                    #The One Probe Read Me
removeAndHide(<theoneprobe:diamond_helmet_probe>);         #Diamond Helmet With Probe
removeAndHide(<theoneprobe:gold_helmet_probe>);            #Gold Helmet With Probe
removeAndHide(<theoneprobe:iron_helmet_probe>);            #Iron Helmet With Probe
removeAndHide(<theoneprobe:probe_goggles>);                #The One Probe (Bauble)

#WCT2
recipes.removeByRecipeName("ae2wtlib:booster_card_old");                #Infinity Booster Card

#Random Dusts
removeAndHide(<immersiveengineering:metal:17>);
removeAndHide(<libvulpes:productdust:6>);

#Armors, chosen by which look the coolest
removeAndHide(<thermalfoundation:armor.helmet_steel>);
removeAndHide(<thermalfoundation:armor.plate_steel>);
removeAndHide(<thermalfoundation:armor.legs_steel>);
removeAndHide(<thermalfoundation:armor.boots_steel>);
removeAndHide(<mekanismtools:bronzehelmet>);
removeAndHide(<mekanismtools:bronzechestplate>);
removeAndHide(<mekanismtools:bronzeleggings>);
removeAndHide(<mekanismtools:bronzeboots>);
removeAndHide(<mekanismtools:steelhelmet>);
removeAndHide(<mekanismtools:steelchestplate>);
removeAndHide(<mekanismtools:steelleggings>);
removeAndHide(<mekanismtools:steelboots>);
removeAndHide(<ic2:bronze_helmet>);
removeAndHide(<ic2:bronze_chestplate>);
removeAndHide(<ic2:bronze_leggings>);
removeAndHide(<ic2:bronze_boots>);

#Tools
removeAndHide(<mekanismtools:steelpickaxe>);
removeAndHide(<mekanismtools:steelaxe>);
removeAndHide(<mekanismtools:steelshovel>);
removeAndHide(<mekanismtools:steelhoe>);
removeAndHide(<mekanismtools:steelsword>);
removeAndHide(<immersiveengineering:pickaxe_steel>);
removeAndHide(<immersiveengineering:shovel_steel>);
removeAndHide(<immersiveengineering:axe_steel>);
removeAndHide(<immersiveengineering:sword_steel>);

removeAndHide(<mysticalworld:copper_axe>);
removeAndHide(<mysticalworld:copper_hoe>);
removeAndHide(<mysticalworld:copper_pickaxe>);
removeAndHide(<mysticalworld:copper_shovel>);
removeAndHide(<mysticalworld:copper_sword>);

removeAndHide(<ic2:bronze_axe>);
removeAndHide(<ic2:bronze_hoe>);
removeAndHide(<ic2:bronze_pickaxe>);
removeAndHide(<ic2:bronze_shovel>);
removeAndHide(<ic2:bronze_sword>);
removeAndHide(<mekanismtools:bronzepickaxe>);
removeAndHide(<mekanismtools:bronzeaxe>);
removeAndHide(<mekanismtools:bronzeshovel>);
removeAndHide(<mekanismtools:bronzehoe>);
removeAndHide(<mekanismtools:bronzesword>);

removeAndHide(<mysticalworld:silver_axe>);
removeAndHide(<mysticalworld:silver_hoe>);
removeAndHide(<mysticalworld:silver_pickaxe>);
removeAndHide(<mysticalworld:silver_shovel>);
removeAndHide(<mysticalworld:silver_sword>);

#Energy Converters
removeAndHide(<energyconverters:energy_producer_rf>);
removeAndHide(<energyconverters:energy_consumer_rf>);

#QMD
<ore:dustTitanium>.remove(<qmd:dust:3>);
removeAndHide(<qmd:dust:3>);
<ore:ingotTitanium>.remove(<qmd:ingot:3>);
removeAndHide(<qmd:ingot:3>);
<ore:dustOsmium>.remove(<qmd:dust:8>);
removeAndHide(<qmd:dust:8>);
<ore:ingotOsmium>.remove(<qmd:ingot:8>);
removeAndHide(<qmd:ingot:8>);

#Storage Drawers
removeAndHide(<storagedrawers:tape>);

#JAOPCA
var jaopca = [
    <jaopca:item_coinlithium>,
    <jaopca:item_coinboron>,
    <jaopca:item_coinmagnesium>,
    <jaopca:item_coinosmium>,
    <jaopca:item_cointhorium>,
    <jaopca:item_cointitanium>,
    <jaopca:item_coinuranium>,

    <jaopca:item_geartopaz>,
    <jaopca:item_geartanzanite>,
    <jaopca:item_gearsapphire>,
    <jaopca:item_gearruby>,
    <jaopca:item_gearquartz>,
    <jaopca:item_gearperidot>,
    <jaopca:item_gearmalachite>,
    <jaopca:item_gearlapis>,
    <jaopca:item_gearenderbiotite>,
    <jaopca:item_geardimensionalshard>,
    <jaopca:item_geardilithium>,
    <jaopca:item_gearcoal>,
    <jaopca:item_gearchargedcertusquartz>,
    <jaopca:item_gearcertusquartz>,
    <jaopca:item_gearapatite>,
    <jaopca:item_gearamethyst>,
    <jaopca:item_gearamber>,
    <jaopca:item_gearosmium>,
    <jaopca:item_gearthorium>,
    <jaopca:item_gearmagnesium>,
    <jaopca:item_gearlithium>,
    <jaopca:item_gearboron>,

    <jaopca:item_platetopaz>,
    <jaopca:item_platetanzanite>,
    <jaopca:item_platesapphire>,
    <jaopca:item_plateruby>,
    <jaopca:item_platequartz>,
    <jaopca:item_plateperidot>,
    <jaopca:item_platemalachite>,
    <jaopca:item_plateenderbiotite>,
    <jaopca:item_plateemerald>,
    <jaopca:item_platedimensionalshard>,
    <jaopca:item_platedilithium>,
    <jaopca:item_platediamond>,
    <jaopca:item_platecoal>,
    <jaopca:item_platechargedcertusquartz>,
    <jaopca:item_platecertusquartz>,
    <jaopca:item_plateapatite>,
    <jaopca:item_plateamethyst>,
    <jaopca:item_plateamber>,
    <jaopca:item_platethorium>,
    <jaopca:item_plateosmium>,
    <jaopca:item_platemagnesium>,
    <jaopca:item_platelithium>,
    <jaopca:item_plateboron>,

    <jaopca:item_sticktopaz>,
    <jaopca:item_sticktanzanite>,
    <jaopca:item_sticksapphire>,
    <jaopca:item_stickruby>,
    <jaopca:item_stickquartz>,
    <jaopca:item_stickperidot>,
    <jaopca:item_stickmalachite>,
    <jaopca:item_sticklapis>,
    <jaopca:item_stickenderbiotite>,
    <jaopca:item_stickemerald>,
    <jaopca:item_stickdimensionalshard>,
    <jaopca:item_stickdilithium>,
    <jaopca:item_stickdiamond>,
    <jaopca:item_stickchargedcertusquartz>,
    <jaopca:item_stickcoal>,
    <jaopca:item_stickcertusquartz>,
    <jaopca:item_stickapatite>,
    <jaopca:item_stickamethyst>,
    <jaopca:item_stickamber>,
    <jaopca:item_stickuranium>,
    <jaopca:item_sticktin>,
    <jaopca:item_stickthorium>,
    <jaopca:item_sticksilver>,
    <jaopca:item_stickplatinum>,
    <jaopca:item_stickosmium>,
    <jaopca:item_sticknickel>,
    <jaopca:item_stickmithril>,
    <jaopca:item_stickmagnesium>,
    <jaopca:item_sticklithium>,
    <jaopca:item_sticklead>,
    <jaopca:item_stickgold>,
    <jaopca:item_stickboron>,
    
    <jaopca:item_platedensetopaz>,
    <jaopca:item_platedensetanzanite>,
    <jaopca:item_platedensesapphire>,
    <jaopca:item_platedenseruby>,
    <jaopca:item_platedensequartz>,
    <jaopca:item_platedenseperidot>,
    <jaopca:item_platedensemalachite>,

    <jaopca:item_platedenseenderbiotite>,
    <jaopca:item_platedenseemerald>,
    <jaopca:item_platedensedimensionalshard>,
    <jaopca:item_platedensedilithium>,
    <jaopca:item_platedensediamond>,
    <jaopca:item_platedensechargedcertusquartz>,
    <jaopca:item_platedensecoal>,
    <jaopca:item_platedensecertusquartz>,
    <jaopca:item_platedenseapatite>,
    <jaopca:item_platedenseamethyst>,
    <jaopca:item_platedenseamber>,
    <jaopca:item_platedenseuranium>,
    <jaopca:item_platedensethorium>,
    <jaopca:item_platedensesilver>,
    <jaopca:item_platedenseplatinum>,
    <jaopca:item_platedenseosmium>,
    <jaopca:item_platedensenickel>,
    <jaopca:item_platedensemithril>,
    <jaopca:item_platedensemagnesium>,
    <jaopca:item_platedenselithium>,
    <jaopca:item_platedenseboron>
] as IItemStack[];
for item in jaopca {
    removeAndHide(item);
}

print("Initialized 03_removals.zs");