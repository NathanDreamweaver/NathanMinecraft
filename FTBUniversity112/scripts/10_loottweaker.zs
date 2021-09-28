#Name:10_loottweaker.zs
#Author: Feed the Beast and aaronhowser1

print("Initializing 10_loottweaker.zs");

var itemsToRemove = [
    "ic2:bronze_boots",
    "ic2:bronze_leggings",
    "ic2:bronze_chestplate",
    "ic2:bronze_helmet",
    "ic2:ingot:2",
    "ic2:ingot:6",
    "ic2:bronze_sword",
    "ic2:bronze_pickaxe"
] as string[];

for item in itemsToRemove {
    mods.ltt.LootTable.removeGlobalItem(item);
}

print("Initialized 10_loottweaker.zs");
