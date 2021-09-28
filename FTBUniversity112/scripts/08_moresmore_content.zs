#loader contenttweaker

#Name: 08_moresmore_content.zs
#Author: eutropius225

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.potions.IPotion;

print("Initializing 08_moresmore_content");

var smingots as string[] = [
    "eightsmore",
    "sixteensmore",
    "thirtytwosmore",
    "sixtyfoursmore"
] as string[];

function getItemFoodEaten(duration as int) as IItemFoodEaten {
    return function(stack, world, player) {
        var potions = [ /* These can't resolve when the script is run, so resolve them within the function. */
            <potion:minecraft:absorption>,
            <potion:minecraft:speed>,
            <potion:minecraft:haste>
        ] as IPotion[];
        for potion in potions {
            player.addPotionEffect(potion.makePotionEffect(duration, 1));
        }
    } as IItemFoodEaten;
}

var heal = 44;
var saturation = 8.6 as float;
var potionDuration = 1200;

for smingot in smingots {
    heal = (heal * 2) + 4;
    saturation = (saturation * 2) + 1;
    potionDuration = potionDuration * 2;

    var foodRep = VanillaFactory.createItemFood(smingot, heal);
    foodRep.saturation = saturation;
    foodRep.onItemFoodEaten = getItemFoodEaten(potionDuration);

    foodRep.register();
}

print("Initialized 08_moresmore_content");