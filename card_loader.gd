extends Node
var cards = {}
func _ready():
	cards["Fenodrae"] = preload("res://Cards/Fenodrae.tscn")
	print("Fenodrae, loaded")
	cards["Order of Valor"] = preload("res://Cards/Order of Valor.tscn")
	print("Order of Valor, loaded")
	cards["Troll Enchanter"] = preload("res://Cards/Troll Enchanter.tscn")
	print("Troll Enchanter, loaded")
	cards["Piranha"] = preload("res://Cards/Piranha.tscn")
	print("Piranha, loaded")
	cards["Samaris Sand Merchant"] = preload("res://Cards/Samaris Sand Merchant.tscn")
	print("Samaris Sand Merchant, loaded")
	cards["Living Willow"] = preload("res://Cards/Living Willow.tscn")
	print("Living Willow, loaded")
	cards["Goblin Explosion"] = preload("res://Cards/Goblin Explosion.tscn")
	print("Goblin Explosion, loaded")
	cards["Soup Time!"] = preload("res://Cards/Soup Time!.tscn")
	print("Soup Time!, loaded")
	cards["Noodle Bar"] = preload("res://Cards/Noodle Bar.tscn")
	print("Noodle Bar, loaded")
	cards["Shedim Brute"] = preload("res://Cards/Shedim Brute.tscn")
	print("Shedim Brute, loaded")
	cards["Keldran Emissary"] = preload("res://Cards/Keldran Emissary.tscn")
	print("Keldran Emissary, loaded")
	cards["Tale of the Old Turtle"] = preload("res://Cards/Tale of the Old Turtle.tscn")
	print("Tale of the Old Turtle, loaded")
	cards["Garden of the Beggars"] = preload("res://Cards/Garden of the Beggars.tscn")
	print("Garden of the Beggars, loaded")
	cards["Firewell"] = preload("res://Cards/Firewell.tscn")
	print("Firewell, loaded")
	cards["Amai Settlement"] = preload("res://Cards/Amai Settlement.tscn")
	print("Amai Settlement, loaded")
	cards["Gabrian Warden"] = preload("res://Cards/Gabrian Warden.tscn")
	print("Gabrian Warden, loaded")
	cards["Elinee's Library"] = preload("res://Cards/Elinee\'s Library.tscn")
	print("Elinee's Library, loaded")
	cards["Fraudulent Operation"] = preload("res://Cards/Fraudulent Operation.tscn")
	print("Fraudulent Operation, loaded")
	cards["Iron Axe Found!"] = preload("res://Cards/Iron Axe Found!.tscn")
	print("Iron Axe Found!, loaded")
	cards["Triton Raider"] = preload("res://Cards/Triton Raider.tscn")
	print("Triton Raider, loaded")
	cards["Fortune Hunter"] = preload("res://Cards/Fortune Hunter.tscn")
	print("Fortune Hunter, loaded")
	cards["Triton Chef"] = preload("res://Cards/Triton Chef.tscn")
	print("Triton Chef, loaded")
	cards["Moss Bringer"] = preload("res://Cards/Moss Bringer.tscn")
	print("Moss Bringer, loaded")
	cards["Might And Guts"] = preload("res://Cards/Might And Guts.tscn")
	print("Might And Guts, loaded")
	cards["Gust of Hope"] = preload("res://Cards/Gust of Hope.tscn")
	print("Gust of Hope, loaded")
	cards["Shaytan Fanatic"] = preload("res://Cards/Shaytan Fanatic.tscn")
	print("Shaytan Fanatic, loaded")
	cards["Amai Trader"] = preload("res://Cards/Amai Trader.tscn")
	print("Amai Trader, loaded")
	cards["Tiki Pathfinder"] = preload("res://Cards/Tiki Pathfinder.tscn")
	print("Tiki Pathfinder, loaded")
	cards["Stone Troll"] = preload("res://Cards/Stone Troll.tscn")
	print("Stone Troll, loaded")
	cards["Kobold Mercenary"] = preload("res://Cards/Kobold Mercenary.tscn")
	print("Kobold Mercenary, loaded")
	cards["Sandstorm"] = preload("res://Cards/Sandstorm.tscn")
	print("Sandstorm, loaded")
	cards["Kobold Barracks"] = preload("res://Cards/Kobold Barracks.tscn")
	print("Kobold Barracks, loaded")
	cards["Farmer"] = preload("res://Cards/Farmer.tscn")
	print("Farmer, loaded")
	cards["Unbearable Words"] = preload("res://Cards/Unbearable Words.tscn")
	print("Unbearable Words, loaded")
	cards["Heart of the Wood"] = preload("res://Cards/Heart of the Wood.tscn")
	print("Heart of the Wood, loaded")
	cards["Dryad Instinct"] = preload("res://Cards/Dryad Instinct.tscn")
	print("Dryad Instinct, loaded")
	cards["Void Sphere"] = preload("res://Cards/Void Sphere.tscn")
	print("Void Sphere, loaded")
	cards["Elinee's Favorite"] = preload("res://Cards/Elinee\'s Favorite.tscn")
	print("Elinee's Favorite, loaded")
	cards["Aquaria"] = preload("res://Cards/Aquaria.tscn")
	print("Aquaria, loaded")
	cards["Treasure Trove"] = preload("res://Cards/Treasure Trove.tscn")
	print("Treasure Trove, loaded")
	cards["Orb of Malevolence"] = preload("res://Cards/Orb of Malevolence.tscn")
	print("Orb of Malevolence, loaded")
	cards["Stormspawn"] = preload("res://Cards/Stormspawn.tscn")
	print("Stormspawn, loaded")
	cards["Ghost Of Erianor"] = preload("res://Cards/Ghost Of Erianor.tscn")
	print("Ghost Of Erianor, loaded")
	cards["Triton Warrior"] = preload("res://Cards/Triton Warrior.tscn")
	print("Triton Warrior, loaded")
	cards["Gabrian Order"] = preload("res://Cards/Gabrian Order.tscn")
	print("Gabrian Order, loaded")
	cards["Haunted House"] = preload("res://Cards/Haunted House.tscn")
	print("Haunted House, loaded")
	cards["Twilight Pool"] = preload("res://Cards/Twilight Pool.tscn")
	print("Twilight Pool, loaded")
	cards["Flowersilk Faerie"] = preload("res://Cards/Flowersilk Faerie.tscn")
	print("Flowersilk Faerie, loaded")
	cards["Prodigious Ballad"] = preload("res://Cards/Prodigious Ballad.tscn")
	print("Prodigious Ballad, loaded")
	cards["Gemsilk Faerie"] = preload("res://Cards/Gemsilk Faerie.tscn")
	print("Gemsilk Faerie, loaded")
	cards["Wind Gate"] = preload("res://Cards/Wind Gate.tscn")
	print("Wind Gate, loaded")
	cards["Thyrian Protector"] = preload("res://Cards/Thyrian Protector.tscn")
	print("Thyrian Protector, loaded")
	cards["Oradrim Judicator"] = preload("res://Cards/Oradrim Judicator.tscn")
	print("Oradrim Judicator, loaded")
	cards["Battle Toad"] = preload("res://Cards/Battle Toad.tscn")
	print("Battle Toad, loaded")
	cards["Tower of Fate"] = preload("res://Cards/Tower of Fate.tscn")
	print("Tower of Fate, loaded")
	cards["Morning Bliss"] = preload("res://Cards/Morning Bliss.tscn")
	print("Morning Bliss, loaded")
	cards["Edolin Sentinel"] = preload("res://Cards/Edolin Sentinel.tscn")
	print("Edolin Sentinel, loaded")
	cards["Faerializer"] = preload("res://Cards/Faerializer.tscn")
	print("Faerializer, loaded")
	cards["Flood's Caprice"] = preload("res://Cards/Flood\'s Caprice.tscn")
	print("Flood's Caprice, loaded")
	cards["Goldsilk Faerie"] = preload("res://Cards/Goldsilk Faerie.tscn")
	print("Goldsilk Faerie, loaded")
	cards["Land Renewal"] = preload("res://Cards/Land Renewal.tscn")
	print("Land Renewal, loaded")
	cards["Djidan Sagittarius"] = preload("res://Cards/Djidan Sagittarius.tscn")
	print("Djidan Sagittarius, loaded")
	cards["Kirkis Archer"] = preload("res://Cards/Kirkis Archer.tscn")
	print("Kirkis Archer, loaded")
	cards["Nature's Growth"] = preload("res://Cards/Nature\'s Growth.tscn")
	print("Nature's Growth, loaded")
	cards["Atlas Weapon"] = preload("res://Cards/Atlas Weapon.tscn")
	print("Atlas Weapon, loaded")
	cards["Thyrian Ceremonial"] = preload("res://Cards/Thyrian Ceremonial.tscn")
	print("Thyrian Ceremonial, loaded")
	cards["Warmongering"] = preload("res://Cards/Warmongering.tscn")
	print("Warmongering, loaded")
	cards["Storehouse"] = preload("res://Cards/Storehouse.tscn")
	print("Storehouse, loaded")
	cards["Servant of Alua"] = preload("res://Cards/Servant of Alua.tscn")
	print("Servant of Alua, loaded")
	cards["Swamp Wurm"] = preload("res://Cards/Swamp Wurm.tscn")
	print("Swamp Wurm, loaded")
	cards["Timebomb"] = preload("res://Cards/Timebomb.tscn")
	print("Timebomb, loaded")
	cards["Spring Mochi"] = preload("res://Cards/Spring Mochi.tscn")
	print("Spring Mochi, loaded")
	cards["Thyrian Colossus"] = preload("res://Cards/Thyrian Colossus.tscn")
	print("Thyrian Colossus, loaded")
	cards["Stained Boar"] = preload("res://Cards/Stained Boar.tscn")
	print("Stained Boar, loaded")
	cards["Earth Golem"] = preload("res://Cards/Earth Golem.tscn")
	print("Earth Golem, loaded")
	cards["Pineling"] = preload("res://Cards/Pineling.tscn")
	print("Pineling, loaded")
	cards["Mad Avenger"] = preload("res://Cards/Mad Avenger.tscn")
	print("Mad Avenger, loaded")
	cards["Flower Folk"] = preload("res://Cards/Flower Folk.tscn")
	print("Flower Folk, loaded")
	cards["Desert Twister"] = preload("res://Cards/Desert Twister.tscn")
	print("Desert Twister, loaded")
	cards["Sunlight Hope"] = preload("res://Cards/Sunlight Hope.tscn")
	print("Sunlight Hope, loaded")
	cards["Oradrim Monk"] = preload("res://Cards/Oradrim Monk.tscn")
	print("Oradrim Monk, loaded")
	cards["Syland Horseman"] = preload("res://Cards/Syland Horseman.tscn")
	print("Syland Horseman, loaded")
	cards["Ogre Battler"] = preload("res://Cards/Ogre Battler.tscn")
	print("Ogre Battler, loaded")
	cards["Baby Drosera"] = preload("res://Cards/Baby Drosera.tscn")
	print("Baby Drosera, loaded")
	cards["Meroval King's Guard"] = preload("res://Cards/Meroval King\'s Guard.tscn")
	print("Meroval King's Guard, loaded")
	cards["Kobold Guard"] = preload("res://Cards/Kobold Guard.tscn")
	print("Kobold Guard, loaded")
	cards["Alichor"] = preload("res://Cards/Alichor.tscn")
	print("Alichor, loaded")
	cards["Crusader of the Shield"] = preload("res://Cards/Crusader of the Shield.tscn")
	print("Crusader of the Shield, loaded")
	cards["Defiant Incarnation"] = preload("res://Cards/Defiant Incarnation.tscn")
	print("Defiant Incarnation, loaded")
	cards["Syland Barbarian"] = preload("res://Cards/Syland Barbarian.tscn")
	print("Syland Barbarian, loaded")
	cards["Keldran Warchief"] = preload("res://Cards/Keldran Warchief.tscn")
	print("Keldran Warchief, loaded")
	cards["Campfire"] = preload("res://Cards/Campfire.tscn")
	print("Campfire, loaded")
	cards["Wither Apostle"] = preload("res://Cards/Wither Apostle.tscn")
	print("Wither Apostle, loaded")
	cards["Lunar Mochi"] = preload("res://Cards/Lunar Mochi.tscn")
	print("Lunar Mochi, loaded")
	cards["Cursed Library"] = preload("res://Cards/Cursed Library.tscn")
	print("Cursed Library, loaded")
	cards["Forest Elemental"] = preload("res://Cards/Forest Elemental.tscn")
	print("Forest Elemental, loaded")
	cards["Tiki Weathercock"] = preload("res://Cards/Tiki Weathercock.tscn")
	print("Tiki Weathercock, loaded")
	cards["Kobold Watchtower"] = preload("res://Cards/Kobold Watchtower.tscn")
	print("Kobold Watchtower, loaded")
	cards["Desert Wyrm"] = preload("res://Cards/Desert Wyrm.tscn")
	print("Desert Wyrm, loaded")
	cards["Goblin Flamethrower"] = preload("res://Cards/Goblin Flamethrower.tscn")
	print("Goblin Flamethrower, loaded")
	cards["Kilban Lumberman"] = preload("res://Cards/Kilban Lumberman.tscn")
	print("Kilban Lumberman, loaded")
	cards["Sand Elemental"] = preload("res://Cards/Sand Elemental.tscn")
	print("Sand Elemental, loaded")
	cards["Tiki Song"] = preload("res://Cards/Tiki Song.tscn")
	print("Tiki Song, loaded")
	cards["Sunwell"] = preload("res://Cards/Sunwell.tscn")
	print("Sunwell, loaded")
	cards["Oradrim Prayer"] = preload("res://Cards/Oradrim Prayer.tscn")
	print("Oradrim Prayer, loaded")
	cards["Meroval Highborn"] = preload("res://Cards/Meroval Highborn.tscn")
	print("Meroval Highborn, loaded")
	cards["Savage Sagami"] = preload("res://Cards/Savage Sagami.tscn")
	print("Savage Sagami, loaded")
	cards["Fire Wisp"] = preload("res://Cards/Fire Wisp.tscn")
	print("Fire Wisp, loaded")
	cards["Gabrian Overlord"] = preload("res://Cards/Gabrian Overlord.tscn")
	print("Gabrian Overlord, loaded")
	cards["Submerge"] = preload("res://Cards/Submerge.tscn")
	print("Submerge, loaded")
	cards["Goblin Mentor"] = preload("res://Cards/Goblin Mentor.tscn")
	print("Goblin Mentor, loaded")
	cards["Tavaryn Yak"] = preload("res://Cards/Tavaryn Yak.tscn")
	print("Tavaryn Yak, loaded")
	cards["Imperial Assassin"] = preload("res://Cards/Imperial Assassin.tscn")
	print("Imperial Assassin, loaded")
	cards["Winter's Feast"] = preload("res://Cards/Winter\'s Feast.tscn")
	print("Winter's Feast, loaded")
	cards["Triton Wrath"] = preload("res://Cards/Triton Wrath.tscn")
	print("Triton Wrath, loaded")
	cards["Sagami Revenant"] = preload("res://Cards/Sagami Revenant.tscn")
	print("Sagami Revenant, loaded")
	cards["Soulchanger"] = preload("res://Cards/Soulchanger.tscn")
	print("Soulchanger, loaded")
	cards["Gabrian Explorer"] = preload("res://Cards/Gabrian Explorer.tscn")
	print("Gabrian Explorer, loaded")
	cards["Solar Warrior"] = preload("res://Cards/Solar Warrior.tscn")
	print("Solar Warrior, loaded")
	cards["Priestess Of Tavaryn"] = preload("res://Cards/Priestess Of Tavaryn.tscn")
	print("Priestess Of Tavaryn, loaded")
	cards["Wish Of The Dryads"] = preload("res://Cards/Wish Of The Dryads.tscn")
	print("Wish Of The Dryads, loaded")
	cards["Gravity Shift"] = preload("res://Cards/Gravity Shift.tscn")
	print("Gravity Shift, loaded")
	cards["Eclipse"] = preload("res://Cards/Eclipse.tscn")
	print("Eclipse, loaded")
	cards["Forest Wisp"] = preload("res://Cards/Forest Wisp.tscn")
	print("Forest Wisp, loaded")
	cards["Mind Travel"] = preload("res://Cards/Mind Travel.tscn")
	print("Mind Travel, loaded")
	cards["Runic Flash"] = preload("res://Cards/Runic Flash.tscn")
	print("Runic Flash, loaded")
	cards["Keldran Envoy"] = preload("res://Cards/Keldran Envoy.tscn")
	print("Keldran Envoy, loaded")
	cards["Djidan Apprentice"] = preload("res://Cards/Djidan Apprentice.tscn")
	print("Djidan Apprentice, loaded")
	cards["Ogre Boulder Thrower"] = preload("res://Cards/Ogre Boulder Thrower.tscn")
	print("Ogre Boulder Thrower, loaded")
	cards["Oakling"] = preload("res://Cards/Oakling.tscn")
	print("Oakling, loaded")
	cards["Water Divination"] = preload("res://Cards/Water Divination.tscn")
	print("Water Divination, loaded")
	cards["Morning Hazard"] = preload("res://Cards/Morning Hazard.tscn")
	print("Morning Hazard, loaded")
	cards["Shedim Pest"] = preload("res://Cards/Shedim Pest.tscn")
	print("Shedim Pest, loaded")
	cards["Grim Devils"] = preload("res://Cards/Grim Devils.tscn")
	print("Grim Devils, loaded")
	cards["Falcon Dive"] = preload("res://Cards/Falcon Dive.tscn")
	print("Falcon Dive, loaded")
	cards["Figure Of Prosperity"] = preload("res://Cards/Figure Of Prosperity.tscn")
	print("Figure Of Prosperity, loaded")
	cards["Stone Elemental"] = preload("res://Cards/Stone Elemental.tscn")
	print("Stone Elemental, loaded")
	cards["Stormbreeze Dragon"] = preload("res://Cards/Stormbreeze Dragon.tscn")
	print("Stormbreeze Dragon, loaded")
	cards["Water Elemental"] = preload("res://Cards/Water Elemental.tscn")
	print("Water Elemental, loaded")
	cards["Mochi Fellow"] = preload("res://Cards/Mochi Fellow.tscn")
	print("Mochi Fellow, loaded")
	cards["Wish Of The Oradrims"] = preload("res://Cards/Wish Of The Oradrims.tscn")
	print("Wish Of The Oradrims, loaded")
	cards["Keldran Soldier"] = preload("res://Cards/Keldran Soldier.tscn")
	print("Keldran Soldier, loaded")
	cards["Deserted Tower"] = preload("res://Cards/Deserted Tower.tscn")
	print("Deserted Tower, loaded")
	cards["Rhinodon"] = preload("res://Cards/Rhinodon.tscn")
	print("Rhinodon, loaded")
	cards["Share of the Weak"] = preload("res://Cards/Share of the Weak.tscn")
	print("Share of the Weak, loaded")
	cards["Oracle's Tipi"] = preload("res://Cards/Oracle\'s Tipi.tscn")
	print("Oracle's Tipi, loaded")
	cards["Memorial Of Orobouros"] = preload("res://Cards/Memorial Of Orobouros.tscn")
	print("Memorial Of Orobouros, loaded")
	cards["Oracle's Totem"] = preload("res://Cards/Oracle\'s Totem.tscn")
	print("Oracle's Totem, loaded")
	cards["Fang Brothers"] = preload("res://Cards/Fang Brothers.tscn")
	print("Fang Brothers, loaded")
	cards["Meroval Queen's Guard"] = preload("res://Cards/Meroval Queen\'s Guard.tscn")
	print("Meroval Queen's Guard, loaded")
	cards["Soaken Luduan"] = preload("res://Cards/Soaken Luduan.tscn")
	print("Soaken Luduan, loaded")
	cards["Sturdy Shell"] = preload("res://Cards/Sturdy Shell.tscn")
	print("Sturdy Shell, loaded")
	cards["Knight's Praise"] = preload("res://Cards/Knight\'s Praise.tscn")
	print("Knight's Praise, loaded")
	cards["Firestorm Dragon"] = preload("res://Cards/Firestorm Dragon.tscn")
	print("Firestorm Dragon, loaded")
	cards["Keldran Berserker"] = preload("res://Cards/Keldran Berserker.tscn")
	print("Keldran Berserker, loaded")
	cards["Demonic Touch"] = preload("res://Cards/Demonic Touch.tscn")
	print("Demonic Touch, loaded")
	cards["Solar Engineer"] = preload("res://Cards/Solar Engineer.tscn")
	print("Solar Engineer, loaded")
	cards["Tiki Bonga"] = preload("res://Cards/Tiki Bonga.tscn")
	print("Tiki Bonga, loaded")
	cards["Stalking Nightmare"] = preload("res://Cards/Stalking Nightmare.tscn")
	print("Stalking Nightmare, loaded")
	cards["Rebel Scout"] = preload("res://Cards/Rebel Scout.tscn")
	print("Rebel Scout, loaded")
	cards["Oradrim Phalanx"] = preload("res://Cards/Oradrim Phalanx.tscn")
	print("Oradrim Phalanx, loaded")
	cards["Djidan Pylon"] = preload("res://Cards/Djidan Pylon.tscn")
	print("Djidan Pylon, loaded")
	cards["Thyrian Statue"] = preload("res://Cards/Thyrian Statue.tscn")
	print("Thyrian Statue, loaded")
	cards["Shaytan Assassin"] = preload("res://Cards/Shaytan Assassin.tscn")
	print("Shaytan Assassin, loaded")
	cards["Azrael Shedim"] = preload("res://Cards/Azrael Shedim.tscn")
	print("Azrael Shedim, loaded")
	cards["Aernost Fisherman"] = preload("res://Cards/Aernost Fisherman.tscn")
	print("Aernost Fisherman, loaded")
	cards["Altar of Destruction"] = preload("res://Cards/Altar of Destruction.tscn")
	print("Altar of Destruction, loaded")
	cards["Greed And Anger"] = preload("res://Cards/Greed And Anger.tscn")
	print("Greed And Anger, loaded")
	cards["Ancient Kappa"] = preload("res://Cards/Ancient Kappa.tscn")
	print("Ancient Kappa, loaded")
	cards["Sunken Tower"] = preload("res://Cards/Sunken Tower.tscn")
	print("Sunken Tower, loaded")
	cards["Mirnast Engineer"] = preload("res://Cards/Mirnast Engineer.tscn")
	print("Mirnast Engineer, loaded")
	cards["Slavery"] = preload("res://Cards/Slavery.tscn")
	print("Slavery, loaded")
	cards["Thyrian Expedition"] = preload("res://Cards/Thyrian Expedition.tscn")
	print("Thyrian Expedition, loaded")
	cards["Lichorus"] = preload("res://Cards/Lichorus.tscn")
	print("Lichorus, loaded")
	cards["Cauldron Of The Ancient World"] = preload("res://Cards/Cauldron Of The Ancient World.tscn")
	print("Cauldron Of The Ancient World, loaded")
	cards["Grapeshot"] = preload("res://Cards/Grapeshot.tscn")
	print("Grapeshot, loaded")
	cards["Alberian Fortification"] = preload("res://Cards/Alberian Fortification.tscn")
	print("Alberian Fortification, loaded")
	cards["Farm Boy"] = preload("res://Cards/Farm Boy.tscn")
	print("Farm Boy, loaded")
	cards["Syland Windmill"] = preload("res://Cards/Syland Windmill.tscn")
	print("Syland Windmill, loaded")
	cards["Mountain Lupus"] = preload("res://Cards/Mountain Lupus.tscn")
	print("Mountain Lupus, loaded")
	cards["Earthraiser"] = preload("res://Cards/Earthraiser.tscn")
	print("Earthraiser, loaded")
	cards["Ale Degustation"] = preload("res://Cards/Ale Degustation.tscn")
	print("Ale Degustation, loaded")
	cards["Poltergoyf"] = preload("res://Cards/Poltergoyf.tscn")
	print("Poltergoyf, loaded")
	cards["Hell Gate"] = preload("res://Cards/Hell Gate.tscn")
	print("Hell Gate, loaded")
	cards["Grumpy Porcupine"] = preload("res://Cards/Grumpy Porcupine.tscn")
	print("Grumpy Porcupine, loaded")
	cards["Shaytan Demon"] = preload("res://Cards/Shaytan Demon.tscn")
	print("Shaytan Demon, loaded")
	cards["Powdersilk Faerie"] = preload("res://Cards/Powdersilk Faerie.tscn")
	print("Powdersilk Faerie, loaded")
	cards["Maeris Champion"] = preload("res://Cards/Maeris Champion.tscn")
	print("Maeris Champion, loaded")
	cards["Mecha Miner"] = preload("res://Cards/Mecha Miner.tscn")
	print("Mecha Miner, loaded")
	cards["Meroval Stables"] = preload("res://Cards/Meroval Stables.tscn")
	print("Meroval Stables, loaded")
	cards["Hard Day's Work"] = preload("res://Cards/Hard Day\'s Work.tscn")
	print("Hard Day's Work, loaded")
	cards["Djidan Templar"] = preload("res://Cards/Djidan Templar.tscn")
	print("Djidan Templar, loaded")
	cards["Temple Of Justice"] = preload("res://Cards/Temple Of Justice.tscn")
	print("Temple Of Justice, loaded")
	cards["Disarm"] = preload("res://Cards/Disarm.tscn")
	print("Disarm, loaded")
	cards["Sabotage"] = preload("res://Cards/Sabotage.tscn")
	print("Sabotage, loaded")
	cards["Demonic Bell"] = preload("res://Cards/Demonic Bell.tscn")
	print("Demonic Bell, loaded")
	cards["Spirit of Agony"] = preload("res://Cards/Spirit of Agony.tscn")
	print("Spirit of Agony, loaded")
	cards["Disillusion"] = preload("res://Cards/Disillusion.tscn")
	print("Disillusion, loaded")
	cards["Flying Manta"] = preload("res://Cards/Flying Manta.tscn")
	print("Flying Manta, loaded")
	cards["Call of the Lake"] = preload("res://Cards/Call of the Lake.tscn")
	print("Call of the Lake, loaded")
	cards["Fearless Infiltrator"] = preload("res://Cards/Fearless Infiltrator.tscn")
	print("Fearless Infiltrator, loaded")
	cards["Sinkhole"] = preload("res://Cards/Sinkhole.tscn")
	print("Sinkhole, loaded")
	cards["Call to Arms"] = preload("res://Cards/Call to Arms.tscn")
	print("Call to Arms, loaded")
	cards["Flying Drakkar"] = preload("res://Cards/Flying Drakkar.tscn")
	print("Flying Drakkar, loaded")
	cards["Steam Forge"] = preload("res://Cards/Steam Forge.tscn")
	print("Steam Forge, loaded")
	cards["Weapon Rack"] = preload("res://Cards/Weapon Rack.tscn")
	print("Weapon Rack, loaded")
	cards["Morog"] = preload("res://Cards/Morog.tscn")
	print("Morog, loaded")
	cards["Wind Wisp"] = preload("res://Cards/Wind Wisp.tscn")
	print("Wind Wisp, loaded")
	cards["Sagami Hunter"] = preload("res://Cards/Sagami Hunter.tscn")
	print("Sagami Hunter, loaded")
	cards["Mirabilite Dolmen"] = preload("res://Cards/Mirabilite Dolmen.tscn")
	print("Mirabilite Dolmen, loaded")
	cards["Prophetic Tablet"] = preload("res://Cards/Prophetic Tablet.tscn")
	print("Prophetic Tablet, loaded")
	cards["Greyblood Pact"] = preload("res://Cards/Greyblood Pact.tscn")
	print("Greyblood Pact, loaded")
	cards["Roar Of The Forest"] = preload("res://Cards/Roar Of The Forest.tscn")
	print("Roar Of The Forest, loaded")
	cards["Mindstorm Dragon"] = preload("res://Cards/Mindstorm Dragon.tscn")
	print("Mindstorm Dragon, loaded")
	cards["Thyrian Explorer"] = preload("res://Cards/Thyrian Explorer.tscn")
	print("Thyrian Explorer, loaded")
	cards["Thyrian Avenger"] = preload("res://Cards/Thyrian Avenger.tscn")
	print("Thyrian Avenger, loaded")
	cards["Fire Flap"] = preload("res://Cards/Fire Flap.tscn")
	print("Fire Flap, loaded")
	cards["Spiked Barricade"] = preload("res://Cards/Spiked Barricade.tscn")
	print("Spiked Barricade, loaded")
	cards["Vault of Torment"] = preload("res://Cards/Vault of Torment.tscn")
	print("Vault of Torment, loaded")
	cards["Aurora"] = preload("res://Cards/Aurora.tscn")
	print("Aurora, loaded")
	cards["Imperial Disruptor"] = preload("res://Cards/Imperial Disruptor.tscn")
	print("Imperial Disruptor, loaded")
	cards["Terraform"] = preload("res://Cards/Terraform.tscn")
	print("Terraform, loaded")
	cards["Celestial Tower"] = preload("res://Cards/Celestial Tower.tscn")
	print("Celestial Tower, loaded")
	cards["Typhoon"] = preload("res://Cards/Typhoon.tscn")
	print("Typhoon, loaded")
	cards["Youthful Duellist"] = preload("res://Cards/Youthful Duellist.tscn")
	print("Youthful Duellist, loaded")
	cards["Triton Banquet"] = preload("res://Cards/Triton Banquet.tscn")
	print("Triton Banquet, loaded")
	cards["Thyria's Solace"] = preload("res://Cards/Thyria\'s Solace.tscn")
	print("Thyria's Solace, loaded")
	cards["Hazeling"] = preload("res://Cards/Hazeling.tscn")
	print("Hazeling, loaded")
	cards["Goblin Apprentice"] = preload("res://Cards/Goblin Apprentice.tscn")
	print("Goblin Apprentice, loaded")
	cards["Lady of Lament"] = preload("res://Cards/Lady of Lament.tscn")
	print("Lady of Lament, loaded")
	cards["Rude Scapegrace"] = preload("res://Cards/Rude Scapegrace.tscn")
	print("Rude Scapegrace, loaded")
	cards["Treefolk"] = preload("res://Cards/Treefolk.tscn")
	print("Treefolk, loaded")
	cards["Kappa Emperor"] = preload("res://Cards/Kappa Emperor.tscn")
	print("Kappa Emperor, loaded")
	cards["Bloomstorm Dragon"] = preload("res://Cards/Bloomstorm Dragon.tscn")
	print("Bloomstorm Dragon, loaded")
	cards["Gabrian Cistern"] = preload("res://Cards/Gabrian Cistern.tscn")
	print("Gabrian Cistern, loaded")
	cards["Kobold Architect"] = preload("res://Cards/Kobold Architect.tscn")
	print("Kobold Architect, loaded")
	cards["Jelly Wisp"] = preload("res://Cards/Jelly Wisp.tscn")
	print("Jelly Wisp, loaded")
	cards["Redflame Basilisk"] = preload("res://Cards/Redflame Basilisk.tscn")
	print("Redflame Basilisk, loaded")
	cards["Kappa Dowser"] = preload("res://Cards/Kappa Dowser.tscn")
	print("Kappa Dowser, loaded")
	cards["Gold Mine"] = preload("res://Cards/Gold Mine.tscn")
	print("Gold Mine, loaded")
	cards["Giant Arboria"] = preload("res://Cards/Giant Arboria.tscn")
	print("Giant Arboria, loaded")
	cards["Azrael Obelisk"] = preload("res://Cards/Azrael Obelisk.tscn")
	print("Azrael Obelisk, loaded")
	cards["Pestilence"] = preload("res://Cards/Pestilence.tscn")
	print("Pestilence, loaded")
	cards["Rebel Fanatic"] = preload("res://Cards/Rebel Fanatic.tscn")
	print("Rebel Fanatic, loaded")
	cards["Tide Bringer"] = preload("res://Cards/Tide Bringer.tscn")
	print("Tide Bringer, loaded")
	cards["Thought Hunters"] = preload("res://Cards/Thought Hunters.tscn")
	print("Thought Hunters, loaded")
	cards["Targan Mountaineer"] = preload("res://Cards/Targan Mountaineer.tscn")
	print("Targan Mountaineer, loaded")
	cards["Solar Flying Fortress"] = preload("res://Cards/Solar Flying Fortress.tscn")
	print("Solar Flying Fortress, loaded")
	cards["Tiki Oracle"] = preload("res://Cards/Tiki Oracle.tscn")
	print("Tiki Oracle, loaded")
	cards["Earth Flap"] = preload("res://Cards/Earth Flap.tscn")
	print("Earth Flap, loaded")
	cards["Vexing Sprite"] = preload("res://Cards/Vexing Sprite.tscn")
	print("Vexing Sprite, loaded")
	cards["Moonwell"] = preload("res://Cards/Moonwell.tscn")
	print("Moonwell, loaded")
	cards["Leviathan"] = preload("res://Cards/Leviathan.tscn")
	print("Leviathan, loaded")
	cards["Tyranax"] = preload("res://Cards/Tyranax.tscn")
	print("Tyranax, loaded")
	cards["Alberian Wizard"] = preload("res://Cards/Alberian Wizard.tscn")
	print("Alberian Wizard, loaded")
	cards["Trow Miner"] = preload("res://Cards/Trow Miner.tscn")
	print("Trow Miner, loaded")
	cards["Burial Chamber"] = preload("res://Cards/Burial Chamber.tscn")
	print("Burial Chamber, loaded")
	cards["Warlust"] = preload("res://Cards/Warlust.tscn")
	print("Warlust, loaded")
	cards["Amai Business"] = preload("res://Cards/Amai Business.tscn")
	print("Amai Business, loaded")
	cards["Overgrown Tower"] = preload("res://Cards/Overgrown Tower.tscn")
	print("Overgrown Tower, loaded")
	cards["Nautilus Probe"] = preload("res://Cards/Nautilus Probe.tscn")
	print("Nautilus Probe, loaded")
	cards["Sky Trailblazer"] = preload("res://Cards/Sky Trailblazer.tscn")
	print("Sky Trailblazer, loaded")
