#Name: 07_info_pages.zs
#Author: aaronhowser1 and Feed the Beast

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


print("Initializing 07_info_pages");

JEI.addDescription(<ic2:misc_resource:2>,"Found in dungeon chests."," "," ", "Recommended to create more using UU Matter");

JEI.addDescription(<thaumcraft:void_seed>,"Dropped by collapsing Flux Rifts, or the Void Siphon");
JEI.addDescription(<thaumcraft:primordial_pearl>,"Rarely dropped by collapsing Flux Rifts", " ", " ", "Have limited uses");

JEI.addDescription(<rats:tiny_coin>,"Dropped by Rats with the Aristoc-Rat Upgrade");

JEI.addDescription(<rats:arcane_technology>, "Dropped by the Ratlantean Automaton");
JEI.addDescription(<rats:ancient_sawblade>, "Dropped by the Ratlantean Automaton");
JEI.addDescription(<rats:ratlantean_flame>, "Dropped by the Ratlantean Spirits");
JEI.addDescription(<rats:feral_rat_claw>, "Dropped by Feral Ratlanteans");
JEI.addDescription(<rats:rat_toga>, "Dropped by Feral Ratlanteans");
JEI.addDescription(<rats:marbled_cheese_rat_head>, "Rare drop from Feral Ratlanteans");
JEI.addDescription(<rats:psionic_rat_brain>, "Dropped by the Neo-Ratlantean"," "," ","Summon it by throwing a Vial of Consciousness at a Feral Ratlantean");

JEI.addDescription([<avaritia:resource:2>,<avaritia:neutron_collector>], "Every 7111 ticks, the Neutron Collector produces 1 Pile of Neutrons");

JEI.addDescription(<mahoutsukai:scroll_projection>,"Use on a dropped weapon/tool, then use again to create a copy of it that has low durability"," ","Drains 100 mana for each cast"," ","Diamond + Diamond + Quartz"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_treasury_projection>,"Gives a Gauntlet that summons portals that shoot projectiles that match weapons in your inventory, Ender Chests, or certain modded bags"," ","These weapons are not actually removed from your inventory, nor may they be picked up from the ground"," ","The scroll drains 1000 mana, and each weapon projected drains 120 mana"," ","Eye + Diamond + Diamond"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:treasury_projection_gauntlet>,"Summons portals that shoot weapons in your inventory, Ender Chests, or certain modded bags"," ","These weapons are not actually removed from your inventory, nor may they be picked up from the ground"," ","Each weapon projected drains 120 mana"," ","Given by the Scroll of the Treasury Projection Gauntlet");
JEI.addDescription(<mahoutsukai:scroll_weapon_shooter>,"Gives the Bow of Weapon Projectiles, which allows you to shoot tools and weapons as projectiles"," ","Drains 100 mana on use"," ","Gold + Diamond + Diamond"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:weapon_projectile_bow>,"Shoots tools and weapons in your inventory as projectiles"," ","Does not drain mana"," ","Given by the Scroll of Weapon Projectiles");
JEI.addDescription(<mahoutsukai:scroll_strengthening>,"Temporarily increases the damage and mining level of the first item in the hotbar, as well as making it unbreakable"," ","Drains 50 Mana on casting"," ","Diamond + Diamond + Iron"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_proximity_projection>,"Gives Crimson Black Keys of Proximity Projection, which teleports you to distant mobs you attempt to attack"," ","Drains 160 mana on casting"," ","Diamond + Diamond + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:proximity_projection_keys>,"When aiming at a distant mob, attack to teleport to it"," ","Does not drain mana"," ","Given by the Scroll of Proximity Projection");
JEI.addDescription(<mahoutsukai:scroll_reality_marble>,"Teleports the user to the Reality Marble, a desert dimension of swords"," ","If the user was aiming at a mob, whichever kills the other is teleported back to where they were"," ","Otherwise, the user is teleported back by taking damage (especially suffocation)"," ","Diamond + Diamond + Diamond"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_projectile_displacement>,"Teleports the user to where their most recent arrow landed"," ","Drains 50 mana per teleport"," ","Diamond + Ender + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_ascension>,"As a circle, teleports any entity on it to the highest block in that x and z"," ","As a scroll, teleports the user to the highest block in their x and z"," ","Drains 30 mana per teleport"," ","Gold + Ender + Ender");
JEI.addDescription(<mahoutsukai:scroll_mental_displacement>,"Allows the user to astral project"," ","Drains 300 mana per cast"," ","Quartz + Ender + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_protective_displacement>,"Randomly teleports the user when they would otherwise be shot by an arrow"," ","Drains 50 mana per teleport, has finite uses"," ","Iron + Ender + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_damage_exchange>,"When used, the caster will convert damage taken into mana (has limited uses)"," ","Drains 40 mana on casting"," ","Iron + Emerald + Emerald"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_mystic_staff>,"Summons a Staff that, after a long chargeup time, creates a large explosion"," ","Sneak click to toggle between single large explosion, multiple small explosion, and beam modes"," ","The scroll drains 100 mana, the large explosion drains 5000 mana, the small explosions drain 600 mana, and the beam drains 500 mana per tick"," ","Gold + Gold + Diamond"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:mystic_staff>,"Sneak click to toggle between single large explosion, multiple small explosion, and beam modes"," ","The large explosion drains 5000 mana, the small explosions drain 600 mana, and the beam drains 500 mana per tick"," ","Given by the Scroll of Explosive Mana Condensation");
JEI.addDescription(<mahoutsukai:scroll_prediction>,"When used, the caster will see the current path of certain mobs"," ","Drains 220 mana on casting"," ","Eye + Eye + Quartz"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_borrowed_authority>,"Increases the caster's speed and power, allowing mobs to be punched so hard they go through blocks"," ","Drains 900 mana on use"," ","Gold + Gold + Gold"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_rho_aias>,"Creates a large shield in the direction the caster is facing, repelling mobs and deleting projectiles, as well as allowing the caster to bounce on it by sneaking"," ","Drains 300 mana on casting"," "," "," "," ");
JEI.addDescription(<mahoutsukai:scroll_damage_replication>,"When used on a mob/player, damage dealt and effects given to the caster will also be given to the target"," ","Drains 160 mana on casting"," ","Gold + Gold + Emerald"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_spatial_disorientation>,"Summons a Staff that, when used on an entity, allows the caster to launch them in the direction they are looking"," ","The scroll drains 100 mana, using the staff on an entity drains 200 mana, and using it on a block drains 20 mana per second"," ","Gold + Gold + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:spatial_disorientation_gauntlet>,"When used on an entity, allows the caster to launch them in the direction they are looking"," ","On an entity, drains 200 mana","On a block, drains 20 mana per second"," ","Gold + Gold + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_cup_of_heaven>,"Place several of these on the ground; the shape of which decides what negative effects"," ","Very complex, see Knowledge Compendium"," ","Variable mana cost"," ","Gold + Gold + Quartz");
JEI.addDescription(<mahoutsukai:scroll_mystic_eyes>,"When used, freezes entities that make eye contact with the caster, until eye contact is broken"," ","Drains 320 mana on use"," ","Eye + Eye + Gold");
JEI.addDescription(<mahoutsukai:scroll_summon_familiar>,"When used, summons a familiar that will report on interesting blocks and entities that it sees, as well as loading its chunk"," ","Drains 200 mana on casting"," ","Quartz + Quartz + Quartz"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_recall_familiar>,"When used, teleports the caster's familiar to them"," ","Drains 20 mana on casting"," ","Quartz + Quartz + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_immunity_exchange>,"When used (on self if not aimed at an entity), the target will take no damage from repeated sources, but will take double damage from new sources"," ","Drains 400 mana on casting"," ","Eye + Emerald + Emerald"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_familiars_garden>,"When used while a familiar is active, the familiar will activate its \"garden\" "," ","Entities in the garden will not be able to harm each other"," ","Drains 200 mana on casting"," ","Quartz + Quartz + Iron", " ", "Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_possess_entity>,"When used on a mob/player, the caster will see through their eyes"," ","Drains 200 mana on casting"," ","Gold + Quartz + Quartz"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_swap_familiar>,"When used, swaps the caster's position with their familiar's"," ","Drains 40 mana on casting"," ","Quartz + Quartz + Emerald"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_death_collection>,"When used, the caster begins to collect the souls of entities they see die"," ","When a certain amount of souls is reached, they can be spent to prevent the caster's death once"," ","Drains 400 mana on casting"," ","Eye + Eye + Iron"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_reversion_eyes>,"When used, entities the caster looks at will lose all potion buffs, as well as certain natural immunities (water breathing, fire resistance, etc)"," ","Drains 410 mana on casting"," ","Eye + Eye + Emerald"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_fay_sight>,"Allows the caster to see Leylines and the Fae"," ","Drains 100 mana on casting"," ","Eye + Eye + Eye"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_insight>,"Allows the caster to see certain information about the block/entity they are looking at, such as their inventory and health"," ","Drains 320 mana on casting"," ","Eye + Eye + Ender"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_black_flame>,"When used, shoots black flames from the block the caster is looking at, dealing wither damage to anything it touches"," ","Drains 300 mana on casting"," ","Eye + Eye + Diamond"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:scroll_boundary_raise_enclosure>,"Raises blocks on the outer edge of a 9x9 area to build a 4 high wall"," ","Drains 20 mana per layer raised"," ","Iron + Iron + Iron");
JEI.addDescription(<mahoutsukai:scroll_boundary_alarm>,"Says in chat if a mob enters a 10 radius area"," ","Drains 1 mana every 10 seconds"," ","Iron + Iron + Quartz");
JEI.addDescription(<mahoutsukai:scroll_boundary_displacement>,"Teleports mobs that enter a 10 radius area to the opposite side of the area"," ","Drains 1 mana every 5 seconds"," ","Iron + Iron + Ender");
JEI.addDescription(<mahoutsukai:scroll_boundary_drain_life>,"Drains health from mobs in a 10 radius area, restoring (in order) health, hunger, or mana to the owner"," ","Drains 5 mana every second"," ","Iron + Iron + Emerald");
JEI.addDescription(<mahoutsukai:scroll_boundary_gravity>,"Increases the gravity of everything but the owner in a 10 radius area"," ","Drains 1 mana every 2 seconds"," ","Gold + Iron + Iron");
JEI.addDescription(<mahoutsukai:scroll_boundary_tangible>,"Blocks everything but the owner from passing through the outer edge of a 20x20 area"," ","Drains 1 mana every 3 seconds"," ","Diamond + Iron + Iron");
JEI.addDescription(<mahoutsukai:scroll_retribution>,"When used on an entity, exchanges the health percentage of the caster with the health percentage of the target"," ","Drains 40 times the difference in health points in mana"," ","Diamond + Iron + Emerald"," ","Must be used as a scroll");
JEI.addDescription(<mahoutsukai:caliburn>,"Causes the undead to flee"," ","Given by the Blood Circle of Power Consolidation"," ","Its damage is based on the amount of damage the sacrificed sword would deal to the undead");
JEI.addDescription(<mahoutsukai:fae_essence>,"Dropped by Fae after death, you monster");

JEI.addDescription(<mowziesmobs:wrought_axe>,"Dropped by Ferrous Wroughtnaut, which spawn in special dungeons");
JEI.addDescription(<mowziesmobs:wrought_helmet>,"Dropped by Ferrous Wroughtnaut, which spawn in special dungeons");
JEI.addDescription(<mowziesmobs:barako_mask>,"Dropped by Barako, which spawn in special Savannah structures");
JEI.addDescription([<mowziesmobs:barakoa_mask_fury>,<mowziesmobs:barakoa_mask_fear>,<mowziesmobs:barakoa_mask_rage>,<mowziesmobs:barakoa_mask_bliss>,<mowziesmobs:barakoa_mask_misery>],"Dropped by Barakoa, which spawn in Savannahs"," ","Wearing makes Barakoa non-hostile"," ","Can trade with friendly Barakoa, if in a Barakoa village");
JEI.addDescription(<mowziesmobs:foliaath_seed>,"Dropped by Foliaaths, which spawn in Jungles");
JEI.addDescription([<mowziesmobs:spear>,<mowziesmobs:blowgun>,<mowziesmobs:dart>],"Can be bought from Barakoa villages");
JEI.addDescription(<mowziesmobs:grant_suns_blessing>,"Not actually an item, must be bought from Barako");
JEI.addDescription(<mowziesmobs:glowing_jelly>,"Dropped by Lanterns, which spawn in Roofed Forest biomes");
JEI.addDescription(<mowziesmobs:ice_crystal>,"Dropped by Frostmaws, which spawn in snowy biomes");
JEI.addDescription(<mowziesmobs:naga_fang>,"Dropped by Naga, which spawn where mountains meet oceans");
JEI.addDescription(<mowziesmobs:captured_grottol>,"Dropped by Grotol (which spawn underground), when killed using Silk Touch");
JEI.addDescription(<mowziesmobs:earth_talisman>,"Cannot be obtained normally");

JEI.addDescription(<deepmoblearning:soot_covered_redstone>,"Left-click a Block of Coal while holding Redstone dust");
JEI.addDescription([<deepmoblearning:glitch_heart>,<deepmoblearning:glitch_fragment>],"Left-click Obsidian while holding a Corrupted Glitch Heart to get 3 Unstable Glitch Fragments");

JEI.addDescription(<bloodmagic:blood_rune:1>, "Makes the Blood Altar work faster");
JEI.addDescription(<bloodmagic:blood_rune:2>, "Makes the Blood Altar use less LP");
JEI.addDescription(<bloodmagic:blood_rune:3>, "Gives the Blood Altar more LP when sacrificing others");
JEI.addDescription(<bloodmagic:blood_rune:4>, "Gives the Blood Altar more LP when sacrificing yourself");
JEI.addDescription(<bloodmagic:blood_rune:5>, "Allows for faster LP insertion/extraction");
JEI.addDescription(<bloodmagic:blood_rune:6>, "Increases the Blood Altar's max LP by 2000");
JEI.addDescription(<bloodmagic:blood_rune:7>, "Increases the Blood Altar's max LP by 10%%"," ","This is multiplicative: the more you have, the better they work"," ","The bonus is applied before Runes of Capacity");
JEI.addDescription(<bloodmagic:blood_rune:8>, "Increases the max LP in your Soul Network by 2%% of its original value"," ","This works better the higher tier Orb you use");
JEI.addDescription(<bloodmagic:blood_rune:9>, "Makes the Runes of Displacement and Charging work more often"," ","With 19 Runes of Acceleration, they work every tick");
JEI.addDescription(<bloodmagic:blood_rune:10>, "Uses up some of the Altar's LP (if not in use) to build up charge"," ","When the Altar is used, it uses the built up charge instantly"," ","Each Rune holds 1000 charge, where 1 charge = 1 LP");
JEI.addDescription(<bloodmagic:sigil_divination>,"Tells the user their current LP");
JEI.addDescription(<bloodmagic:sigil_water>,"Creates a Water source block"," ","Costs 100LP");
JEI.addDescription(<bloodmagic:sigil_lava>,"Creates a Lava source block"," ","Costs 1000LP");
JEI.addDescription(<bloodmagic:sigil_air>,"Propels the user in the direction they are looking"," ","Costs 50LP");
JEI.addDescription(<bloodmagic:sigil_void>,"Voids liquids when used");
JEI.addDescription(<bloodmagic:sigil_green_grove>,"Acts like Bone Meal"," ","Costs 50LP");
JEI.addDescription(<bloodmagic:sigil_bounce>,"Gives the \"Bounce Buff\" effect, negating fall damage"," ","Costs 100LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_frost>,"While activate, gives the user Frost Walking"," ","Costs 100LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_seer>,"When used on a Blood Altar, gives you information about it");
JEI.addDescription(<bloodmagic:sigil_fast_miner>,"While active, gives the user Haste II"," ","Costs 100LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_blood_light>,"Shoots a projectile that spawns a light source"," ","Costs 10LP");
JEI.addDescription(<bloodmagic:sigil_holding>,"Holds up to 5 Sigils"," ","Press H to open, scroll while sneaking to change");
JEI.addDescription(<bloodmagic:sigil_magnetism>,"While active, pulls nearby items to the user"," ","Costs 50LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_elemental_affinity>,"While active, prevents damage from falls, fire, and suffocation"," ","Costs 200LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_claw>,"While active, allows the user to stick to the side of blocks by sneaking"," ","Costs 100LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_teleposition>,"Teleports the user to the linked Teleposer"," ","Costs 1000LP");
JEI.addDescription(<bloodmagic:sigil_haste>,"While active, gives the player Boost, which acts as Speed II, Jump II, and provides a step assist"," ","Costs 250LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_suppression>,"While active, temporarily removes all fluids within a 5 block spherical radius"," ","Costs 400LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_transposition>,"Sneak right click on a block to pick it up, right click again to place it down"," ","Costs 5000LP to pick up a block");
JEI.addDescription(<bloodmagic:sigil_ender_severance>,"When active, prevents Endermen within an 11x11x11 area from teleporting"," ","Costs 200LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_compression>,"Scans your inventory for items that have a 9x9 crafting recipe of themselves (think ingots), then crafts them into their block form"," ","Costs 200LP every 5 seconds");
JEI.addDescription(<bloodmagic:sigil_phantom_bridge>,"While active, creates a 7x7 platform beneath you, which follows you"," ","These blocks disappear if you leave"," ","Costs 100LP every 5 seconds");
JEI.addDescription(<bloodmagic:blood_shard:0>,"Has a chance of dropping from mobs killed with an activate Bound Sword");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.health"}),"Increases your maximum health"," ","Levels by healing");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.stepAssist"}),"Provides step assist"," ","Levels by moving with Step Assist effect, ie from Sigil of Haste");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.elytra"}),"Hold jump mid-air to glide"," ","Combine a Book with an Elytra in an Anvil");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.arrowShot"}),"Bows shoot an additional arrow per level"," ","Levels by shooting arrows");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.selfSacrifice"}),"Increases LP from self-sacrifice"," ","Levels by sacrificing yourself");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.fireResist"}),"Provides fire resistance with a cooldown"," ","Levels by taking fire damage");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.sprintAttack"}),"Increases attack damage and knockback while sprinting"," ","Levels by dealing damage while sprinting");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.physicalProtect"}),"Lowers incoming melee damage"," ","Levels by taking melee damage");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.solarPowered"}),"Provides health regen, fire resistance, and damage protection while under the sun"," ","Levels by regenerating health");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.movement"}),"Increases movement speed"," ","At higher levels, provides speed buff and health regen while sprinting"," ","Levels by movement on ground");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.knockback"}),"Provides knockback resistance and health"," ","Levels by eating food");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.repair"}),"Slowly repairs Living Armor"," ","Levels by allowing the Living CHestplate to take 500 durability damage while entire suit is worn");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.jump"}),"Increases jump height, decreases fall damage"," ","Levels by jumping");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.experienced"}),"Increases experience gain"," ","Levels by absorbing xp orbs");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.nightSight"}),"Increases melee damage and gives night vision in darkness"," ","Starts by having Night Vision for 5 minutes, then levels by dealing damage");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.fallProtect"}),"Reduces fall damage by 20%% per level"," ","Levels by taking fall damage");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.meleeDamage"}),"Increases melee damage"," ","Levels by dealing melee damage");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.criticalStrike"}),"Increases critical attack damage by 10%% per level"," ","Levels by dealing critical hits");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.digging"}),"Increases dig speed and provides a speed buff upon mining"," ","Levels by breaking blocks");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.poisonResist"}),"With a cooldown, removes poison"," ","Higher levels have lower cooldown, and can remove higher levels of poison"," ","Levels by having poison");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.grimReaper"}),"Prevents death, with a cooldown"," ","Higher levels lower the cooldown, and provide buffs"," ","Levels by dying repeatedly");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.graveDigger"}),"Provides bonus damage when using a shovel"," ","Levels by dealing damage with a shovel");
JEI.addDescription(<bloodmagic:item_demon_crystal>,"Made by absorbing atmospheric Will in the Demon Crystallizer");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.stormTrooper"}),"Reduces accuracy with bows");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.crippledArm"}),"Stops the wearer from using their offhand");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.quenched"}),"Stops the wearer from drinking potions");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.slowness"}),"Slows the wearer");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.slowHeal"}),"Slows health regen");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.digSlowdown"}),"Slows the wearer's mining speed");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 0, key: "bloodmagic.upgrade.slippery"}),"Makes the wearer slide, as if they were on ice");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 4, key: "bloodmagic.upgrade.battleHunger"}),"Gives the player Exhaustion every 20 ticks, lowering their saturation");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.meleeDecrease"}),"Lowers the wearer's melee damage output");
JEI.addDescription(<bloodmagic:upgrade_tome>.withTag({level: 9, key: "bloodmagic.upgrade.disoriented"}),"Every 20 ticks, has a chance to change the direction the wearer is looking");

JEI.addDescription([<minecraft:potion>.withTag({Potion: "geneticsreborn:substrate"}), <minecraft:splash_potion>.withTag({Potion: "geneticsreborn:substrate"})],"Mundane Potion + Organic Matter");
JEI.addDescription([<minecraft:potion>.withTag({Potion: "geneticsreborn:growth"}), <minecraft:splash_potion>.withTag({Potion: "geneticsreborn:growth"})],"Subtrate + Basic Gene Helix");
JEI.addDescription([<minecraft:potion>.withTag({Potion: "geneticsreborn:mutation"}), <minecraft:splash_potion>.withTag({Potion: "geneticsreborn:mutation"})],"Potion of Cell Growth + Fermented Spider Eye");
JEI.addDescription([<minecraft:potion>.withTag({Potion: "geneticsreborn:viral"}), <minecraft:splash_potion>.withTag({Potion: "geneticsreborn:viral"})],"Potion of Mutation + Chorus Fruit");

JEI.addDescription(<advancedrocketry:bucketoxygen>.withTag({Fluid: {FluidName: "oxygen", Amount: 1000}}),"A bucket of Oxygen");
JEI.addDescription(<advancedrocketry:buckethydrogen>.withTag({Fluid: {FluidName: "hydrogen", Amount: 1000}}),"A bucket of Hydrogen");
JEI.addDescription(<advancedrocketry:bucketrocketfuel>.withTag({Fluid: {FluidName: "rocketfuel", Amount: 1000}}),"A bucket of Rocket Fuel","","Made by combining Oxygen and Hydrogen in the Chemical Reactor");

JEI.addDescription(<advancedrocketry:itemupgrade:0>,"If a jetpack is installed in the chestplate then the Hover Upgrade allows the jetpack to be switched to hover mode. Installing more than one has no effect.");
JEI.addDescription(<advancedrocketry:itemupgrade:1>,"If a jetpack is installed in the chestplate then the Flight Speed Control Upgrade increases the speed at which the player flies by 0.4 m/s for each item installed.");
JEI.addDescription(<advancedrocketry:atmanalyser>,"If equipped in the spacesuit, a display in the lwer left hand corner of the screen displaying current atmosphere and breathability will be shown.","","The same information can be displayed if the item is right clicked in the world");
JEI.addDescription(<advancedrocketry:itemupgrade:4>,"If equipped in the spacesuit, it will allow you to easily see through the fog on high pressure planets.");
JEI.addDescription(<advancedrocketry:beaconfinder>,"If equipped in the spacesuit, it will display arrows at the top of the screen pointing to active beacons on the same planet.");
JEI.addDescription(<advancedrocketry:jetpack>,"Allows the player to fly in one of two modes(toggled by shift+toggle jetpack key) while consuming Hydrogen Gas during flight:",""," Normal mode: Accelerates the player upward when the jump key is held"," Hover mode: Allows the player to fly in a method similar to creative mode flight, however a Hover Upgrade must be installed in the helmet.");
JEI.addDescription(<advancedrocketry:pressuretank:0>,"Adds 1000mB of Oxygen storage to the Space Chestplate");
JEI.addDescription(<advancedrocketry:pressuretank:1>,"Adds 2000mB of Oxygen storage to the Space Chestplate");
JEI.addDescription(<advancedrocketry:pressuretank:2>,"Adds 4000mB of Oxygen storage to the Sace Chestplate");
JEI.addDescription(<advancedrocketry:pressuretank:3>,"Adds 8000mB of Oxygen storage to the Space Chestplate");
JEI.addDescription(<advancedrocketry:itemupgrade:2>,"Increases the player's running speed by 0.5 m/s per upgrade");
JEI.addDescription(<advancedrocketry:itemupgrade:3>,"Eliminates fall damage");

JEI.addItem(<minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/abandoned_mineshaft", id: "minecraft:chest"}, display: {LocName: "ct.ore.mineshaft", Lore: ["Place me!"]}}));
JEI.addItem(<minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/desert_pyramid", id: "minecraft:chest"}, display: {LocName: "ct.ore.desert", Lore: ["Place me!"]}}));
JEI.addItem(<minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/simple_dungeon", id: "minecraft:chest"}, display: {LocName: "ct.ore.dungeon", Lore: ["Place me!"]}}));
JEI.addItem(<minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/jungle_temple", id: "minecraft:chest"}, display: {LocName: "ct.ore.jungle", Lore: ["Place me!"]}}));
JEI.addItem(<minecraft:chest>.withTag({RepairCost: 0, BlockEntityTag: {LootTable: "chests/nether_bridge", id: "minecraft:chest"}, display: {LocName: "ct.ore.nether", Lore: ["Place me!"]}}));

JEI.addDescription(<charm:bat_bucket>,"Right-click a Bat with a Bucket","","Using will release the Bat, showing nearby mobs through blocks");

print("Initialized 07_info_pages");