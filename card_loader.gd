extends Node
var cards = {}
func _ready():
	cards["Aernost Fisherman"] = preload("res://Cards/Aernost Fisherman.tscn")
	print("Aernost Fisherman, loaded")
	cards["Alberian Fortification"] = preload("res://Cards/Alberian Fortification.tscn")
	print("Alberian Fortification, loaded")
	cards["Alberian Wizard"] = preload("res://Cards/Alberian Wizard.tscn")
	print("Alberian Wizard, loaded")
	cards["Altar of Destruction"] = preload("res://Cards/Altar of Destruction.tscn")
	print("Altar of Destruction, loaded")
	cards["Amai Business"] = preload("res://Cards/Amai Business.tscn")
	print("Amai Business, loaded")
	cards["Amai Emissary"] = preload("res://Cards/Amai Emissary.tscn")
	print("Amai Emissary, loaded")
	cards["Ancient Kappa"] = preload("res://Cards/Ancient Kappa.tscn")
	print("Ancient Kappa, loaded")
	cards["Aquaria"] = preload("res://Cards/Aquaria.tscn")
	print("Aquaria, loaded")
	cards["Azrael Obelisk"] = preload("res://Cards/Azrael Obelisk.tscn")
	print("Azrael Obelisk, loaded")
	cards["Battle Toad"] = preload("res://Cards/Battle Toad.tscn")
	print("Battle Toad, loaded")
	cards["Belier"] = preload("res://Cards/Belier.tscn")
	print("Belier, loaded")
	cards["Bloom"] = preload("res://Cards/Bloom.tscn")
	print("Bloom, loaded")
	cards["Campfire"] = preload("res://Cards/Campfire.tscn")
	print("Campfire, loaded")
	cards["Crusader of the Shield"] = preload("res://Cards/Crusader of the Shield.tscn")
	print("Crusader of the Shield, loaded")
	cards["Edolin Safeguard"] = preload("res://Cards/Edolin Safeguard.tscn")
	print("Edolin Safeguard, loaded")
	cards["Edolin Sentinel"] = preload("res://Cards/Edolin Sentinel.tscn")
	print("Edolin Sentinel, loaded")
	cards["Eldritz Fine Lame"] = preload("res://Cards/Eldritz Fine Lame.tscn")
	print("Eldritz Fine Lame, loaded")
	cards["Elinee's Favorite"] = preload("res://Cards/Elinee\'s Favorite.tscn")
	print("Elinee's Favorite, loaded")
	cards["Emerald Dragon"] = preload("res://Cards/Emerald Dragon.tscn")
	print("Emerald Dragon, loaded")
	cards["Exalting Cauldron"] = preload("res://Cards/Exalting Cauldron.tscn")
	print("Exalting Cauldron, loaded")
	cards["Falcon Dive"] = preload("res://Cards/Falcon Dive.tscn")
	print("Falcon Dive, loaded")
	cards["Fearless Infiltrator"] = preload("res://Cards/Fearless Infiltrator.tscn")
	print("Fearless Infiltrator, loaded")
	cards["Fenodrae"] = preload("res://Cards/Fenodrae.tscn")
	print("Fenodrae, loaded")
	cards["Flood's Caprice"] = preload("res://Cards/Flood\'s Caprice.tscn")
	print("Flood's Caprice, loaded")
	cards["Flowersilk Faerie"] = preload("res://Cards/Flowersilk Faerie.tscn")
	print("Flowersilk Faerie, loaded")
	cards["Flying Manta"] = preload("res://Cards/Flying Manta.tscn")
	print("Flying Manta, loaded")
	cards["Forest Elemental"] = preload("res://Cards/Forest Elemental.tscn")
	print("Forest Elemental, loaded")
	cards["Forest Wisp"] = preload("res://Cards/Forest Wisp.tscn")
	print("Forest Wisp, loaded")
	cards["Forest Worm"] = preload("res://Cards/Forest Worm.tscn")
	print("Forest Worm, loaded")
	cards["Fortune Hunter"] = preload("res://Cards/Fortune Hunter.tscn")
	print("Fortune Hunter, loaded")
	cards["Gabrian Cistern"] = preload("res://Cards/Gabrian Cistern.tscn")
	print("Gabrian Cistern, loaded")
	cards["Gabrian Explorer"] = preload("res://Cards/Gabrian Explorer.tscn")
	print("Gabrian Explorer, loaded")
	cards["Gabrian Order"] = preload("res://Cards/Gabrian Order.tscn")
	print("Gabrian Order, loaded")
	cards["Gabrian Overlord"] = preload("res://Cards/Gabrian Overlord.tscn")
	print("Gabrian Overlord, loaded")
	cards["Gabrian Valve"] = preload("res://Cards/Gabrian Valve.tscn")
	print("Gabrian Valve, loaded")
	cards["Gabrian Warden"] = preload("res://Cards/Gabrian Warden.tscn")
	print("Gabrian Warden, loaded")
	cards["Gaea's Bean"] = preload("res://Cards/Gaea\'s Bean.tscn")
	print("Gaea's Bean, loaded")
	cards["Garden of the Beggars"] = preload("res://Cards/Garden of the Beggars.tscn")
	print("Garden of the Beggars, loaded")
	cards["Ghost Of Erianor"] = preload("res://Cards/Ghost Of Erianor.tscn")
	print("Ghost Of Erianor, loaded")
	cards["Giant Arboria"] = preload("res://Cards/Giant Arboria.tscn")
	print("Giant Arboria, loaded")
	#cards["Greyblood Pact"] = preload("res://Cards/Greyblood Pact.tscn")
	#print("Greyblood Pact, loaded")
	cards["Grumpy Porcupine"] = preload("res://Cards/Grumpy Porcupine.tscn")
	print("Grumpy Porcupine, loaded")
	cards["Gust of Hope"] = preload("res://Cards/Gust of Hope.tscn")
	print("Gust of Hope, loaded")
	cards["Imperial Assassin"] = preload("res://Cards/Imperial Assassin.tscn")
	print("Imperial Assassin, loaded")
	cards["Imperial Disruptor"] = preload("res://Cards/Imperial Disruptor.tscn")
	print("Imperial Disruptor, loaded")
	cards["Irregular Dawn"] = preload("res://Cards/Irregular Dawn.tscn")
	print("Irregular Dawn, loaded")
	cards["Jelly Wisp"] = preload("res://Cards/Jelly Wisp.tscn")
	print("Jelly Wisp, loaded")
	cards["Kappa Dowser"] = preload("res://Cards/Kappa Dowser.tscn")
	print("Kappa Dowser, loaded")
	cards["Kappa Emperor"] = preload("res://Cards/Kappa Emperor.tscn")
	print("Kappa Emperor, loaded")
	cards["Kilban Lumberman"] = preload("res://Cards/Kilban Lumberman.tscn")
	print("Kilban Lumberman, loaded")
	cards["Knight's Praise"] = preload("res://Cards/Knight\'s Praise.tscn")
	print("Knight's Praise, loaded")
	cards["Lady of Lament"] = preload("res://Cards/Lady of Lament.tscn")
	print("Lady of Lament, loaded")
	"""
	cards["Land Renewal"] = preload("res://Cards/Land Renewal.tscn")
	print("Land Renewal, loaded")
	"""
	cards["Leviathan"] = preload("res://Cards/Leviathan.tscn")
	print("Leviathan, loaded")
	cards["Lichorus"] = preload("res://Cards/Lichorus.tscn")
	print("Lichorus, loaded")
	cards["Living Willow"] = preload("res://Cards/Living Willow.tscn")
	print("Living Willow, loaded")
	cards["Lunar Mochi"] = preload("res://Cards/Lunar Mochi.tscn")
	print("Lunar Mochi, loaded")
	cards["Maeris Champion"] = preload("res://Cards/Maeris Champion.tscn")
	print("Maeris Champion, loaded")
	cards["Meroval Highborn"] = preload("res://Cards/Meroval Highborn.tscn")
	print("Meroval Highborn, loaded")
	cards["Meroval King's Guard"] = preload("res://Cards/Meroval King\'s Guard.tscn")
	print("Meroval King's Guard, loaded")
	cards["Meroval Queen's Guard"] = preload("res://Cards/Meroval Queen\'s Guard.tscn")
	print("Meroval Queen's Guard, loaded")
	cards["Meroval Stables"] = preload("res://Cards/Meroval Stables.tscn")
	print("Meroval Stables, loaded")
	cards["Might And Guts"] = preload("res://Cards/Might And Guts.tscn")
	print("Might And Guts, loaded")
	"""
	cards["Mindstorm Dragon"] = preload("res://Cards/Mindstorm Dragon.tscn")
	print("Mindstorm Dragon, loaded")
	"""
	cards["Mirabilite Dolmen"] = preload("res://Cards/Mirabilite Dolmen.tscn")
	print("Mirabilite Dolmen, loaded")
	cards["Mirnast Engineer"] = preload("res://Cards/Mirnast Engineer.tscn")
	print("Mirnast Engineer, loaded")
	cards["Mochi Fellow"] = preload("res://Cards/Mochi Fellow.tscn")
	print("Mochi Fellow, loaded")
	cards["Moss Bringer"] = preload("res://Cards/Moss Bringer.tscn")
	print("Moss Bringer, loaded")
	cards["Nature's Growth"] = preload("res://Cards/Nature\'s Growth.tscn")
	print("Nature's Growth, loaded")
	cards["Nautilus Probe"] = preload("res://Cards/Nautilus Probe.tscn")
	print("Nautilus Probe, loaded")
	cards["Noodle Bar"] = preload("res://Cards/Noodle Bar.tscn")
	print("Noodle Bar, loaded")
	cards["Oakling"] = preload("res://Cards/Oakling.tscn")
	print("Oakling, loaded")
	cards["Order of Valor"] = preload("res://Cards/Order of Valor.tscn")
	print("Order of Valor, loaded")
	cards["Overgrown Tower"] = preload("res://Cards/Overgrown Tower.tscn")
	print("Overgrown Tower, loaded")
	cards["Poltergoyf"] = preload("res://Cards/Poltergoyf.tscn")
	print("Poltergoyf, loaded")
	cards["Prophetic Tablet"] = preload("res://Cards/Prophetic Tablet.tscn")
	print("Prophetic Tablet, loaded")
	cards["Rebel Scout"] = preload("res://Cards/Rebel Scout.tscn")
	print("Rebel Scout, loaded")
	cards["Ruby Fish"] = preload("res://Cards/Ruby Fish.tscn")
	print("Ruby Fish, loaded")
	cards["Rude Scapegrace"] = preload("res://Cards/Rude Scapegrace.tscn")
	print("Rude Scapegrace, loaded")
	cards["Sabotage"] = preload("res://Cards/Sabotage.tscn")
	print("Sabotage, loaded")
	cards["Sagami Hunter"] = preload("res://Cards/Sagami Hunter.tscn")
	print("Sagami Hunter, loaded")
	cards["Sagami Settler"] = preload("res://Cards/Sagami Settler.tscn")
	print("Sagami Settler, loaded")
	cards["Samaris Journeyman"] = preload("res://Cards/Samaris Journeyman.tscn")
	print("Samaris Journeyman, loaded")
	cards["Servant of Alua"] = preload("res://Cards/Servant of Alua.tscn")
	print("Servant of Alua, loaded")
	cards["Share of the Weak"] = preload("res://Cards/Share of the Weak.tscn")
	print("Share of the Weak, loaded")
	cards["Shrine of Blossom"] = preload("res://Cards/Shrine of Blossom.tscn")
	print("Shrine of Blossom, loaded")
	cards["Shrine of Tribute"] = preload("res://Cards/Shrine of Tribute.tscn")
	print("Shrine of Tribute, loaded")
	cards["Silvermoon Dragon"] = preload("res://Cards/Silvermoon Dragon.tscn")
	print("Silvermoon Dragon, loaded")
	cards["Singing Tipi"] = preload("res://Cards/Singing Tipi.tscn")
	print("Singing Tipi, loaded")
	cards["Soaken Luduan"] = preload("res://Cards/Soaken Luduan.tscn")
	print("Soaken Luduan, loaded")
	cards["Spirit of Agony"] = preload("res://Cards/Spirit of Agony.tscn")
	print("Spirit of Agony, loaded")
	cards["Spring Mochi"] = preload("res://Cards/Spring Mochi.tscn")
	print("Spring Mochi, loaded")
	cards["Stained Boar"] = preload("res://Cards/Stained Boar.tscn")
	print("Stained Boar, loaded")
	"""
	cards["Steam Forge"] = preload("res://Cards/Steam Forge.tscn")
	print("Steam Forge, loaded")
	cards["Storehouse"] = preload("res://Cards/Storehouse.tscn")
	print("Storehouse, loaded")
	cards["Sturdy Shell"] = preload("res://Cards/Sturdy Shell.tscn")
	print("Sturdy Shell, loaded")
	cards["Submerge"] = preload("res://Cards/Submerge.tscn")
	print("Submerge, loaded")
	cards["Sunken Tower"] = preload("res://Cards/Sunken Tower.tscn")
	print("Sunken Tower, loaded")
	cards["Swamp Wurm"] = preload("res://Cards/Swamp Wurm.tscn")
	print("Swamp Wurm, loaded")
	cards["Syland Barbarian"] = preload("res://Cards/Syland Barbarian.tscn")
	print("Syland Barbarian, loaded")
	cards["Syland Horseman"] = preload("res://Cards/Syland Horseman.tscn")
	print("Syland Horseman, loaded")
	cards["Syland Windmill"] = preload("res://Cards/Syland Windmill.tscn")
	print("Syland Windmill, loaded")
	cards["Tale of the Old Turtle"] = preload("res://Cards/Tale of the Old Turtle.tscn")
	print("Tale of the Old Turtle, loaded")
	cards["Targan Mountaineer"] = preload("res://Cards/Targan Mountaineer.tscn")
	print("Targan Mountaineer, loaded")
	cards["Tavaryn Yak"] = preload("res://Cards/Tavaryn Yak.tscn")
	print("Tavaryn Yak, loaded")
	cards["Thyria's Solace"] = preload("res://Cards/Thyria\'s Solace.tscn")
	print("Thyria's Solace, loaded")
	cards["Thyrian Ceremonial"] = preload("res://Cards/Thyrian Ceremonial.tscn")
	print("Thyrian Ceremonial, loaded")
	cards["Thyrian Colossus"] = preload("res://Cards/Thyrian Colossus.tscn")
	print("Thyrian Colossus, loaded")
	cards["Thyrian Expedition"] = preload("res://Cards/Thyrian Expedition.tscn")
	print("Thyrian Expedition, loaded")
	cards["Thyrian Explorer"] = preload("res://Cards/Thyrian Explorer.tscn")
	print("Thyrian Explorer, loaded")
	cards["Thyrian Protector"] = preload("res://Cards/Thyrian Protector.tscn")
	print("Thyrian Protector, loaded")
	cards["Tide Bringer"] = preload("res://Cards/Tide Bringer.tscn")
	print("Tide Bringer, loaded")
	cards["Tiki Bonga"] = preload("res://Cards/Tiki Bonga.tscn")
	print("Tiki Bonga, loaded")
	cards["Tiki Pathfinder"] = preload("res://Cards/Tiki Pathfinder.tscn")
	print("Tiki Pathfinder, loaded")
	cards["Tiki Sanctuary"] = preload("res://Cards/Tiki Sanctuary.tscn")
	print("Tiki Sanctuary, loaded")
	cards["Tiki Savage"] = preload("res://Cards/Tiki Savage.tscn")
	print("Tiki Savage, loaded")
	cards["Tiki Shaman"] = preload("res://Cards/Tiki Shaman.tscn")
	print("Tiki Shaman, loaded")
	cards["Tiki Song"] = preload("res://Cards/Tiki Song.tscn")
	print("Tiki Song, loaded")
	cards["Tiki Weathercock"] = preload("res://Cards/Tiki Weathercock.tscn")
	print("Tiki Weathercock, loaded")
	cards["Totem of Silence"] = preload("res://Cards/Totem of Silence.tscn")
	print("Totem of Silence, loaded")
	cards["Tower of Fate"] = preload("res://Cards/Tower of Fate.tscn")
	print("Tower of Fate, loaded")
	cards["Treasure Trove"] = preload("res://Cards/Treasure Trove.tscn")
	print("Treasure Trove, loaded")
	cards["Treefolk"] = preload("res://Cards/Treefolk.tscn")
	print("Treefolk, loaded")
	cards["Triton Banquet"] = preload("res://Cards/Triton Banquet.tscn")
	print("Triton Banquet, loaded")
	cards["Triton Chef"] = preload("res://Cards/Triton Chef.tscn")
	print("Triton Chef, loaded")
	cards["Triton Raider"] = preload("res://Cards/Triton Raider.tscn")
	print("Triton Raider, loaded")
	cards["Triton Warrior"] = preload("res://Cards/Triton Warrior.tscn")
	print("Triton Warrior, loaded")
	cards["Triton Wrath"] = preload("res://Cards/Triton Wrath.tscn")
	print("Triton Wrath, loaded")
	cards["Twilight Pool"] = preload("res://Cards/Twilight Pool.tscn")
	print("Twilight Pool, loaded")
	cards["Typhoon"] = preload("res://Cards/Typhoon.tscn")
	print("Typhoon, loaded")
	cards["Tyranax"] = preload("res://Cards/Tyranax.tscn")
	print("Tyranax, loaded")
	cards["Unexpected Twilight"] = preload("res://Cards/Unexpected Twilight.tscn")
	print("Unexpected Twilight, loaded")
	cards["Vault of Torment"] = preload("res://Cards/Vault of Torment.tscn")
	print("Vault of Torment, loaded")
	cards["Water Divination"] = preload("res://Cards/Water Divination.tscn")
	print("Water Divination, loaded")
	cards["Water Elemental"] = preload("res://Cards/Water Elemental.tscn")
	print("Water Elemental, loaded")
	cards["Weapon Rack"] = preload("res://Cards/Weapon Rack.tscn")
	print("Weapon Rack, loaded")
	cards["Wish Of The Dryads"] = preload("res://Cards/Wish Of The Dryads.tscn")
	print("Wish Of The Dryads, loaded")
	cards["Wither Apostle"] = preload("res://Cards/Wither Apostle.tscn")
	print("Wither Apostle, loaded")
	cards["Youthful Duellist"] = preload("res://Cards/Youthful Duellist.tscn")
	print("Youthful Duellist, loaded")
"""