#Name: 09_moresmore_craft.zs
#Author: eutropius225

import crafttweaker.item.IItemStack;

print("Initializing 09_moresmore_craft");

var smingots as IItemStack[] = [
    <nuclearcraft:foursmore>,
    <contenttweaker:eightsmore>,
    <contenttweaker:sixteensmore>,
    <contenttweaker:thirtytwosmore>,
    <contenttweaker:sixtyfoursmore>
] as IItemStack[];

var i = 1;
while i < smingots.length {
    var inSmingot = smingots[i - 1];
    var outSmingot = smingots[i];

    recipes.addShaped(outSmingot.definition.id.replaceAll(":", "_"), outSmingot,
        [[inSmingot, <nuclearcraft:milk_chocolate>],
         [<nuclearcraft:marshmallow>, inSmingot]]
    );

    i += 1;
}

for smingot in smingots{
    smingot.addTooltip("By eutropius225");
}

print("Initialized 09_moresmore_craft");