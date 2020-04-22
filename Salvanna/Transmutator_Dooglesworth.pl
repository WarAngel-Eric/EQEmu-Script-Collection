#############
#Quest Name: Classic, Kunark, Velious, Luclin, and PoP Armor Set Turnins; and Classic to Kunark to Velious to Luclin Armor Set Upgrades
#Author: Salvanna
#NPC's Involved: Transmutator Dogglesworth
#Items Involved: too many to list here  
#############
###NPC 1
#Name: Transmutator_Dogglesworth
#Race 8 (dwarf), Texture of 2, Size 3, gender of male
#Location: 518, -354, -125 of poknowledge
#Level: 60
#Type: Quest NPC
#Loot: N/A
#############
#Precious stones needed for upgrades
###ItemID 1439 / 2564 / 2633
#Name: Refined / Polished / Pristine Gem of Mananess
#Stats: No drop
###
###ItemID 1440 / 2613 / 2634
#Name: Refined / Polished / Pristine Tear of Rage
#Stats: No drop
###
###ItemID 1441 / 2614 / 2650
#Name: Refined / Polished / Pristine Channeler's Stone
#Stats: No drop
###
###ItemID 1442 / 2632 / 2651
#Name: Refined / Polished / Pristine Cracked Orb
#Stats: No drop
#############

sub EVENT_SAY {
	if ($text =~/Hail/i) {
		quest::say ("Hello, $name.  Since my arrival in New Tanaan I have heard many tales of lost [trinkets] and mysterious [orbs].");
	}
	if ($text =~/trinkets/i) {
		quest::say ("More damaged or ruined armor than anything valuable, these trinkets can be found all over Norrath, some as part of [dragons]' hordes of treasure; there's even [rumors] some are on other worlds!  I may know a way to [repair] it if you can acquire a sample of the damaged armor.");
	}
	if ($text =~/dragons/i) {
		quest::say ("Aye, mighty, greedy dragons, most well beyond your skill to slay.  There is one runt of the litter you may be able to handle.  He prefers to disguise himself as a common snake in the land of us Dwarves, but there are some unusual things about his appearance.");
	}
	if ($text =~/rumors/i) {
		quest::say ("Ancient soldiers once trod on now nearly forgotten lands.  Some surely fell in battle and their armor is still there waiting to be recovered.  I may be able to repair even those with the right tools.");
	}
	if ($text =~/repair/i) {
		quest::say ("Simply bring me the armor piece and I will attempt to fashion it into something useful.");
	}
	if ($text =~/orbs/i) {
		quest::say ("Four precious stones of varying quality have been discovered on Norrath.  From my studies here, I believe I can use them to [upgrade] an existing armor piece.  I must warn you, $class, it doesn't always pan out and sometimes under all the wear is nothing more than wasted effort if the wrong stones and armor are attempted to be fused together.");
	}
	if ($text =~/upgrade/i) {
		quest::say ("Upgrading armor is no easy task to perform.  It takes great skill and... (looks over your shoulder to be certain no one else is listening) ...beer.  Yes, plenty of [beer] certainly helps.  You will need to bring me an orb appropriate for a $class and the appropriate style armor you wish to upgrade.");
	}
	if ($text =~/beer/i) {
		quest::say ("I certainly will not refuse a good brew from a fine $race such as yourself, this skin of ale is nearly empty.  Let's see what you have there.");
	}
	if ($text =~/pinnacle of skill/i && (plugin::check_hasitem($client, 47643) || plugin::check_hasitem($client, 47652) || plugin::check_hasitem($client, 55511) || plugin::check_hasitem($client, 47646) || plugin::check_hasitem($client, 47651) || plugin::check_hasitem($client, 47656) || plugin::check_hasitem($client, 47655) || plugin::check_hasitem($client, 47650) || plugin::check_hasitem($client, 47653) || plugin::check_hasitem($client, 47644) || plugin::check_hasitem($client, 47647) || plugin::check_hasitem($client, 47648) || plugin::check_hasitem($client, 47645) || plugin::check_hasitem($client, 47649) || plugin::check_hasitem($client, 47642) || plugin::check_hasitem($client, 47654))) {
		quest::say ("To further enhance this grand armor requires the hand of one not of deft mechanical skill like Dooglesworth, but with mental enlightenment; the religious type. I can no longer assist you, my friend $name. Good luck in your journeys.");
	}
}

my %chest = ("Warrior" => 1804, "Rogue" => 1804, "Monk" => 1804, "Berserker" => 1804, "Shadowknight" => 1804, "Paladin" => 1804, "Ranger" => 1804, "Bard" => 1804, "Beastlord" => 1804, "Cleric" => 1804, "Druid" => 1804, "Shaman" => 1804, "Wizard" => 1804, "Magician" => 1804, "Enchanter" => 1804, "Necromancer" => 1804);
my %legs = ("Warrior" => 1803, "Rogue" => 1803, "Monk" => 1803, "Berserker" => 1803, "Shadowknight" => 1803, "Paladin" => 1803, "Ranger" => 1803, "Bard" => 1803, "Beastlord" => 1803, "Cleric" => 1803, "Druid" => 1803, "Shaman" => 1803, "Wizard" => 1803, "Magician" => 1803, "Enchanter" => 1803, "Necromancer" => 1803);
my %bracer = ("Warrior" => 1733, "Rogue" => 1733, "Monk" => 1733, "Berserker" => 1733, "Shadowknight" => 1733, "Paladin" => 1733, "Ranger" => 1733, "Bard" => 1733, "Beastlord" => 1733, "Cleric" => 1733, "Druid" => 1733, "Shaman" => 1733, "Wizard" => 1733, "Magician" => 1733, "Enchanter" => 1733, "Necromancer" => 1733);
my %helm = ("Warrior" => 1801, "Rogue" => 1801, "Monk" => 1801, "Berserker" => 1801, "Shadowknight" => 1801, "Paladin" => 1801, "Ranger" => 1801, "Bard" => 1801, "Beastlord" => 1801, "Cleric" => 1801, "Druid" => 1801, "Shaman" => 1801, "Wizard" => 1801, "Magician" => 1801, "Enchanter" => 1801, "Necromancer" => 1801);
my %arms = ("Warrior" => 1802, "Rogue" => 1802, "Monk" => 1802, "Berserker" => 1802, "Shadowknight" => 1802, "Paladin" => 1802, "Ranger" => 1802, "Bard" => 1802, "Beastlord" => 1802, "Cleric" => 1802, "Druid" => 1802, "Shaman" => 1802, "Wizard" => 1802, "Magician" => 1802, "Enchanter" => 1802, "Necromancer" => 1802);
my %gloves = ("Warrior" => 1734, "Rogue" => 1734, "Monk" => 1734, "Berserker" => 1734, "Shadowknight" => 1734, "Paladin" => 1734, "Ranger" => 1734, "Bard" => 1734, "Beastlord" => 1734, "Cleric" => 1734, "Druid" => 1734, "Shaman" => 1734, "Wizard" => 1734, "Magician" => 1734, "Enchanter" => 1734, "Necromancer" => 1734);
my %boots = ("Warrior" => 1800, "Rogue" => 1800, "Monk" => 1800, "Berserker" => 1800, "Shadowknight" => 1800, "Paladin" => 1800, "Ranger" => 1800, "Bard" => 1800, "Beastlord" => 1800, "Cleric" => 1800, "Druid" => 1800, "Shaman" => 1800, "Wizard" => 1800, "Magician" => 1800, "Enchanter" => 1800, "Necromancer" => 1800);

my %chestk = ("Warrior" => 2684, "Rogue" => 2684, "Monk" => 2684, "Berserker" => 2684, "Shadowknight" => 2684, "Paladin" => 2684, "Ranger" => 2684, "Bard" => 2684, "Beastlord" => 2684, "Cleric" => 2684, "Druid" => 2684, "Shaman" => 2684, "Wizard" => 2684, "Magician" => 2684, "Enchanter" => 2684, "Necromancer" => 2684);
my %legsk = ("Warrior" => 2673, "Rogue" => 2673, "Monk" => 2673, "Berserker" => 2673, "Shadowknight" => 2673, "Paladin" => 2673, "Ranger" => 2673, "Bard" => 2673, "Beastlord" => 2673, "Cleric" => 2673, "Druid" => 2673, "Shaman" => 2673, "Wizard" => 2673, "Magician" => 2673, "Enchanter" => 2673, "Necromancer" => 2673);
my %bracerk = ("Warrior" => 2667, "Rogue" => 2667, "Monk" => 2667, "Berserker" => 2667, "Shadowknight" => 2667, "Paladin" => 2667, "Ranger" => 2667, "Bard" => 2667, "Beastlord" => 2667, "Cleric" => 2667, "Druid" => 2667, "Shaman" => 2667, "Wizard" => 2667, "Magician" => 2667, "Enchanter" => 2667, "Necromancer" => 2667);
my %helmk = ("Warrior" => 2670, "Rogue" => 2670, "Monk" => 2670, "Berserker" => 2670, "Shadowknight" => 2670, "Paladin" => 2670, "Ranger" => 2670, "Bard" => 2670, "Beastlord" => 2670, "Cleric" => 2670, "Druid" => 2670, "Shaman" => 2670, "Wizard" => 2670, "Magician" => 2670, "Enchanter" => 2670, "Necromancer" => 2670);
my %armsk = ("Warrior" => 2672, "Rogue" => 2672, "Monk" => 2672, "Berserker" => 2672, "Shadowknight" => 2672, "Paladin" => 2672, "Ranger" => 2672, "Bard" => 2672, "Beastlord" => 2672, "Cleric" => 2672, "Druid" => 2672, "Shaman" => 2672, "Wizard" => 2672, "Magician" => 2672, "Enchanter" => 2672, "Necromancer" => 2672);
my %glovesk = ("Warrior" => 2668, "Rogue" => 2668, "Monk" => 2668, "Berserker" => 2668, "Shadowknight" => 2668, "Paladin" => 2668, "Ranger" => 2668, "Bard" => 2668, "Beastlord" => 2668, "Cleric" => 2668, "Druid" => 2668, "Shaman" => 2668, "Wizard" => 2668, "Magician" => 2668, "Enchanter" => 2668, "Necromancer" => 2668);
my %bootsk = ("Warrior" => 2669, "Rogue" => 2669, "Monk" => 2669, "Berserker" => 2669, "Shadowknight" => 2669, "Paladin" => 2669, "Ranger" => 2669, "Bard" => 2669, "Beastlord" => 2669, "Cleric" => 2669, "Druid" => 2669, "Shaman" => 2669, "Wizard" => 2669, "Magician" => 2669, "Enchanter" => 2669, "Necromancer" => 2669);

my %chestku = ("Warrior" => 2442, "Rogue" => 2422, "Monk" => 1825, "Berserker" => 1579, "Shadowknight" => 2381, "Paladin" => 2098, "Ranger" => 2370, "Bard" => 1445, "Beastlord" => 1563, "Cleric" => 1654, "Druid" => 1661, "Shaman" => 2433, "Wizard" => 2487, "Magician" => 1813, "Enchanter" => 1806, "Necromancer" => 1901);
my %legsku = ("Warrior" => 2451, "Rogue" => 2430, "Monk" => 1846, "Berserker" => 1587, "Shadowknight" => 2393, "Paladin" => 2277, "Ranger" => 2378, "Bard" => 1449, "Beastlord" => 1503, "Cleric" => 1658, "Druid" => 1716, "Shaman" => 2437, "Wizard" => 2494, "Magician" => 1823, "Enchanter" => 1810, "Necromancer" => 2052);
my %bracerku = ("Warrior" => 2444, "Rogue" => 2424, "Monk" => 1844, "Berserker" => 1582, "Shadowknight" => 2383, "Paladin" => 2274, "Ranger" => 2376, "Bard" => 1447, "Beastlord" => 1458, "Cleric" => 1656, "Druid" => 1663, "Shaman" => 2435, "Wizard" => 2489, "Magician" => 1818, "Enchanter" => 1808, "Necromancer" => 1907);
my %helmku = ("Warrior" => 2439, "Rogue" => 2421, "Monk" => 1826, "Berserker" => 1577, "Shadowknight" => 2380, "Paladin" => 2096, "Ranger" => 2298, "Bard" => 1443, "Beastlord" => 1569, "Cleric" => 1592, "Druid" => 1660, "Shaman" => 2432, "Wizard" => 2486, "Magician" => 1812, "Enchanter" => 1805, "Necromancer" => 1848);
my %armsku = ("Warrior" => 2443, "Rogue" => 2423, "Monk" => 1836, "Berserker" => 1581, "Shadowknight" => 2382, "Paladin" => 2273, "Ranger" => 2372, "Bard" => 1446, "Beastlord" => 1568, "Cleric" => 1655, "Druid" => 1662, "Shaman" => 2434, "Wizard" => 2488, "Magician" => 1817, "Enchanter" => 1807, "Necromancer" => 1902);
my %glovesku = ("Warrior" => 2445, "Rogue" => 2425, "Monk" => 1845, "Berserker" => 1586, "Shadowknight" => 2385, "Paladin" => 2275, "Ranger" => 2377, "Bard" => 1448, "Beastlord" => 1533, "Cleric" => 1657, "Druid" => 1664, "Shaman" => 2436, "Wizard" => 2493, "Magician" => 1819, "Enchanter" => 1809, "Necromancer" => 1909);
my %bootsku = ("Warrior" => 2473, "Rogue" => 2431, "Monk" => 1847, "Berserker" => 1591, "Shadowknight" => 2415, "Paladin" => 2278, "Ranger" => 2379, "Bard" => 1450, "Beastlord" => 1502, "Cleric" => 1659, "Druid" => 1732, "Shaman" => 2438, "Wizard" => 2495, "Magician" => 1824, "Enchanter" => 1811, "Necromancer" => 2095);

my %chestv = ("Warrior" => 4348, "Rogue" => 4348, "Monk" => 4348, "Berserker" => 4348, "Shadowknight" => 4348, "Paladin" => 4348, "Ranger" => 4348, "Bard" => 4348, "Beastlord" => 4348, "Cleric" => 4348, "Druid" => 4348, "Shaman" => 4348, "Wizard" => 4348, "Magician" => 4348, "Enchanter" => 4348, "Necromancer" => 4348);
my %legsv = ("Warrior" => 4440, "Rogue" => 4440, "Monk" => 4440, "Berserker" => 4440, "Shadowknight" => 4440, "Paladin" => 4440, "Ranger" => 4440, "Bard" => 4440, "Beastlord" => 4440, "Cleric" => 4440, "Druid" => 4440, "Shaman" => 4440, "Wizard" => 4440, "Magician" => 4440, "Enchanter" => 4440, "Necromancer" => 4440);
my %bracerv = ("Warrior" => 4380, "Rogue" => 4380, "Monk" => 4380, "Berserker" => 4380, "Shadowknight" => 4380, "Paladin" => 4380, "Ranger" => 4380, "Bard" => 4380, "Beastlord" => 4380, "Cleric" => 4380, "Druid" => 4380, "Shaman" => 4380, "Wizard" => 4380, "Magician" => 4380, "Enchanter" => 4380, "Necromancer" => 4380);
my %helmv = ("Warrior" => 4347, "Rogue" => 4347, "Monk" => 4347, "Berserker" => 4347, "Shadowknight" => 4347, "Paladin" => 4347, "Ranger" => 4347, "Bard" => 4347, "Beastlord" => 4347, "Cleric" => 4347, "Druid" => 4347, "Shaman" => 4347, "Wizard" => 4347, "Magician" => 4347, "Enchanter" => 4347, "Necromancer" => 4347);
my %armsv = ("Warrior" => 4379, "Rogue" => 4379, "Monk" => 4379, "Berserker" => 4379, "Shadowknight" => 4379, "Paladin" => 4379, "Ranger" => 4379, "Bard" => 4379, "Beastlord" => 4379, "Cleric" => 4379, "Druid" => 4379, "Shaman" => 4379, "Wizard" => 4379, "Magician" => 4379, "Enchanter" => 4379, "Necromancer" => 4379);
my %glovesv = ("Warrior" => 4414, "Rogue" => 4414, "Monk" => 4414, "Berserker" => 4414, "Shadowknight" => 4414, "Paladin" => 4414, "Ranger" => 4414, "Bard" => 4414, "Beastlord" => 4414, "Cleric" => 4414, "Druid" => 4414, "Shaman" => 4414, "Wizard" => 4414, "Magician" => 4414, "Enchanter" => 4414, "Necromancer" => 4414);
my %bootsv = ("Warrior" => 4441, "Rogue" => 4441, "Monk" => 4441, "Berserker" => 4441, "Shadowknight" => 4441, "Paladin" => 4441, "Ranger" => 4441, "Bard" => 4441, "Beastlord" => 4441, "Cleric" => 4441, "Druid" => 4441, "Shaman" => 4441, "Wizard" => 4441, "Magician" => 4441, "Enchanter" => 4441, "Necromancer" => 4441);

my %chestvu = ("Warrior" => 2660, "Rogue" => 3224, "Monk" => 2886, "Berserker" => 2835, "Shadowknight" => 3232, "Paladin" => 2995, "Ranger" => 3098, "Bard" => 2685, "Beastlord" => 2828, "Cleric" => 2843, "Druid" => 2855, "Shaman" => 3239, "Wizard" => 3442, "Magician" => 2871, "Enchanter" => 2862, "Necromancer" => 2964);
my %legsvu = ("Warrior" => 2665, "Rogue" => 3229, "Monk" => 2889, "Berserker" => 2837, "Shadowknight" => 3236, "Paladin" => 2999, "Ranger" => 3220, "Bard" => 2730, "Beastlord" => 2832, "Cleric" => 2847, "Druid" => 2859, "Shaman" => 3295, "Wizard" => 3482, "Magician" => 2882, "Enchanter" => 2866, "Necromancer" => 2988);
my %bracervu = ("Warrior" => 2663, "Rogue" => 3226, "Monk" => 2888, "Berserker" => 2834, "Shadowknight" => 3234, "Paladin" => 2997, "Ranger" => 3174, "Bard" => 2717, "Beastlord" => 2830, "Cleric" => 2845, "Druid" => 2857, "Shaman" => 3248, "Wizard" => 3480, "Magician" => 2879, "Enchanter" => 2864, "Necromancer" => 2976);
my %helmvu = ("Warrior" => 2661, "Rogue" => 3222, "Monk" => 2885, "Berserker" => 2838, "Shadowknight" => 3231, "Paladin" => 2994, "Ranger" => 3039, "Bard" => 2686, "Beastlord" => 2827, "Cleric" => 2841, "Druid" => 2854, "Shaman" => 3238, "Wizard" => 3404, "Magician" => 2868, "Enchanter" => 2861, "Necromancer" => 2958);
my %armsvu = ("Warrior" => 2666, "Rogue" => 3225, "Monk" => 2887, "Berserker" => 2840, "Shadowknight" => 3233, "Paladin" => 2996, "Ranger" => 3137, "Bard" => 2687, "Beastlord" => 2829, "Cleric" => 2844, "Druid" => 2856, "Shaman" => 3242, "Wizard" => 3479, "Magician" => 2872, "Enchanter" => 2863, "Necromancer" => 2970);
my %glovesvu = ("Warrior" => 2664, "Rogue" => 3227, "Monk" => 2936, "Berserker" => 2836, "Shadowknight" => 3235, "Paladin" => 2998, "Ranger" => 3180, "Bard" => 2718, "Beastlord" => 2831, "Cleric" => 2846, "Druid" => 2858, "Shaman" => 3249, "Wizard" => 3481, "Magician" => 2880, "Enchanter" => 2865, "Necromancer" => 2979);
my %bootsvu = ("Warrior" => 2662, "Rogue" => 3230, "Monk" => 2890, "Berserker" => 2839, "Shadowknight" => 3237, "Paladin" => 3038, "Ranger" => 3221, "Bard" => 2820, "Beastlord" => 2833, "Cleric" => 2852, "Druid" => 2860, "Shaman" => 3397, "Wizard" => 3483, "Magician" => 2884, "Enchanter" => 2867, "Necromancer" => 2993);

my %chestl = ("Warrior" => 4669, "Rogue" => 4669, "Monk" => 4669, "Berserker" => 4669, "Shadowknight" => 4669, "Paladin" => 4669, "Ranger" => 4669, "Bard" => 4669, "Beastlord" => 4669, "Cleric" => 4669, "Druid" => 4669, "Shaman" => 4669, "Wizard" => 4669, "Magician" => 4669, "Enchanter" => 4669, "Necromancer" => 4669);
my %legsl = ("Warrior" => 4667, "Rogue" => 4667, "Monk" => 4667, "Berserker" => 4667, "Shadowknight" => 4667, "Paladin" => 4667, "Ranger" => 4667, "Bard" => 4667, "Beastlord" => 4667, "Cleric" => 4667, "Druid" => 4667, "Shaman" => 4667, "Wizard" => 4667, "Magician" => 4667, "Enchanter" => 4667, "Necromancer" => 4667);
my %bracerl = ("Warrior" => 4661, "Rogue" => 4661, "Monk" => 4661, "Berserker" => 4661, "Shadowknight" => 4661, "Paladin" => 4661, "Ranger" => 4661, "Bard" => 4661, "Beastlord" => 4661, "Cleric" => 4661, "Druid" => 4661, "Shaman" => 4661, "Wizard" => 4661, "Magician" => 4661, "Enchanter" => 4661, "Necromancer" => 4661);
my %helml = ("Warrior" => 4666, "Rogue" => 4666, "Monk" => 4666, "Berserker" => 4666, "Shadowknight" => 4666, "Paladin" => 4666, "Ranger" => 4666, "Bard" => 4666, "Beastlord" => 4666, "Cleric" => 4666, "Druid" => 4666, "Shaman" => 4666, "Wizard" => 4666, "Magician" => 4666, "Enchanter" => 4666, "Necromancer" => 4666);
my %armsl = ("Warrior" => 4668, "Rogue" => 4668, "Monk" => 4668, "Berserker" => 4668, "Shadowknight" => 4668, "Paladin" => 4668, "Ranger" => 4668, "Bard" => 4668, "Beastlord" => 4668, "Cleric" => 4668, "Druid" => 4668, "Shaman" => 4668, "Wizard" => 4668, "Magician" => 4668, "Enchanter" => 4668, "Necromancer" => 4668);
my %glovesl = ("Warrior" => 4662, "Rogue" => 4662, "Monk" => 4662, "Berserker" => 4662, "Shadowknight" => 4662, "Paladin" => 4662, "Ranger" => 4662, "Bard" => 4662, "Beastlord" => 4662, "Cleric" => 4662, "Druid" => 4662, "Shaman" => 4662, "Wizard" => 4662, "Magician" => 4662, "Enchanter" => 4662, "Necromancer" => 4662);
my %bootsl = ("Warrior" => 4664, "Rogue" => 4664, "Monk" => 4664, "Berserker" => 4664, "Shadowknight" => 4664, "Paladin" => 4664, "Ranger" => 4664, "Bard" => 4664, "Beastlord" => 4664, "Cleric" => 4664, "Druid" => 4664, "Shaman" => 4664, "Wizard" => 4664, "Magician" => 4664, "Enchanter" => 4664, "Necromancer" => 4664);

my %chestlu = ("Warrior" => 4259, "Rogue" => 4142, "Monk" => 4067, "Berserker" => 3919, "Shadowknight" => 4160, "Paladin" => 4081, "Ranger" => 4088, "Bard" => 3683, "Beastlord" => 3855, "Cleric" => 3902, "Druid" => 4043, "Shaman" => 4252, "Wizard" => 4332, "Magician" => 4057, "Enchanter" => 4050, "Necromancer" => 4074);
my %legslu = ("Warrior" => 4308, "Rogue" => 4149, "Monk" => 4071, "Berserker" => 4040, "Shadowknight" => 4239, "Paladin" => 4085, "Ranger" => 4117, "Bard" => 3852, "Beastlord" => 3871, "Cleric" => 3911, "Druid" => 4047, "Shaman" => 4256, "Wizard" => 4339, "Magician" => 4063, "Enchanter" => 4054, "Necromancer" => 4078);
my %bracerlu = ("Warrior" => 4269, "Rogue" => 4144, "Monk" => 4069, "Berserker" => 4038, "Shadowknight" => 4198, "Paladin" => 4083, "Ranger" => 4090, "Bard" => 3832, "Beastlord" => 3857, "Cleric" => 3904, "Druid" => 4045, "Shaman" => 4254, "Wizard" => 4336, "Magician" => 4060, "Enchanter" => 4052, "Necromancer" => 4076);
my %helmlu = ("Warrior" => 4258, "Rogue" => 4141, "Monk" => 4066, "Berserker" => 3917, "Shadowknight" => 4151, "Paladin" => 4080, "Ranger" => 4087, "Bard" => 3682, "Beastlord" => 3854, "Cleric" => 3901, "Druid" => 4042, "Shaman" => 4251, "Wizard" => 4326, "Magician" => 4056, "Enchanter" => 4049, "Necromancer" => 4073);
my %armslu = ("Warrior" => 4268, "Rogue" => 4143, "Monk" => 4068, "Berserker" => 4000, "Shadowknight" => 4197, "Paladin" => 4082, "Ranger" => 4089, "Bard" => 3821, "Beastlord" => 3856, "Cleric" => 3903, "Druid" => 4044, "Shaman" => 4253, "Wizard" => 4333, "Magician" => 4059, "Enchanter" => 4051, "Necromancer" => 4075);
my %gloveslu = ("Warrior" => 4278, "Rogue" => 4145, "Monk" => 4070, "Berserker" => 4039, "Shadowknight" => 4237, "Paladin" => 4084, "Ranger" => 4092, "Bard" => 3851, "Beastlord" => 3858, "Cleric" => 3905, "Druid" => 4046, "Shaman" => 4255, "Wizard" => 4338, "Magician" => 4062, "Enchanter" => 4053, "Necromancer" => 4077);
my %bootslu = ("Warrior" => 4325, "Rogue" => 4150, "Monk" => 4072, "Berserker" => 4041, "Shadowknight" => 4250, "Paladin" => 4086, "Ranger" => 4140, "Bard" => 3853, "Beastlord" => 3885, "Cleric" => 3912, "Druid" => 4048, "Shaman" => 4257, "Wizard" => 4340, "Magician" => 4064, "Enchanter" => 4055, "Necromancer" => 4079);

my %chestwa = ("Warrior" => 7028, "Rogue" => 7028, "Monk" => 7028, "Berserker" => 7028, "Shadowknight" => 7028, "Paladin" => 7028, "Ranger" => 7028, "Bard" => 7028, "Beastlord" => 7028, "Cleric" => 7028, "Druid" => 7028, "Shaman" => 7028, "Wizard" => 7028, "Magician" => 7028, "Enchanter" => 7028, "Necromancer" => 7028);
my %legswa = ("Warrior" => 7011, "Rogue" => 7011, "Monk" => 7011, "Berserker" => 7011, "Shadowknight" => 7011, "Paladin" => 7011, "Ranger" => 7011, "Bard" => 7011, "Beastlord" => 7011, "Cleric" => 7011, "Druid" => 7011, "Shaman" => 7011, "Wizard" => 7011, "Magician" => 7011, "Enchanter" => 7011, "Necromancer" => 7011);
my %bracerwa = ("Warrior" => 6880, "Rogue" => 6880, "Monk" => 6880, "Berserker" => 6880, "Shadowknight" => 6880, "Paladin" => 6880, "Ranger" => 6880, "Bard" => 6880, "Beastlord" => 6880, "Cleric" => 6880, "Druid" => 6880, "Shaman" => 6880, "Wizard" => 6880, "Magician" => 6880, "Enchanter" => 6880, "Necromancer" => 6880);
my %helmwa = ("Warrior" => 6951, "Rogue" => 6951, "Monk" => 6951, "Berserker" => 6951, "Shadowknight" => 6951, "Paladin" => 6951, "Ranger" => 6951, "Bard" => 6951, "Beastlord" => 6951, "Cleric" => 6951, "Druid" => 6951, "Shaman" => 6951, "Wizard" => 6951, "Magician" => 6951, "Enchanter" => 6951, "Necromancer" => 6951);
my %armswa = ("Warrior" => 7006, "Rogue" => 7006, "Monk" => 7006, "Berserker" => 7006, "Shadowknight" => 7006, "Paladin" => 7006, "Ranger" => 7006, "Bard" => 7006, "Beastlord" => 7006, "Cleric" => 7006, "Druid" => 7006, "Shaman" => 7006, "Wizard" => 7006, "Magician" => 7006, "Enchanter" => 7006, "Necromancer" => 7006);
my %gloveswa = ("Warrior" => 6928, "Rogue" => 6928, "Monk" => 6928, "Berserker" => 6928, "Shadowknight" => 6928, "Paladin" => 6928, "Ranger" => 6928, "Bard" => 6928, "Beastlord" => 6928, "Cleric" => 6928, "Druid" => 6928, "Shaman" => 6928, "Wizard" => 6928, "Magician" => 6928, "Enchanter" => 6928, "Necromancer" => 6928);
my %bootswa = ("Warrior" => 6929, "Rogue" => 6929, "Monk" => 6929, "Berserker" => 6929, "Shadowknight" => 6929, "Paladin" => 6929, "Ranger" => 6929, "Bard" => 6929, "Beastlord" => 6929, "Cleric" => 6929, "Druid" => 6929, "Shaman" => 6929, "Wizard" => 6929, "Magician" => 6929, "Enchanter" => 6929, "Necromancer" => 6929);

sub EVENT_ITEM {
if ($class eq 'Warrior' || $class eq 'Rogue' || $class eq 'Monk' || $class eq 'Berserker' || $class eq 'Shadowknight' || $class eq 'Paladin' || $class eq 'Ranger' || $class eq 'Bard' || $class eq 'Beastlord' || $class eq 'Cleric' || $class eq 'Druid' || $class eq 'Shaman' || $class eq 'Wizard' || $class eq 'Magician' || $class eq 'Enchanter' || $class eq 'Necromancer') {
######## Classic armor ########
  if(defined($helm{$class})) {
    if (plugin::check_handin(\%itemcount, ($helm{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2439, "Rogue" => 2421, "Monk" => 1826, "Berserker" => 1577, "Shadowknight" => 2380, "Paladin" => 2096, "Ranger" => 2298, "Bard" => 1443, "Beastlord" => 1569, "Cleric" => 1592, "Druid" => 1660, "Shaman" => 2432, "Wizard" => 2486, "Magician" => 1812, "Enchanter" => 1805, "Necromancer" => 1848
      );
        if(defined($rewards{$class})) {
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($arms{$class})) {
    if (plugin::check_handin(\%itemcount, ($arms{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2443, "Rogue" => 2423, "Monk" => 1836, "Berserker" => 1581, "Shadowknight" => 2382, "Paladin" => 2273, "Ranger" => 2372, "Bard" => 1446, "Beastlord" => 1568, "Cleric" => 1655, "Druid" => 1662, "Shaman" => 2434, "Wizard" => 2488, "Magician" => 1817, "Enchanter" => 1807, "Necromancer" => 1902
      );
        if(defined($rewards{$class})) {
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($gloves{$class})) {
    if (plugin::check_handin(\%itemcount, ($gloves{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2445, "Rogue" => 2425, "Monk" => 1845, "Berserker" => 1586, "Shadowknight" => 2385, "Paladin" => 2275, "Ranger" => 2377, "Bard" => 1448, "Beastlord" => 1533, "Cleric" => 1657, "Druid" => 1664, "Shaman" => 2436, "Wizard" => 2493, "Magician" => 1819, "Enchanter" => 1809, "Necromancer" => 1909
      );
        if(defined($rewards{$class})) {
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($boots{$class})) {
    if (plugin::check_handin(\%itemcount, ($boots{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2473, "Rogue" => 2431, "Monk" => 1847, "Berserker" => 1591, "Shadowknight" => 2415, "Paladin" => 2278, "Ranger" => 2379, "Bard" => 1450, "Beastlord" => 1502, "Cleric" => 1659, "Druid" => 1732, "Shaman" => 2438, "Wizard" => 2495, "Magician" => 1824, "Enchanter" => 1811, "Necromancer" => 2095
      );
        if(defined($rewards{$class})) {
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracer{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracer{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2444, "Rogue" => 2424, "Monk" => 1844, "Berserker" => 1582, "Shadowknight" => 2383, "Paladin" => 2274, "Ranger" => 2376, "Bard" => 1447, "Beastlord" => 1458, "Cleric" => 1656, "Druid" => 1663, "Shaman" => 2435, "Wizard" => 2489, "Magician" => 1818, "Enchanter" => 1808, "Necromancer" => 1907
      );
        if(defined($rewards{$class})) {
          quest::say("Perhaps you managed to slay the masquarading Siphon Dragon!  Or, maybe that dragon is just a Dwarven myth after all and you obtained this elsewhere.");
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chest{$class})) {
    if (plugin::check_handin(\%itemcount, ($chest{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2442, "Rogue" => 2422, "Monk" => 1825, "Berserker" => 1579, "Shadowknight" => 2381, "Paladin" => 2098, "Ranger" => 2370, "Bard" => 1445, "Beastlord" => 1563, "Cleric" => 1654, "Druid" => 1661, "Shaman" => 2433, "Wizard" => 2487, "Magician" => 1813, "Enchanter" => 1806, "Necromancer" => 1901
      );
        if(defined($rewards{$class})) {
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legs{$class})) {
    if (plugin::check_handin(\%itemcount, ($legs{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2451, "Rogue" => 2430, "Monk" => 1846, "Berserker" => 1587, "Shadowknight" => 2393, "Paladin" => 2277, "Ranger" => 2378, "Bard" => 1449, "Beastlord" => 1503, "Cleric" => 1658, "Druid" => 1716, "Shaman" => 2437, "Wizard" => 2494, "Magician" => 1823, "Enchanter" => 1810, "Necromancer" => 2052
      );
        if(defined($rewards{$class})) {
          quest::emote("grips the ragged armor in his hands and shines the old parts to a new shine." );
          quest::say("Ahh, $name, here you go!  I thought there might be something worth while under all this grime!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
######## Kunark armor ########
  if(defined($helmk{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2661, "Rogue" => 3222, "Monk" => 2885, "Berserker" => 2838, "Shadowknight" => 3231, "Paladin" => 2994, "Ranger" => 3039, "Bard" => 2686, "Beastlord" => 2827, "Cleric" => 2841, "Druid" => 2854, "Shaman" => 3238, "Wizard" => 3404, "Magician" => 2827, "Enchanter" => 2861, "Necromancer" => 2958
      );
        if(defined($rewards{$class})) {
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsk{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2666, "Rogue" => 3225, "Monk" => 2887, "Berserker" => 2840, "Shadowknight" => 3233, "Paladin" => 2996, "Ranger" => 3137, "Bard" => 2687, "Beastlord" => 2829, "Cleric" => 2844, "Druid" => 2856, "Shaman" => 3242, "Wizard" => 3478, "Magician" => 2872, "Enchanter" => 2863, "Necromancer" => 2970
      );
        if(defined($rewards{$class})) {
           quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesk{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2664, "Rogue" => 3227, "Monk" => 2936, "Berserker" => 2863, "Shadowknight" => 3235, "Paladin" => 2998, "Ranger" => 3180, "Bard" => 2718, "Beastlord" => 2831, "Cleric" => 2846, "Druid" => 2858, "Shaman" => 3249, "Wizard" => 3481, "Magician" => 2880, "Enchanter" => 2865, "Necromancer" => 2979
      );
        if(defined($rewards{$class})) {
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsk{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2662, "Rogue" => 3230, "Monk" => 2890, "Berserker" => 2833, "Shadowknight" => 3237, "Paladin" => 3038, "Ranger" => 3221, "Bard" => 2820, "Beastlord" => 2833, "Cleric" => 2852, "Druid" => 2860, "Shaman" => 3397, "Wizard" => 3483, "Magician" => 2884, "Enchanter" => 2867, "Necromancer" => 2993
      );
        if(defined($rewards{$class})) {
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerk{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2663, "Rogue" => 3226, "Monk" => 2888, "Berserker" => 2834, "Shadowknight" => 3234, "Paladin" => 2997, "Ranger" => 3174, "Bard" => 2717, "Beastlord" => 2830, "Cleric" => 2845, "Druid" => 2857, "Shaman" => 3248, "Wizard" => 3480, "Magician" => 2879, "Enchanter" => 2864, "Necromancer" => 2976
      );
        if(defined($rewards{$class})) {
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestk{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2660, "Rogue" => 3224, "Monk" => 2886, "Berserker" => 2838, "Shadowknight" => 3232, "Paladin" => 2995, "Ranger" => 3098, "Bard" => 2685, "Beastlord" => 2828, "Cleric" => 2843, "Druid" => 2855, "Shaman" => 3239, "Wizard" => 3442, "Magician" => 2871, "Enchanter" => 2862, "Necromancer" => 2964
      );
        if(defined($rewards{$class})) {
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsk{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsk{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 2665, "Rogue" => 3229, "Monk" => 2889, "Berserker" => 2837, "Shadowknight" => 3236, "Paladin" => 2999, "Ranger" => 3220, "Bard" => 2730, "Beastlord" => 2832, "Cleric" => 2847, "Druid" => 2859, "Shaman" => 3295, "Wizard" => 3482, "Magician" => 2882, "Enchanter" => 2866, "Necromancer" => 2988
      );
        if(defined($rewards{$class})) {
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
######## Velious armor ########
  if(defined($helmv{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4258, "Rogue" => 4141, "Monk" => 4066, "Berserker" => 3917, "Shadowknight" => 4151, "Paladin" => 4080, "Ranger" => 4087, "Bard" => 3682, "Beastlord" => 3854, "Cleric" => 3901, "Druid" => 4042, "Shaman" => 4251, "Wizard" => 4326, "Magician" => 4056, "Enchanter" => 4049, "Necromancer" => 4073
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsv{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4268, "Rogue" => 4143, "Monk" => 4068, "Berserker" => 4000, "Shadowknight" => 4197, "Paladin" => 4082, "Ranger" => 4089, "Bard" => 3821, "Beastlord" => 3856, "Cleric" => 3903, "Druid" => 4044, "Shaman" => 4253, "Wizard" => 4333, "Magician" => 4059, "Enchanter" => 4051, "Necromancer" => 4075
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesv{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4278, "Rogue" => 4145, "Monk" => 4070, "Berserker" => 4039, "Shadowknight" => 4278, "Paladin" => 4084, "Ranger" => 4092, "Bard" => 3851, "Beastlord" => 3858, "Cleric" => 3905, "Druid" => 4046, "Shaman" => 4255, "Wizard" => 4338, "Magician" => 4062, "Enchanter" => 4053, "Necromancer" => 4077
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsv{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4325, "Rogue" => 4150, "Monk" => 4072, "Berserker" => 4041, "Shadowknight" => 4250, "Paladin" => 4086, "Ranger" => 4140, "Bard" => 3853, "Beastlord" => 3885, "Cleric" => 3912, "Druid" => 4048, "Shaman" => 4257, "Wizard" => 4340, "Magician" => 4064, "Enchanter" => 4055, "Necromancer" => 4079
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerv{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4269, "Rogue" => 4144, "Monk" => 4069, "Berserker" => 4038, "Shadowknight" => 4198, "Paladin" => 4083, "Ranger" => 4090, "Bard" => 3832, "Beastlord" => 3857, "Cleric" => 3904, "Druid" => 4045, "Shaman" => 4254, "Wizard" => 4336, "Magician" => 4060, "Enchanter" => 4052, "Necromancer" => 4076
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestv{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4259, "Rogue" => 4142, "Monk" => 4067, "Berserker" => 3919, "Shadowknight" => 4160, "Paladin" => 4081, "Ranger" => 4088, "Bard" => 3683, "Beastlord" => 3919, "Cleric" => 3902, "Druid" => 4043, "Shaman" => 4252, "Wizard" => 4332, "Magician" => 4057, "Enchanter" => 4050, "Necromancer" => 4074
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsv{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsv{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 4308, "Rogue" => 4149, "Monk" => 4071, "Berserker" => 4040, "Shadowknight" => 4239, "Paladin" => 4085, "Ranger" => 4117, "Bard" => 3852, "Beastlord" => 3871, "Cleric" => 3911, "Druid" => 4047, "Shaman" => 4256, "Wizard" => 4339, "Magician" => 4063, "Enchanter" => 4054, "Necromancer" => 4078
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
######## Luclin armor ########
  if(defined($helml{$class})) {
    if (plugin::check_handin(\%itemcount, ($helml{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5700, "Rogue" => 5515, "Monk" => 6043, "Berserker" => 4804, "Shadowknight" => 5521, "Paladin" => 5333, "Ranger" => 5421, "Bard" => 4646, "Beastlord" => 4653, "Cleric" => 4823, "Druid" => 4827, "Shaman" => 5618, "Wizard" => 5775, "Magician" => 5084, "Enchanter" => 4967, "Necromancer" => 5202
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsl{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsl{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5720, "Rogue" => 5516, "Monk" => 5093, "Berserker" => 4671, "Shadowknight" => 5527, "Paladin" => 5375, "Ranger" => 5427, "Bard" => 4648, "Beastlord" => 4655, "Cleric" => 4824, "Druid" => 4964, "Shaman" => 5634, "Wizard" => 5787, "Magician" => 5086, "Enchanter" => 5081, "Necromancer" => 5302
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesl{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesl{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5750, "Rogue" => 5512, "Monk" => 5111, "Berserker" => 4805, "Shadowknight" => 5583, "Paladin" => 5390, "Ranger" => 5428, "Bard" => 4649, "Beastlord" => 4657, "Cleric" => 4821, "Druid" => 4830, "Shaman" => 5645, "Wizard" => 5789, "Magician" => 5087, "Enchanter" => 5059, "Necromancer" => 5318
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsl{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsl{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5769, "Rogue" => 5510, "Monk" => 5150, "Berserker" => 4700, "Shadowknight" => 5601, "Paladin" => 5419, "Ranger" => 5508, "Bard" => 4651, "Beastlord" => 4660, "Cleric" => 4806, "Druid" => 4825, "Shaman" => 5650, "Wizard" => 5792, "Magician" => 5090, "Enchanter" => 5083, "Necromancer" => 5324
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerl{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerl{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5707, "Rogue" => 5511, "Monk" => 5092, "Berserker" => 4801, "Shadowknight" => 5524, "Paladin" => 5371, "Ranger" => 5426, "Bard" => 4647, "Beastlord" => 4656, "Cleric" => 4807, "Druid" => 4826, "Shaman" => 5628, "Wizard" => 5783, "Magician" => 5085, "Enchanter" => 4966, "Necromancer" => 5229
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestl{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestl{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5770, "Rogue" => 5514, "Monk" => 5170, "Berserker" => 4802, "Shadowknight" => 5602, "Paladin" => 5420, "Ranger" => 5509, "Bard" => 4652, "Beastlord" => 4654, "Cleric" => 4811, "Druid" => 4965, "Shaman" => 5651, "Wizard" => 5793, "Magician" => 5091, "Enchanter" => 5080, "Necromancer" => 5332
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsl{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsl{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 5755, "Rogue" => 5513, "Monk" => 5147, "Berserker" => 4803, "Shadowknight" => 5600, "Paladin" => 5409, "Ranger" => 5505, "Bard" => 4650, "Beastlord" => 4659, "Cleric" => 4822, "Druid" => 4963, "Shaman" => 5648, "Wizard" => 5790, "Magician" => 5088, "Enchanter" => 5065, "Necromancer" => 5323
      );
        if(defined($rewards{$class})) {
		  quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your lunar armor piece!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
######## Worlds Apart armor ########
  if(defined($helmwa{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmwa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 9629, "Rogue" => 9806, "Monk" => 9809, "Berserker" => 55513, "Shadowknight" => 9815, "Paladin" => 9812, "Ranger" => 9821, "Bard" => 9818, "Beastlord" => 9824, "Cleric" => 9827, "Druid" => 9833, "Shaman" => 9830, "Wizard" => 9950, "Magician" => 9944, "Enchanter" => 9836, "Necromancer" => 9947
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient armor before him." );
          quest::say("Oh, $name, this is quite a find!  I thought these were perhaps only a rumor, but they do exist.  A little adjustment here...  A glowing stone inserted here...  There you go, my friend.  Now, about that beer you mentioned...");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armswa{$class})) {
    if (plugin::check_handin(\%itemcount, ($armswa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 11429, "Rogue" => 11432, "Monk" => 11435, "Berserker" => 55508, "Shadowknight" => 11441, "Paladin" => 11438, "Ranger" => 11447, "Bard" => 11444, "Beastlord" => 11450, "Cleric" => 32012, "Druid" => 11575, "Shaman" => 11529, "Wizard" => 11876, "Magician" => 11598, "Enchanter" => 11578, "Necromancer" => 11618
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient armor before him." );
          quest::say("Oh, $name, this is quite a find!  I thought these were perhaps only a rumor, but they do exist.  A little adjustment here...  A glowing stone inserted here...  There you go, my friend.  Now, about that beer you mentioned...");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($gloveswa{$class})) {
    if (plugin::check_handin(\%itemcount, ($gloveswa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 12595, "Rogue" => 12598, "Monk" => 12624, "Berserker" => 55514, "Shadowknight" => 12637, "Paladin" => 12627, "Ranger" => 12816, "Bard" => 12664, "Beastlord" => 13553, "Cleric" => 13563, "Druid" => 13603, "Shaman" => 13579, "Wizard" => 13627, "Magician" => 13619, "Enchanter" => 13614, "Necromancer" => 13623
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient armor before him." );
          quest::say("Oh, $name, this is quite a find!  I thought these were perhaps only a rumor, but they do exist.  A little adjustment here...  A glowing stone inserted here...  There you go, my friend.  Now, about that beer you mentioned...");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootswa{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootswa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 19440, "Rogue" => 19443, "Monk" => 19446, "Berserker" => 55509, "Shadowknight" => 19546, "Paladin" => 19449, "Ranger" => 19838, "Bard" => 19549, "Beastlord" => 20032, "Cleric" => 20074, "Druid" => 20422, "Shaman" => 20078, "Wizard" => 20434, "Magician" => 20428, "Enchanter" => 20425, "Necromancer" => 20431
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient armor before him." );
          quest::say("Oh, $name, this is quite a find!  I thought these were perhaps only a rumor, but they do exist.  A little adjustment here...  A glowing stone inserted here...  There you go, my friend.  Now, about that beer you mentioned...");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerwa{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerwa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 11138, "Rogue" => 11141, "Monk" => 11146, "Berserker" => 55510, "Shadowknight" => 11173, "Paladin" => 11163, "Ranger" => 11193, "Bard" => 11178, "Beastlord" => 11196, "Cleric" => 11199, "Druid" => 11281, "Shaman" => 11278, "Wizard" => 11309, "Magician" => 11303, "Enchanter" => 11298, "Necromancer" => 11306
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient planar armor before him." );
          quest::say("Oh, $name, this is quite a find!  I thought these were perhaps only a rumor, but they do exist.  A little adjustment here...  A glowing stone inserted here...  There you go, my friend.  Now, about that beer you mentioned...");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestwa{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestwa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 47642, "Rogue" => 47648, "Monk" => 47650, "Berserker" => 55511, "Shadowknight" => 47645, "Paladin" => 47644, "Ranger" => 47647, "Bard" => 47643, "Beastlord" => 47652, "Cleric" => 47646, "Druid" => 47651, "Shaman" => 47649, "Wizard" => 47654, "Magician" => 47655, "Enchanter" => 47656, "Necromancer" => 47653
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient armor before him." );
          quest::say("Oh, $name, this is rare find indeed!  A little adjustment here...  A few glowing stones inserted here...  There you go, my friend.  This is the [pinnacle of skill] by Dogglesworth.");
          quest::exp(20000);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legswa{$class})) {
    if (plugin::check_handin(\%itemcount, ($legswa{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 16693, "Rogue" => 16717, "Monk" => 16727, "Berserker" => 55512, "Shadowknight" => 16763, "Paladin" => 16757, "Ranger" => 16777, "Bard" => 16771, "Beastlord" => 16787, "Cleric" => 16797, "Druid" => 16811, "Shaman" => 16803, "Wizard" => 19027, "Magician" => 19021, "Enchanter" => 16931, "Necromancer" => 19024
      );
        if(defined($rewards{$class})) {
          quest::emote("ponders the exquisite, ancient armor before him." );
          quest::say("Oh, $name, this is quite a find!  I thought these were perhaps only a rumor, but they do exist.  A little adjustment here...  A glowing stone inserted here...  There you go, my friend.  Now, about that beer you mentioned...");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
######## Classic to Kunark upgrade ########
  if(defined($helmku{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2661, "Rogue" => 3222, "Monk" => 2885, "Berserker" => 2838, "Shadowknight" => 3231, "Paladin" => 2994, "Ranger" => 3039, "Bard" => 2686, "Beastlord" => 2827, "Cleric" => 2841, "Druid" => 2854, "Shaman" => 3238, "Wizard" => 3404, "Magician" => 2827, "Enchanter" => 2861, "Necromancer" => 2958
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2666, "Rogue" => 3225, "Monk" => 2887, "Berserker" => 2840, "Shadowknight" => 3233, "Paladin" => 2996, "Ranger" => 3137, "Bard" => 2687, "Beastlord" => 2829, "Cleric" => 2844, "Druid" => 2856, "Shaman" => 3242, "Wizard" => 3478, "Magician" => 2872, "Enchanter" => 2863, "Necromancer" => 2970
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesku{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2664, "Rogue" => 3227, "Monk" => 2936, "Berserker" => 2863, "Shadowknight" => 3235, "Paladin" => 2998, "Ranger" => 3180, "Bard" => 2718, "Beastlord" => 2831, "Cleric" => 2846, "Druid" => 2858, "Shaman" => 3249, "Wizard" => 3481, "Magician" => 2880, "Enchanter" => 2865, "Necromancer" => 2979
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2662, "Rogue" => 3230, "Monk" => 2890, "Berserker" => 2833, "Shadowknight" => 3237, "Paladin" => 3038, "Ranger" => 3221, "Bard" => 2820, "Beastlord" => 2833, "Cleric" => 2852, "Druid" => 2860, "Shaman" => 3397, "Wizard" => 3483, "Magician" => 2884, "Enchanter" => 2867, "Necromancer" => 2993
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2663, "Rogue" => 3226, "Monk" => 2888, "Berserker" => 2834, "Shadowknight" => 3234, "Paladin" => 2997, "Ranger" => 3174, "Bard" => 2717, "Beastlord" => 2830, "Cleric" => 2845, "Druid" => 2857, "Shaman" => 3248, "Wizard" => 3480, "Magician" => 2879, "Enchanter" => 2864, "Necromancer" => 2976
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestku{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2660, "Rogue" => 3224, "Monk" => 2886, "Berserker" => 2838, "Shadowknight" => 3232, "Paladin" => 2995, "Ranger" => 3098, "Bard" => 2685, "Beastlord" => 2828, "Cleric" => 2843, "Druid" => 2855, "Shaman" => 3239, "Wizard" => 3442, "Magician" => 2871, "Enchanter" => 2862, "Necromancer" => 2964
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsku{$class}) => 1, 1439 => 1)) {
      my %rewards = (
      "Warrior" => 2665, "Rogue" => 3229, "Monk" => 2889, "Berserker" => 2837, "Shadowknight" => 3236, "Paladin" => 2999, "Ranger" => 3220, "Bard" => 2730, "Beastlord" => 2832, "Cleric" => 2847, "Druid" => 2859, "Shaman" => 3295, "Wizard" => 3482, "Magician" => 2882, "Enchanter" => 2866, "Necromancer" => 2988
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmku{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmku{$class}) => 1, 1440 => 1)) {
      my %rewards = (
      "Warrior" => 2661, "Rogue" => 3222, "Monk" => 2885, "Berserker" => 2838, "Shadowknight" => 3231, "Paladin" => 2994, "Ranger" => 3039, "Bard" => 2686, "Beastlord" => 2827, "Cleric" => 2841, "Druid" => 2854, "Shaman" => 3238, "Wizard" => 3404, "Magician" => 2827, "Enchanter" => 2861, "Necromancer" => 2958
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsku{$class}) => 1, 1440 => 1)) {
      my %rewards = (
      "Warrior" => 2666, "Rogue" => 3225, "Monk" => 2887, "Berserker" => 2840, "Shadowknight" => 3233, "Paladin" => 2996, "Ranger" => 3137, "Bard" => 2687, "Beastlord" => 2829, "Cleric" => 2844, "Druid" => 2856, "Shaman" => 3242, "Wizard" => 3478, "Magician" => 2872, "Enchanter" => 2863, "Necromancer" => 2970
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesku{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesku{$class}) => 1, 1440 => 1)) {
      my %rewards = (
      "Warrior" => 2664, "Rogue" => 3227, "Monk" => 2936, "Berserker" => 2863, "Shadowknight" => 3235, "Paladin" => 2998, "Ranger" => 3180, "Bard" => 2718, "Beastlord" => 2831, "Cleric" => 2846, "Druid" => 2858, "Shaman" => 3249, "Wizard" => 3481, "Magician" => 2880, "Enchanter" => 2865, "Necromancer" => 2979
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsku{$class}) => 1, 1440 => 1)) {
      my %rewards = (
      "Warrior" => 2662, "Rogue" => 3230, "Monk" => 2890, "Berserker" => 2833, "Shadowknight" => 3237, "Paladin" => 3038, "Ranger" => 3221, "Bard" => 2820, "Beastlord" => 2833, "Cleric" => 2852, "Druid" => 2860, "Shaman" => 3397, "Wizard" => 3483, "Magician" => 2884, "Enchanter" => 2867, "Necromancer" => 2993
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerku{$class}) => 1, 1440 => 1)) {
      my %rewards = (
      "Warrior" => 2663, "Rogue" => 3226, "Monk" => 2888, "Berserker" => 2834, "Shadowknight" => 3234, "Paladin" => 2997, "Ranger" => 3174, "Bard" => 2717, "Beastlord" => 2830, "Cleric" => 2845, "Druid" => 2857, "Shaman" => 3248, "Wizard" => 3480, "Magician" => 2879, "Enchanter" => 2864, "Necromancer" => 2976
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestku{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestku{$class}) => 1, 1440=> 1)) {
      my %rewards = (
      "Warrior" => 2660, "Rogue" => 3224, "Monk" => 2886, "Berserker" => 2838, "Shadowknight" => 3232, "Paladin" => 2995, "Ranger" => 3098, "Bard" => 2685, "Beastlord" => 2828, "Cleric" => 2843, "Druid" => 2855, "Shaman" => 3239, "Wizard" => 3442, "Magician" => 2871, "Enchanter" => 2862, "Necromancer" => 2964
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsku{$class}) => 1, 1440 => 1)) {
      my %rewards = (
      "Warrior" => 2665, "Rogue" => 3229, "Monk" => 2889, "Berserker" => 2837, "Shadowknight" => 3236, "Paladin" => 2999, "Ranger" => 3220, "Bard" => 2730, "Beastlord" => 2832, "Cleric" => 2847, "Druid" => 2859, "Shaman" => 3295, "Wizard" => 3482, "Magician" => 2882, "Enchanter" => 2866, "Necromancer" => 2988
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmku{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2661, "Rogue" => 3222, "Monk" => 2885, "Berserker" => 2838, "Shadowknight" => 3231, "Paladin" => 2994, "Ranger" => 3039, "Bard" => 2686, "Beastlord" => 2827, "Cleric" => 2841, "Druid" => 2854, "Shaman" => 3238, "Wizard" => 3404, "Magician" => 2827, "Enchanter" => 2861, "Necromancer" => 2958
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2666, "Rogue" => 3225, "Monk" => 2887, "Berserker" => 2840, "Shadowknight" => 3233, "Paladin" => 2996, "Ranger" => 3137, "Bard" => 2687, "Beastlord" => 2829, "Cleric" => 2844, "Druid" => 2856, "Shaman" => 3242, "Wizard" => 3478, "Magician" => 2872, "Enchanter" => 2863, "Necromancer" => 2970
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesku{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2664, "Rogue" => 3227, "Monk" => 2936, "Berserker" => 2863, "Shadowknight" => 3235, "Paladin" => 2998, "Ranger" => 3180, "Bard" => 2718, "Beastlord" => 2831, "Cleric" => 2846, "Druid" => 2858, "Shaman" => 3249, "Wizard" => 3481, "Magician" => 2880, "Enchanter" => 2865, "Necromancer" => 2979
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2662, "Rogue" => 3230, "Monk" => 2890, "Berserker" => 2833, "Shadowknight" => 3237, "Paladin" => 3038, "Ranger" => 3221, "Bard" => 2820, "Beastlord" => 2833, "Cleric" => 2852, "Druid" => 2860, "Shaman" => 3397, "Wizard" => 3483, "Magician" => 2884, "Enchanter" => 2867, "Necromancer" => 2993
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2663, "Rogue" => 3226, "Monk" => 2888, "Berserker" => 2834, "Shadowknight" => 3234, "Paladin" => 2997, "Ranger" => 3174, "Bard" => 2717, "Beastlord" => 2830, "Cleric" => 2845, "Druid" => 2857, "Shaman" => 3248, "Wizard" => 3480, "Magician" => 2879, "Enchanter" => 2864, "Necromancer" => 2976
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestku{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2660, "Rogue" => 3224, "Monk" => 2886, "Berserker" => 2838, "Shadowknight" => 3232, "Paladin" => 2995, "Ranger" => 3098, "Bard" => 2685, "Beastlord" => 2828, "Cleric" => 2843, "Druid" => 2855, "Shaman" => 3239, "Wizard" => 3442, "Magician" => 2871, "Enchanter" => 2862, "Necromancer" => 2964
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsku{$class}) => 1, 1441 => 1)) {
      my %rewards = (
      "Warrior" => 2665, "Rogue" => 3229, "Monk" => 2889, "Berserker" => 2837, "Shadowknight" => 3236, "Paladin" => 2999, "Ranger" => 3220, "Bard" => 2730, "Beastlord" => 2832, "Cleric" => 2847, "Druid" => 2859, "Shaman" => 3295, "Wizard" => 3482, "Magician" => 2882, "Enchanter" => 2866, "Necromancer" => 2988
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmku{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2661, "Rogue" => 3222, "Monk" => 2885, "Berserker" => 2838, "Shadowknight" => 3231, "Paladin" => 2994, "Ranger" => 3039, "Bard" => 2686, "Beastlord" => 2827, "Cleric" => 2841, "Druid" => 2854, "Shaman" => 3238, "Wizard" => 3404, "Magician" => 2827, "Enchanter" => 2861, "Necromancer" => 2958
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2666, "Rogue" => 3225, "Monk" => 2887, "Berserker" => 2840, "Shadowknight" => 3233, "Paladin" => 2996, "Ranger" => 3137, "Bard" => 2687, "Beastlord" => 2829, "Cleric" => 2844, "Druid" => 2856, "Shaman" => 3242, "Wizard" => 3478, "Magician" => 2872, "Enchanter" => 2863, "Necromancer" => 2970
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesku{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2664, "Rogue" => 3227, "Monk" => 2936, "Berserker" => 2863, "Shadowknight" => 3235, "Paladin" => 2998, "Ranger" => 3180, "Bard" => 2718, "Beastlord" => 2831, "Cleric" => 2846, "Druid" => 2858, "Shaman" => 3249, "Wizard" => 3481, "Magician" => 2880, "Enchanter" => 2865, "Necromancer" => 2979
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2662, "Rogue" => 3230, "Monk" => 2890, "Berserker" => 2833, "Shadowknight" => 3237, "Paladin" => 3038, "Ranger" => 3221, "Bard" => 2820, "Beastlord" => 2833, "Cleric" => 2852, "Druid" => 2860, "Shaman" => 3397, "Wizard" => 3483, "Magician" => 2884, "Enchanter" => 2867, "Necromancer" => 2993
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerku{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2663, "Rogue" => 3226, "Monk" => 2888, "Berserker" => 2834, "Shadowknight" => 3234, "Paladin" => 2997, "Ranger" => 3174, "Bard" => 2717, "Beastlord" => 2830, "Cleric" => 2845, "Druid" => 2857, "Shaman" => 3248, "Wizard" => 3480, "Magician" => 2879, "Enchanter" => 2864, "Necromancer" => 2976
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestku{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2660, "Rogue" => 3224, "Monk" => 2886, "Berserker" => 2838, "Shadowknight" => 3232, "Paladin" => 2995, "Ranger" => 3098, "Bard" => 2685, "Beastlord" => 2828, "Cleric" => 2843, "Druid" => 2855, "Shaman" => 3239, "Wizard" => 3442, "Magician" => 2871, "Enchanter" => 2862, "Necromancer" => 2964
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsku{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsku{$class}) => 1, 1442 => 1)) {
      my %rewards = (
      "Warrior" => 2665, "Rogue" => 3229, "Monk" => 2889, "Berserker" => 2837, "Shadowknight" => 3236, "Paladin" => 2999, "Ranger" => 3220, "Bard" => 2730, "Beastlord" => 2832, "Cleric" => 2847, "Druid" => 2859, "Shaman" => 3295, "Wizard" => 3482, "Magician" => 2882, "Enchanter" => 2866, "Necromancer" => 2988
      );
        if(defined($rewards{$class})) {
          quest::emote("takes the gem and carelessly smashes it against the old armor." );
          quest::emote("takes a swig from his skin of ale." );
          quest::say("Ahh, $name, here is your armor piece made with the finest of skill by Dooglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
######## Kunark to Velious upgrade ########
  if(defined($helmvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmvu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4258, "Rogue" => 4141, "Monk" => 4066, "Berserker" => 3917, "Shadowknight" => 4151, "Paladin" => 4080, "Ranger" => 4087, "Bard" => 3682, "Beastlord" => 3854, "Cleric" => 3901, "Druid" => 4042, "Shaman" => 4251, "Wizard" => 4326, "Magician" => 4056, "Enchanter" => 4049, "Necromancer" => 4073
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsvu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4268, "Rogue" => 4143, "Monk" => 4068, "Berserker" => 4000, "Shadowknight" => 4197, "Paladin" => 4082, "Ranger" => 4089, "Bard" => 3821, "Beastlord" => 3856, "Cleric" => 3903, "Druid" => 4044, "Shaman" => 4253, "Wizard" => 4333, "Magician" => 4059, "Enchanter" => 4051, "Necromancer" => 4075
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesvu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4278, "Rogue" => 4145, "Monk" => 4070, "Berserker" => 4039, "Shadowknight" => 4278, "Paladin" => 4084, "Ranger" => 4092, "Bard" => 3851, "Beastlord" => 3858, "Cleric" => 3905, "Druid" => 4046, "Shaman" => 4255, "Wizard" => 4338, "Magician" => 4062, "Enchanter" => 4053, "Necromancer" => 4077
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsvu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4325, "Rogue" => 4150, "Monk" => 4072, "Berserker" => 4041, "Shadowknight" => 4250, "Paladin" => 4086, "Ranger" => 4140, "Bard" => 3853, "Beastlord" => 3885, "Cleric" => 3912, "Druid" => 4048, "Shaman" => 4257, "Wizard" => 4340, "Magician" => 4064, "Enchanter" => 4055, "Necromancer" => 4079
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracervu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracervu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4269, "Rogue" => 4144, "Monk" => 4069, "Berserker" => 4038, "Shadowknight" => 4198, "Paladin" => 4083, "Ranger" => 4090, "Bard" => 3832, "Beastlord" => 3857, "Cleric" => 3904, "Druid" => 4045, "Shaman" => 4254, "Wizard" => 4336, "Magician" => 4060, "Enchanter" => 4052, "Necromancer" => 4076
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestvu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4259, "Rogue" => 4142, "Monk" => 4067, "Berserker" => 3919, "Shadowknight" => 4160, "Paladin" => 4081, "Ranger" => 4088, "Bard" => 3683, "Beastlord" => 3919, "Cleric" => 3902, "Druid" => 4043, "Shaman" => 4252, "Wizard" => 4332, "Magician" => 4057, "Enchanter" => 4050, "Necromancer" => 4074
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsvu{$class}) => 1, 2564 => 1)) {
      my %rewards = (
      "Warrior" => 4308, "Rogue" => 4149, "Monk" => 4071, "Berserker" => 4040, "Shadowknight" => 4239, "Paladin" => 4085, "Ranger" => 4117, "Bard" => 3852, "Beastlord" => 3871, "Cleric" => 3911, "Druid" => 4047, "Shaman" => 4256, "Wizard" => 4339, "Magician" => 4063, "Enchanter" => 4054, "Necromancer" => 4078
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmvu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4258, "Rogue" => 4141, "Monk" => 4066, "Berserker" => 3917, "Shadowknight" => 4151, "Paladin" => 4080, "Ranger" => 4087, "Bard" => 3682, "Beastlord" => 3854, "Cleric" => 3901, "Druid" => 4042, "Shaman" => 4251, "Wizard" => 4326, "Magician" => 4056, "Enchanter" => 4049, "Necromancer" => 4073
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsvu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4268, "Rogue" => 4143, "Monk" => 4068, "Berserker" => 4000, "Shadowknight" => 4197, "Paladin" => 4082, "Ranger" => 4089, "Bard" => 3821, "Beastlord" => 3856, "Cleric" => 3903, "Druid" => 4044, "Shaman" => 4253, "Wizard" => 4333, "Magician" => 4059, "Enchanter" => 4051, "Necromancer" => 4075
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesvu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4278, "Rogue" => 4145, "Monk" => 4070, "Berserker" => 4039, "Shadowknight" => 4278, "Paladin" => 4084, "Ranger" => 4092, "Bard" => 3851, "Beastlord" => 3858, "Cleric" => 3905, "Druid" => 4046, "Shaman" => 4255, "Wizard" => 4338, "Magician" => 4062, "Enchanter" => 4053, "Necromancer" => 4077
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsvu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4325, "Rogue" => 4150, "Monk" => 4072, "Berserker" => 4041, "Shadowknight" => 4250, "Paladin" => 4086, "Ranger" => 4140, "Bard" => 3853, "Beastlord" => 3885, "Cleric" => 3912, "Druid" => 4048, "Shaman" => 4257, "Wizard" => 4340, "Magician" => 4064, "Enchanter" => 4055, "Necromancer" => 4079
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracervu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracervu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4269, "Rogue" => 4144, "Monk" => 4069, "Berserker" => 4038, "Shadowknight" => 4198, "Paladin" => 4083, "Ranger" => 4090, "Bard" => 3832, "Beastlord" => 3857, "Cleric" => 3904, "Druid" => 4045, "Shaman" => 4254, "Wizard" => 4336, "Magician" => 4060, "Enchanter" => 4052, "Necromancer" => 4076
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestvu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4259, "Rogue" => 4142, "Monk" => 4067, "Berserker" => 3919, "Shadowknight" => 4160, "Paladin" => 4081, "Ranger" => 4088, "Bard" => 3683, "Beastlord" => 3919, "Cleric" => 3902, "Druid" => 4043, "Shaman" => 4252, "Wizard" => 4332, "Magician" => 4057, "Enchanter" => 4050, "Necromancer" => 4074
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsvu{$class}) => 1, 2613 => 1)) {
      my %rewards = (
      "Warrior" => 4308, "Rogue" => 4149, "Monk" => 4071, "Berserker" => 4040, "Shadowknight" => 4239, "Paladin" => 4085, "Ranger" => 4117, "Bard" => 3852, "Beastlord" => 3871, "Cleric" => 3911, "Druid" => 4047, "Shaman" => 4256, "Wizard" => 4339, "Magician" => 4063, "Enchanter" => 4054, "Necromancer" => 4078
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmvu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4258, "Rogue" => 4141, "Monk" => 4066, "Berserker" => 3917, "Shadowknight" => 4151, "Paladin" => 4080, "Ranger" => 4087, "Bard" => 3682, "Beastlord" => 3854, "Cleric" => 3901, "Druid" => 4042, "Shaman" => 4251, "Wizard" => 4326, "Magician" => 4056, "Enchanter" => 4049, "Necromancer" => 4073
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsvu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4268, "Rogue" => 4143, "Monk" => 4068, "Berserker" => 4000, "Shadowknight" => 4197, "Paladin" => 4082, "Ranger" => 4089, "Bard" => 3821, "Beastlord" => 3856, "Cleric" => 3903, "Druid" => 4044, "Shaman" => 4253, "Wizard" => 4333, "Magician" => 4059, "Enchanter" => 4051, "Necromancer" => 4075
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesvu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4278, "Rogue" => 4145, "Monk" => 4070, "Berserker" => 4039, "Shadowknight" => 4278, "Paladin" => 4084, "Ranger" => 4092, "Bard" => 3851, "Beastlord" => 3858, "Cleric" => 3905, "Druid" => 4046, "Shaman" => 4255, "Wizard" => 4338, "Magician" => 4062, "Enchanter" => 4053, "Necromancer" => 4077
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsvu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4325, "Rogue" => 4150, "Monk" => 4072, "Berserker" => 4041, "Shadowknight" => 4250, "Paladin" => 4086, "Ranger" => 4140, "Bard" => 3853, "Beastlord" => 3885, "Cleric" => 3912, "Druid" => 4048, "Shaman" => 4257, "Wizard" => 4340, "Magician" => 4064, "Enchanter" => 4055, "Necromancer" => 4079
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracervu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracervu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4269, "Rogue" => 4144, "Monk" => 4069, "Berserker" => 4038, "Shadowknight" => 4198, "Paladin" => 4083, "Ranger" => 4090, "Bard" => 3832, "Beastlord" => 3857, "Cleric" => 3904, "Druid" => 4045, "Shaman" => 4254, "Wizard" => 4336, "Magician" => 4060, "Enchanter" => 4052, "Necromancer" => 4076
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestvu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4259, "Rogue" => 4142, "Monk" => 4067, "Berserker" => 3919, "Shadowknight" => 4160, "Paladin" => 4081, "Ranger" => 4088, "Bard" => 3683, "Beastlord" => 3919, "Cleric" => 3902, "Druid" => 4043, "Shaman" => 4252, "Wizard" => 4332, "Magician" => 4057, "Enchanter" => 4050, "Necromancer" => 4074
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsvu{$class}) => 1, 2614 => 1)) {
      my %rewards = (
      "Warrior" => 4308, "Rogue" => 4149, "Monk" => 4071, "Berserker" => 4040, "Shadowknight" => 4239, "Paladin" => 4085, "Ranger" => 4117, "Bard" => 3852, "Beastlord" => 3871, "Cleric" => 3911, "Druid" => 4047, "Shaman" => 4256, "Wizard" => 4339, "Magician" => 4063, "Enchanter" => 4054, "Necromancer" => 4078
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmvu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4258, "Rogue" => 4141, "Monk" => 4066, "Berserker" => 3917, "Shadowknight" => 4151, "Paladin" => 4080, "Ranger" => 4087, "Bard" => 3682, "Beastlord" => 3854, "Cleric" => 3901, "Druid" => 4042, "Shaman" => 4251, "Wizard" => 4326, "Magician" => 4056, "Enchanter" => 4049, "Necromancer" => 4073
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armsvu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4268, "Rogue" => 4143, "Monk" => 4068, "Berserker" => 4000, "Shadowknight" => 4197, "Paladin" => 4082, "Ranger" => 4089, "Bard" => 3821, "Beastlord" => 3856, "Cleric" => 3903, "Druid" => 4044, "Shaman" => 4253, "Wizard" => 4333, "Magician" => 4059, "Enchanter" => 4051, "Necromancer" => 4075
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($glovesvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($glovesvu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4278, "Rogue" => 4145, "Monk" => 4070, "Berserker" => 4039, "Shadowknight" => 4278, "Paladin" => 4084, "Ranger" => 4092, "Bard" => 3851, "Beastlord" => 3858, "Cleric" => 3905, "Druid" => 4046, "Shaman" => 4255, "Wizard" => 4338, "Magician" => 4062, "Enchanter" => 4053, "Necromancer" => 4077
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootsvu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4325, "Rogue" => 4150, "Monk" => 4072, "Berserker" => 4041, "Shadowknight" => 4250, "Paladin" => 4086, "Ranger" => 4140, "Bard" => 3853, "Beastlord" => 3885, "Cleric" => 3912, "Druid" => 4048, "Shaman" => 4257, "Wizard" => 4340, "Magician" => 4064, "Enchanter" => 4055, "Necromancer" => 4079
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracervu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracervu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4269, "Rogue" => 4144, "Monk" => 4069, "Berserker" => 4038, "Shadowknight" => 4198, "Paladin" => 4083, "Ranger" => 4090, "Bard" => 3832, "Beastlord" => 3857, "Cleric" => 3904, "Druid" => 4045, "Shaman" => 4254, "Wizard" => 4336, "Magician" => 4060, "Enchanter" => 4052, "Necromancer" => 4076
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestvu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4259, "Rogue" => 4142, "Monk" => 4067, "Berserker" => 3919, "Shadowknight" => 4160, "Paladin" => 4081, "Ranger" => 4088, "Bard" => 3683, "Beastlord" => 3919, "Cleric" => 3902, "Druid" => 4043, "Shaman" => 4252, "Wizard" => 4332, "Magician" => 4057, "Enchanter" => 4050, "Necromancer" => 4074
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legsvu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legsvu{$class}) => 1, 2632 => 1)) {
      my %rewards = (
      "Warrior" => 4308, "Rogue" => 4149, "Monk" => 4071, "Berserker" => 4040, "Shadowknight" => 4239, "Paladin" => 4085, "Ranger" => 4117, "Bard" => 3852, "Beastlord" => 3871, "Cleric" => 3911, "Druid" => 4047, "Shaman" => 4256, "Wizard" => 4339, "Magician" => 4063, "Enchanter" => 4054, "Necromancer" => 4078
      );
        if(defined($rewards{$class})) {
          quest::emote("delicately places the polished gem onto the old armor." );
		  quest::emote("takes a swig from his skin of ale and then begins to quietly recite a barely audible incantation directly into the gem." );
          quest::say("I have become quite adept at upgrading gear since last we met, $name.  Here is your upgraded armor piece made with the utmost skill by Dogglesworth!");
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
######## Velious to Luclin upgrade ########
  if(defined($helmlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmlu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5700, "Rogue" => 5515, "Monk" => 6043, "Berserker" => 4804, "Shadowknight" => 5521, "Paladin" => 5333, "Ranger" => 5421, "Bard" => 4646, "Beastlord" => 4653, "Cleric" => 4823, "Druid" => 4827, "Shaman" => 5618, "Wizard" => 5775, "Magician" => 5084, "Enchanter" => 4967, "Necromancer" => 5202
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armslu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5720, "Rogue" => 5516, "Monk" => 5093, "Berserker" => 4671, "Shadowknight" => 5527, "Paladin" => 5375, "Ranger" => 5427, "Bard" => 4648, "Beastlord" => 4655, "Cleric" => 4824, "Druid" => 4964, "Shaman" => 5634, "Wizard" => 5787, "Magician" => 5086, "Enchanter" => 5081, "Necromancer" => 5302
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($gloveslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($gloveslu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5750, "Rogue" => 5512, "Monk" => 5111, "Berserker" => 4805, "Shadowknight" => 5583, "Paladin" => 5390, "Ranger" => 5428, "Bard" => 4649, "Beastlord" => 4657, "Cleric" => 4821, "Druid" => 4830, "Shaman" => 5645, "Wizard" => 5789, "Magician" => 5087, "Enchanter" => 5059, "Necromancer" => 5318
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootslu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5769, "Rogue" => 5510, "Monk" => 5150, "Berserker" => 4700, "Shadowknight" => 5601, "Paladin" => 5419, "Ranger" => 5508, "Bard" => 4651, "Beastlord" => 4660, "Cleric" => 4806, "Druid" => 4825, "Shaman" => 5650, "Wizard" => 5792, "Magician" => 5090, "Enchanter" => 5083, "Necromancer" => 5324
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerlu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5707, "Rogue" => 5511, "Monk" => 5092, "Berserker" => 4801, "Shadowknight" => 5524, "Paladin" => 5371, "Ranger" => 5426, "Bard" => 4647, "Beastlord" => 4656, "Cleric" => 4807, "Druid" => 4826, "Shaman" => 5628, "Wizard" => 5783, "Magician" => 5085, "Enchanter" => 4966, "Necromancer" => 5229
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestlu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5770, "Rogue" => 5514, "Monk" => 5170, "Berserker" => 4802, "Shadowknight" => 5602, "Paladin" => 5420, "Ranger" => 5509, "Bard" => 4652, "Beastlord" => 4654, "Cleric" => 4811, "Druid" => 4965, "Shaman" => 5651, "Wizard" => 5793, "Magician" => 5091, "Enchanter" => 5080, "Necromancer" => 5332
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legslu{$class}) => 1, 2633 => 1)) {
      my %rewards = (
      "Warrior" => 5755, "Rogue" => 5513, "Monk" => 5147, "Berserker" => 4803, "Shadowknight" => 5600, "Paladin" => 5409, "Ranger" => 5505, "Bard" => 4650, "Beastlord" => 4659, "Cleric" => 4822, "Druid" => 4963, "Shaman" => 5648, "Wizard" => 5790, "Magician" => 5088, "Enchanter" => 5065, "Necromancer" => 5323
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmlu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5700, "Rogue" => 5515, "Monk" => 6043, "Berserker" => 4804, "Shadowknight" => 5521, "Paladin" => 5333, "Ranger" => 5421, "Bard" => 4646, "Beastlord" => 4653, "Cleric" => 4823, "Druid" => 4827, "Shaman" => 5618, "Wizard" => 5775, "Magician" => 5084, "Enchanter" => 4967, "Necromancer" => 5202
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armslu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5720, "Rogue" => 5516, "Monk" => 5093, "Berserker" => 4671, "Shadowknight" => 5527, "Paladin" => 5375, "Ranger" => 5427, "Bard" => 4648, "Beastlord" => 4655, "Cleric" => 4824, "Druid" => 4964, "Shaman" => 5634, "Wizard" => 5787, "Magician" => 5086, "Enchanter" => 5081, "Necromancer" => 5302
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($gloveslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($gloveslu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5750, "Rogue" => 5512, "Monk" => 5111, "Berserker" => 4805, "Shadowknight" => 5583, "Paladin" => 5390, "Ranger" => 5428, "Bard" => 4649, "Beastlord" => 4657, "Cleric" => 4821, "Druid" => 4830, "Shaman" => 5645, "Wizard" => 5789, "Magician" => 5087, "Enchanter" => 5059, "Necromancer" => 5318
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootslu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5769, "Rogue" => 5510, "Monk" => 5150, "Berserker" => 4700, "Shadowknight" => 5601, "Paladin" => 5419, "Ranger" => 5508, "Bard" => 4651, "Beastlord" => 4660, "Cleric" => 4806, "Druid" => 4825, "Shaman" => 5650, "Wizard" => 5792, "Magician" => 5090, "Enchanter" => 5083, "Necromancer" => 5324
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerlu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5707, "Rogue" => 5511, "Monk" => 5092, "Berserker" => 4801, "Shadowknight" => 5524, "Paladin" => 5371, "Ranger" => 5426, "Bard" => 4647, "Beastlord" => 4656, "Cleric" => 4807, "Druid" => 4826, "Shaman" => 5628, "Wizard" => 5783, "Magician" => 5085, "Enchanter" => 4966, "Necromancer" => 5229
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestlu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5770, "Rogue" => 5514, "Monk" => 5170, "Berserker" => 4802, "Shadowknight" => 5602, "Paladin" => 5420, "Ranger" => 5509, "Bard" => 4652, "Beastlord" => 4654, "Cleric" => 4811, "Druid" => 4965, "Shaman" => 5651, "Wizard" => 5793, "Magician" => 5091, "Enchanter" => 5080, "Necromancer" => 5332
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legslu{$class}) => 1, 2634 => 1)) {
      my %rewards = (
      "Warrior" => 5755, "Rogue" => 5513, "Monk" => 5147, "Berserker" => 4803, "Shadowknight" => 5600, "Paladin" => 5409, "Ranger" => 5505, "Bard" => 4650, "Beastlord" => 4659, "Cleric" => 4822, "Druid" => 4963, "Shaman" => 5648, "Wizard" => 5790, "Magician" => 5088, "Enchanter" => 5065, "Necromancer" => 5323
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmlu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5700, "Rogue" => 5515, "Monk" => 6043, "Berserker" => 4804, "Shadowknight" => 5521, "Paladin" => 5333, "Ranger" => 5421, "Bard" => 4646, "Beastlord" => 4653, "Cleric" => 4823, "Druid" => 4827, "Shaman" => 5618, "Wizard" => 5775, "Magician" => 5084, "Enchanter" => 4967, "Necromancer" => 5202
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armslu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5720, "Rogue" => 5516, "Monk" => 5093, "Berserker" => 4671, "Shadowknight" => 5527, "Paladin" => 5375, "Ranger" => 5427, "Bard" => 4648, "Beastlord" => 4655, "Cleric" => 4824, "Druid" => 4964, "Shaman" => 5634, "Wizard" => 5787, "Magician" => 5086, "Enchanter" => 5081, "Necromancer" => 5302
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($gloveslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($gloveslu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5750, "Rogue" => 5512, "Monk" => 5111, "Berserker" => 4805, "Shadowknight" => 5583, "Paladin" => 5390, "Ranger" => 5428, "Bard" => 4649, "Beastlord" => 4657, "Cleric" => 4821, "Druid" => 4830, "Shaman" => 5645, "Wizard" => 5789, "Magician" => 5087, "Enchanter" => 5059, "Necromancer" => 5318
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootslu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5769, "Rogue" => 5510, "Monk" => 5150, "Berserker" => 4700, "Shadowknight" => 5601, "Paladin" => 5419, "Ranger" => 5508, "Bard" => 4651, "Beastlord" => 4660, "Cleric" => 4806, "Druid" => 4825, "Shaman" => 5650, "Wizard" => 5792, "Magician" => 5090, "Enchanter" => 5083, "Necromancer" => 5324
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerlu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5707, "Rogue" => 5511, "Monk" => 5092, "Berserker" => 4801, "Shadowknight" => 5524, "Paladin" => 5371, "Ranger" => 5426, "Bard" => 4647, "Beastlord" => 4656, "Cleric" => 4807, "Druid" => 4826, "Shaman" => 5628, "Wizard" => 5783, "Magician" => 5085, "Enchanter" => 4966, "Necromancer" => 5229
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestlu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5770, "Rogue" => 5514, "Monk" => 5170, "Berserker" => 4802, "Shadowknight" => 5602, "Paladin" => 5420, "Ranger" => 5509, "Bard" => 4652, "Beastlord" => 4654, "Cleric" => 4811, "Druid" => 4965, "Shaman" => 5651, "Wizard" => 5793, "Magician" => 5091, "Enchanter" => 5080, "Necromancer" => 5332
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legslu{$class}) => 1, 2650 => 1)) {
      my %rewards = (
      "Warrior" => 5755, "Rogue" => 5513, "Monk" => 5147, "Berserker" => 4803, "Shadowknight" => 5600, "Paladin" => 5409, "Ranger" => 5505, "Bard" => 4650, "Beastlord" => 4659, "Cleric" => 4822, "Druid" => 4963, "Shaman" => 5648, "Wizard" => 5790, "Magician" => 5088, "Enchanter" => 5065, "Necromancer" => 5323
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($helmlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($helmlu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5700, "Rogue" => 5515, "Monk" => 6043, "Berserker" => 4804, "Shadowknight" => 5521, "Paladin" => 5333, "Ranger" => 5421, "Bard" => 4646, "Beastlord" => 4653, "Cleric" => 4823, "Druid" => 4827, "Shaman" => 5618, "Wizard" => 5775, "Magician" => 5084, "Enchanter" => 4967, "Necromancer" => 5202
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($armslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($armslu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5720, "Rogue" => 5516, "Monk" => 5093, "Berserker" => 4671, "Shadowknight" => 5527, "Paladin" => 5375, "Ranger" => 5427, "Bard" => 4648, "Beastlord" => 4655, "Cleric" => 4824, "Druid" => 4964, "Shaman" => 5634, "Wizard" => 5787, "Magician" => 5086, "Enchanter" => 5081, "Necromancer" => 5302
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($gloveslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($gloveslu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5750, "Rogue" => 5512, "Monk" => 5111, "Berserker" => 4805, "Shadowknight" => 5583, "Paladin" => 5390, "Ranger" => 5428, "Bard" => 4649, "Beastlord" => 4657, "Cleric" => 4821, "Druid" => 4830, "Shaman" => 5645, "Wizard" => 5789, "Magician" => 5087, "Enchanter" => 5059, "Necromancer" => 5318
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bootslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bootslu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5769, "Rogue" => 5510, "Monk" => 5150, "Berserker" => 4700, "Shadowknight" => 5601, "Paladin" => 5419, "Ranger" => 5508, "Bard" => 4651, "Beastlord" => 4660, "Cleric" => 4806, "Druid" => 4825, "Shaman" => 5650, "Wizard" => 5792, "Magician" => 5090, "Enchanter" => 5083, "Necromancer" => 5324
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($bracerlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($bracerlu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5707, "Rogue" => 5511, "Monk" => 5092, "Berserker" => 4801, "Shadowknight" => 5524, "Paladin" => 5371, "Ranger" => 5426, "Bard" => 4647, "Beastlord" => 4656, "Cleric" => 4807, "Druid" => 4826, "Shaman" => 5628, "Wizard" => 5783, "Magician" => 5085, "Enchanter" => 4966, "Necromancer" => 5229
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($chestlu{$class})) {
    if (plugin::check_handin(\%itemcount, ($chestlu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5770, "Rogue" => 5514, "Monk" => 5170, "Berserker" => 4802, "Shadowknight" => 5602, "Paladin" => 5420, "Ranger" => 5509, "Bard" => 4652, "Beastlord" => 4654, "Cleric" => 4811, "Druid" => 4965, "Shaman" => 5651, "Wizard" => 5793, "Magician" => 5091, "Enchanter" => 5080, "Necromancer" => 5332
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(defined($legslu{$class})) {
    if (plugin::check_handin(\%itemcount, ($legslu{$class}) => 1, 2651 => 1)) {
      my %rewards = (
      "Warrior" => 5755, "Rogue" => 5513, "Monk" => 5147, "Berserker" => 4803, "Shadowknight" => 5600, "Paladin" => 5409, "Ranger" => 5505, "Bard" => 4650, "Beastlord" => 4659, "Cleric" => 4822, "Druid" => 4963, "Shaman" => 5648, "Wizard" => 5790, "Magician" => 5088, "Enchanter" => 5065, "Necromancer" => 5323
      );
        if(defined($rewards{$class})) {
          quest::emote("begins to smile at the pristine orb now in his hand.  He swiftly pockets the gem and begins hammering a small, unembellished brown stone into the old armor piece." );
          quest::say("I believe this to be my finest work yet.  Here is your upgraded armor piece!  Ask me no questions about this unusual transmutation; it is beyond your understanding.");
		  quest::emote("takes a swig from his skin of ale and then begins to mutter about newfound riches." );
          quest::exp(100);
          quest::summonitem($rewards{$class});
        }
      }
    }
  if(plugin::check_handin(\%itemcount, 3542 => 1)) {
    quest::emote("takes the mug and rapidly drinks the entire contents, splashing beer and foam over his beard and your armor!" );
    quest::say("Hiccup!  Now that's fine Dwarven beer!");
    quest::emote("hands you the empty mug.");
    quest::say("If you run across any more of that, think of your friend Dooglesworth!");
    quest::exp(100);
    quest::summonitem(3582);
  }
  else  {
        quest::emote("looks at you with a puzzled expression.");
 	    quest::say ("You certainly have strange notions of what constitutes good beer. However, I think I can use this on my next fishing trip. Thank you, $name.");
		plugin::return_items(\%itemcount);
		}
 }
}

