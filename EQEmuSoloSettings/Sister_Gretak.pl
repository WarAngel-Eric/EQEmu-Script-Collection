sub EVENT_SAY{
	%ZL = (
		1 =>  [ "abysmal" , 279, -199, 0, 114, 1, 75, 1, 1, 1, "The Abysmal Sea" ],
		2 =>  [ "akanon" , 55, -35, 47, 4, 1, 75, 1, 1, 1, "Ak'Anon" ],
		3 =>  [ "arena" , 77, 146, -1009, 51, 1, 250, 1, 1, 1, "The Arena" ],
		4 =>  [ "arena2" , 180, 460.9, -41.4, 24.6, 1, 250, 1, 1, 1, "The Arena Two" ],
		5 =>  [ "barter" , 346, 0, 0, 0, 1, 250, 1, 1, 1, "The Barter Hall" ],
		6 =>  [ "bazaar" , 151, -71, -250, 33, 1, 250, 0, 1, 1, "The Bazaar" ],
		7 =>  [ "befallenb" , 411, 0, 0, 0, 1, 75, 1, 1, 1, "Befallen" ],
		8 =>  [ "butcher" , 68, -700, 2550, 2.9, 1, 15, 1, 1, 1, "Butcherblock Mountains" ],
		9 =>  [ "cabeast" , 106, -416, 1343, 4, 1, 75, 1, 1, 1, "Cabilis East" ],
		10 =>  [ "cabwest" , 82, 790, 165, 3.75, 1, 75, 1, 1, 1, "Cabilis West" ],
		11 =>  [ "commonlands" , 408, -3492, 180, 15, 1, 15, 1, 1, 1, "The Commonlands" ],
		12 =>  [ "crescent" , 394, -8, 11, 2, 1, 20, 1, 1, 1, "Crescent Reach" ],
		13 =>  [ "dalnir" , 104, 90, 8, 3.75, 1, 75, 1, 1, 0, "Dalnir" ],
		14 =>  [ "eastkorlacha" , 363, 16, 3, -12, 1, 80, 1, 1, 1, "Snarlstone Dens" ],
		15 =>  [ "ecommons" , 22, -1485, 9.2, -51, 1, 15, 1, 1, 1, "East Commonlands" ],
		16 =>  [ "erudnext" , 24, -309.75, 109.64, 23.75, 1, 85, 1, 1, 1, "Erudin" ],
		17 =>  [ "erudnint" , 23, 807, 712, 22, 1, 85, 1, 1, 1, "Erudin Palace" ],
		18 =>  [ "erudsxing" , 98, 795, -1766.9, 12.36, 1, 250, 1, 1, 1, "Erud\'s Crossing" ],
		19 =>  [ "erudsxing2" , 130, 0, 0, 0, 1, 15, 1, 1, 1, "Marauders Mire" ],
		20 =>  [ "everfrost" , 30, 682.74, 3139.01, -60.16, 1, 20, 1, 1, 1, "Everfrost" ],
		21 =>  [ "feerrott" , 47, 902.6, 1091.7, 28, 1, 20, 1, 1, 1, "The Feerrott" ],
		22 =>  [ "felwithea" , 61, 94, -25, 3.75, 1, 10, 1, 1, 1, "Northern Felwithe" ],
		23 =>  [ "felwitheb" , 62, -790, 320, -10.25, 1, 10, 1, 1, 1, "Southern Felwithe" ],
		24 =>  [ "fieldofbone" , 78, 1617, -1684, -54.78, 1, 20, 1, 1, 1, "Field of Bone" ],
		25 =>  [ "freeportacademy" , 385, -141, -336, 49, 1, 250, 1, 1, 1, "Academy of Arcane Sciences" ],
		26 =>  [ "freeportarena" , 388, -6.75, -42.5, 3, 1, 75, 1, 1, 1, "Arena" ],
		27 =>  [ "freeporteast" , 382, -725, -425, 7, 1, 80, 1, 1, 1, "East Freeport" ],
		28 =>  [ "freeportwest" , 383, -67, 0, -82, 1, 250, 1, 1, 1, "West Freeport" ],
		29 =>  [ "freporte" , 10, -648, -1097, -52.2, 1, 250, 1, 1, 1, "East Freeport" ],
		30 =>  [ "freportn" , 8, 211, -296, 4, 1, 250, 1, 1, 1, "North Freeport" ],
		31 =>  [ "freportw" , 9, 181, 335, -24, 1, 250, 1, 1, 1, "West Freeport" ],
		32 =>  [ "gfaydark" , 54, 10, -20, 0, 1, 15, 1, 1, 1, "Greater Faydark" ],
		33 =>  [ "grobb" , 52, 0, -100, 4, 1, 10, 1, 1, 1, "Grobb" ],
		34 =>  [ "guildhall" , 345, 0, 1, 3, 1, 250, 0, 1, 1, "Guild Hall" ],
		35 =>  [ "guildlobby" , 344, 19, -55, 5, 1, 250, 0, 1, 1, "Guild Lobby" ],
		36 =>  [ "halas" , 29, 0, 0, 3.75, 1, 250, 1, 1, 1, "Halas" ],
		37 =>  [ "innothule" , 46, -588, -2192, -25, 1, 10, 1, 1, 1, "Innothule Swamp" ],
		38 =>  [ "innothuleb" , 413, -1029, -1778, 19, 1, 10, 1, 1, 1, "The Innothule Swamp" ],
		39 =>  [ "kaladima" , 60, -2, -18, 3.75, 1, 10, 1, 1, 1, "South Kaladim" ],
		40 =>  [ "kaladimb" , 67, -267, 414, 3.75, 1, 10, 1, 1, 1, "North Kaladim" ],
		41 =>  [ "misty" , 33, 0, 0, 2.43, 1, 10, 1, 1, 1, "Misty Thicket" ],
		42 =>  [ "mistythicket" , 415, 662, -7, 4, 1, 10, 1, 1, 1, "The Misty Thicket" ],
		43 =>  [ "nektulos" , 25, -259, -1201, -5, 1, 10, 1, 1, 1, "The Nektulos Forest" ],
		44 =>  [ "nektulosa" , 368, -11, 134, -13, 1, 75, 1, 1, 1, "Shadowed Grove" ],
		45 =>  [ "neriaka" , 40, 156.92, -2.94, 31.75, 1, 10, 1, 1, 0, "Neriak Foreign Quarter" ],
		46 =>  [ "neriakb" , 41, -499.91, 2.97, -10.25, 1, 10, 1, 1, 0, "Neriak Commons" ],
		47 =>  [ "neriakc" , 42, -968.96, 891.92, -52.22, 1, 10, 1, 1, 0, "Neriak Third Gate" ],
		48 =>  [ "neriakd" , 43, 0, 0, 0, 1, 10, 1, 1, 1, "Neriak Palace" ],
		49 =>  [ "nexus" , 152, 0, 0, -28, 1, 250, 0, 1, 1, "Nexus" ],
		50 =>  [ "oggok" , 49, -99, -345, 4, 1, 10, 1, 1, 1, "Oggok" ],
		51 =>  [ "paineel" , 75, 200, 800, 3.39, 1, 10, 1, 1, 1, "Paineel" ],
		52 =>  [ "poknowledge" , 202, -55.82, 43.93, -158.81, 1, 250, 0, 1, 1, "Plane of Knowledge" ],
		53 =>  [ "qeynos" , 1, 186.46, 14.29, 3.75, 1, 20, 1, 1, 1, "South Qeynos" ],
		54 =>  [ "qeynos2" , 2, 114, 678, 4, 1, 20, 1, 1, 1, "North Qeynos" ],
		55 =>  [ "qeytoqrg" , 4, 196.7, 5100.9, -1, 1, 10, 1, 1, 1, "Qeynos Hills" ],
		56 =>  [ "qrg" , 3, 136.9, -65.9, 4, 1, 10, 1, 1, 1, "Surefall Glade" ],
		57 =>  [ "rivervale" , 19, 45.3, 1.6, 3.8, 1, 10, 1, 1, 1, "Rivervale" ],
		58 =>  [ "shadeweaver" , 165, -3570, -2122, -95, 1, 25, 1, 1, 1, "Shadeweaver's Thicket" ],
		59 =>  [ "shadowhaven" , 150, 190, -982, -28, 1, 75, 1, 1, 0, "Shadow Haven" ],
		60 =>  [ "shadowrest" , 187, -27.3, -245.6, 8.1, 1, 250, 0, 1, 1, "Shadowrest" ],
		61 =>  [ "sharvahl" , 155, 85, -1135, -188, 1, 10, 1, 1, 1, "The City of Shar Vahl" ],
		62 =>  [ "steamfont" , 56, -272.86, 159.86, -21.4, 1, 10, 1, 1, 1, "Steamfont Mountains" ],
		63 =>  [ "steamfontmts" , 448, -170, -42, 2, 1, 10, 1, 1, 1, "The Steamfont Mountains" ],
		64 =>  [ "tenebrous" , 172, 1810, 51, -36, 1, 20, 1, 1, 1, "The Tenebrous Mountains" ],
		65 =>  [ "tox" , 38, 203, 2295, -45, 1, 10, 1, 1, 1, "Toxxulia Forest" ],
		66 =>  [ "toxxulia" , 414, -718, 2102, 26, 1, 10, 1, 1, 1, "Toxxulia Forest" ],
		67 =>  [ "tutorial" , 183, 0, 0, 0, 1, 10, 1, 1, 1, "EverQuest Tutorial" ],
		68 =>  [ "tutoriala" , 188, 0, 0, 0, 1, 10, 1, 1, 1, "The Mines of Gloomingdeep" ],
		69 =>  [ "tutorialb" , 189, 18, -147, 20, 1, 10, 1, 1, 1, "The Mines of Gloomingdeep" ],
		70 =>  [ "nektulos" , 25, 235, -911, 24, 1, 20, 1, 1, 1, "The Nektulos Forest" ],
		71 =>  [ "befallen" , 36, 35.22, -75.27, 2.19, 5, 20, 1, 1, 0, "Befallen" ],
		72 =>  [ "blackburrow" , 17, 38.92, -158.97, 3.75, 5, 15, 1, 1, 1, "Blackburrow" ],
		73 =>  [ "commons" , 21, -1334.24, 209.57, -51.47, 5, 40, 1, 1, 1, "West Commonlands" ],
		74 =>  [ "crushbone" , 58, 158, -644, 4, 5, 25, 1, 1, 1, "Crushbone" ],
		75 =>  [ "guktop" , 65, 7, -36, 4, 5, 30, 1, 1, 0, "Guk" ],
		76 =>  [ "oasis" , 37, 903.98, 490.03, 6.4, 5, 40, 1, 1, 1, "Oasis of Marr" ],
		77 =>  [ "paludal" , 156, -241, -3721, 195, 5, 25, 1, 1, 0, "The Paludal Caverns" ],
		78 =>  [ "beholder" , 16, -21.44, -512.23, 45.13, 10, 25, 1, 1, 1, "Gorge of King Xorbb" ],
		79 =>  [ "cauldron" , 70, 320, 2815, 473, 10, 20, 1, 1, 1, "Dagnor's Cauldron" ],
		80 =>  [ "eastkarana" , 15, 0, 0, 3.5, 10, 35, 1, 1, 1, "Eastern Plains of Karana" ],
		81 =>  [ "freeportsewers" , 384, -1298, 111, -80, 10, 25, 1, 1, 1, "Freeport Sewers" ],
		82 =>  [ "highpass" , 5, -104, -14, 4, 10, 20, 1, 1, 1, "Highpass Hold" ],
		83 =>  [ "highpasshold" , 407, -219, -148, -24, 10, 20, 1, 1, 1, "Highpass Hold" ],
		84 =>  [ "hollowshade" , 166, 2680, 1221, 139, 10, 45, 1, 1, 1, "Hollowshade Moor" ],
		85 =>  [ "kerraridge" , 74, -859.97, 474.96, 23.75, 10, 25, 1, 1, 1, "Kerra Isle" ],
		86 =>  [ "kithforest" , 410, 0, 0, 0, 10, 40, 1, 1, 1, "Kithicor Forest" ],
		87 =>  [ "kurn" , 97, 77.72, -277.64, 3.75, 10, 30, 1, 1, 0, "Kurn's Tower" ],
		88 =>  [ "lakeofillomen" , 85, -5383.07, 5747.14, 68.27, 10, 25, 1, 1, 1, "Lake of Ill Omen" ],
		89 =>  [ "northro" , 392, -1262, 8590, 40, 10, 20, 1, 1, 1, "North Desert of Ro" ],
		90 =>  [ "nro" , 34, 299.12, 3537.9, -24.5, 10, 20, 1, 1, 1, "Northern Desert of Ro" ],
		91 =>  [ "oceanoftears" , 409, -7925, 1610, -292, 10, 40, 1, 1, 1, "The Ocean of Tears" ],
		92 =>  [ "oldkurn" , 455, 20, -265, 5, 10, 30, 1, 1, 1, "Kurn's Tower" ],
		93 =>  [ "oot" , 69, -9200, 390, 6, 10, 40, 1, 1, 1, "Ocean of Tears" ],
		94 =>  [ "qey2hh1" , 12, -638, 12, -4, 10, 40, 1, 1, 1, "Western Plains of Karana" ],
		95 =>  [ "rathemtn" , 50, 1831, 3825, 29.03, 10, 30, 1, 1, 1, "Rathe Mountains" ],
		96 =>  [ "southro" , 393, -581, -520, 126, 10, 30, 1, 1, 1, "South Desert of Ro" ],
		97 =>  [ "sro" , 35, 286, 1265, 79, 10, 30, 1, 1, 1, "Southern Desert of Ro" ],
		98 =>  [ "swampofnohope" , 83, 2945, 2761, 4.27, 10, 30, 1, 1, 1, "Swamp Of No Hope" ],
		99 =>  [ "warrens" , 101, -930, 748, -37.22, 10, 25, 1, 1, 0, "Warrens" ],
		100 =>  [ "soltemple" , 80, 7.5, 268.8, 3, 12, 30, 1, 1, 0, "Temple of Solusek Ro" ],
		101 =>  [ "lavastorm" , 27, -25, 182, -74, 15, 40, 1, 1, 1, "The Lavastorm Mountains" ],
		102 =>  [ "najena" , 44, 855.6, -74.8, 4.4, 15, 40, 1, 1, 0, "Najena" ],
		103 =>  [ "oldhighpass" , 458, 0, 0, -5, 15, 25, 1, 1, 1, "Highpass Hold" ],
		104 =>  [ "permafrost" , 73, 0, 0, 3.75, 15, 40, 1, 1, 0, "Permafrost Caverns" ],
		105 =>  [ "runnyeye" , 11, -21.85, -108.88, 3.75, 15, 35, 1, 1, 1, "Runnyeye Citadel" ],
		106 =>  [ "southkarana" , 14, 1293.66, 2346.69, -5.77, 15, 35, 1, 1, 1, "Southern Plains of Karana" ],
		107 =>  [ "echo" , 153, -800, 840, -25, 20, 45, 1, 1, 0, "Echo Caverns" ],
		108 =>  [ "firiona" , 84, 1439.96, -2392.06, -2.65, 20, 35, 1, 1, 1, "Firiona Vie" ],
		109 =>  [ "frontiermtns" , 92, -4262, -633, 113.24, 20, 45, 1, 1, 1, "Frontier Mountains" ],
		110 =>  [ "frozenshadow" , 111, 200, 120, 0, 20, 50, 1, 1, 0, "Tower of Frozen Shadow" ],
		111 =>  [ "guka" , 229, 101, -841, 1, 20, 75, 1, 1, 0, "Deepest Guk: Cauldron of Lost Souls" ],
		112 =>  [ "highkeep" , 6, 88, -16, 4, 20, 30, 1, 1, 1, "High Keep" ],
		113 =>  [ "highpasskeep" , 412, 0, 0, 0, 20, 30, 1, 1, 1, "HighKeep" ],
		114 =>  [ "iceclad" , 110, 340, 5330, -17, 20, 40, 1, 1, 1, "Iceclad Ocean" ],
		115 =>  [ "lfaydark" , 57, -1769.93, -108.08, -1.11, 20, 40, 1, 1, 1, "Lesser Faydark" ],
		116 =>  [ "mira" , 232, 649, 564, -89, 20, 75, 1, 1, 0, "Miragul's Menagerie: Silent Gallery" ],
		117 =>  [ "mirb" , 237, 0, 0, 0, 20, 75, 1, 1, 0, "The Maw of the Menagerie" ],
		118 =>  [ "mirc" , 242, -769, 763, -186, 20, 75, 1, 1, 0, "The Spider Den" ],
		119 =>  [ "mird" , 247, 228, -457, 2, 20, 75, 1, 1, 0, "Miragul's Menagerie: Hushed Banquet" ],
		120 =>  [ "mire" , 252, 0, 0, 0, 20, 75, 1, 1, 0, "The Frosted Halls" ],
		121 =>  [ "mirf" , 257, 0, 0, 0, 20, 75, 1, 1, 0, "The Forgotten Wastes" ],
		122 =>  [ "mirg" , 262, 434, -15, 56, 20, 75, 1, 1, 0, "Miragul's Menagerie: Heart of the Menagerie" ],
		123 =>  [ "mirh" , 267, 0, 0, 0, 20, 75, 1, 1, 0, "The Morbid Laboratory" ],
		124 =>  [ "miri" , 271, 0, 0, 0, 20, 75, 1, 1, 0, "The Theater of Imprisoned Horror" ],
		125 =>  [ "mirj" , 275, 1153, -901, 28, 20, 75, 1, 1, 0, "Miragul's Menagerie: Grand Library" ],
		126 =>  [ "mistmoore" , 59, 123, -295, -177, 20, 40, 1, 1, 1, "Castle Mistmoore" ],
		127 =>  [ "mmca" , 233, -594, -365, 6, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Forlorn Caverns" ],
		128 =>  [ "mmcb" , 238, -522, -22, 23, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Dreary Grotto" ],
		129 =>  [ "mmcc" , 243, -424, -108, 2, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Asylum of Invoked Stone" ],
		130 =>  [ "mmcd" , 248, -144, -647, 1, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Chambers of Eternal Affliction" ],
		131 =>  [ "mmce" , 253, -605, 372, 1, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Sepulcher of the Damned" ],
		132 =>  [ "mmcf" , 258, -184, 399, -12, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Ritualistic Summoning Grounds" ],
		133 =>  [ "mmcg" , 263, 427, 413, 4, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Cesspits of Putrescence" ],
		134 =>  [ "mmch" , 268, -367, -323, 17, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Aisles of Blood" ],
		135 =>  [ "mmci" , 272, 589, -275, 4, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Halls of Sanguinary Rites" ],
		136 =>  [ "mmcj" , 276, 258, 548, 4, 20, 75, 1, 1, 0, "Mistmoore's Catacombs: Infernal Sanctuary" ],
		137 =>  [ "netherbian" , 161, 14, 1787, -62, 20, 40, 1, 1, 0, "Netherbian Lair" ],
		138 =>  [ "northkarana" , 13, -382, -284, -7, 20, 30, 1, 1, 1, "Northern Plains of Karana" ],
		139 =>  [ "overthere" , 93, -4263, -241, 235, 20, 50, 1, 1, 1, "The Overthere" ],
		140 =>  [ "soldungb" , 32, -262.7, -423.99, -108.22, 20, 50, 1, 1, 0, "Nagafen's Lair" ],
		141 =>  [ "stonebrunt" , 100, -1643.01, -3427.84, -6.57, 20, 40, 1, 1, 1, "Stonebrunt Mountains" ],
		142 =>  [ "stonehive" , 396, -1331, -521, 26, 20, 40, 1, 1, 1, "Stone Hive" ],
		143 =>  [ "timorous" , 96, 2194, -5392, 4, 20, 45, 1, 1, 1, "Timorous Deep" ],
		144 =>  [ "twilight" , 170, -1858, -420, -10, 20, 50, 1, 1, 1, "The Twilight Sea" ],
		145 =>  [ "unrest" , 63, 52, -38, 3.75, 20, 40, 1, 1, 1, "Estate of Unrest" ],
		146 =>  [ "warslikswood" , 79, -467.95, -1428.95, 197.31, 20, 45, 1, 1, 1, "Warsliks Woods" ],
		147 =>  [ "crystal" , 121, 303, 487, -74, 25, 45, 1, 1, 0, "Crystal Caverns" ],
		148 =>  [ "dawnshroud" , 174, 2085, 0, 89, 25, 45, 1, 1, 1, "The Dawnshroud Peaks" ],
		149 =>  [ "eastwastes" , 116, -4296, -5049, 147, 25, 45, 1, 1, 1, "Eastern Wastelands" ],
		150 =>  [ "grimling" , 167, -1020, -950, 22, 25, 50, 1, 1, 1, "Grimling Forest" ],
		151 =>  [ "soldunga" , 31, -485.77, -476.04, 73.72, 25, 35, 1, 1, 0, "Solusek's Eye" ],
		152 =>  [ "draniksscar" , 302, -1519, -1468, 260, 30, 60, 1, 1, 1, "Dranik's Scar" ],
		153 =>  [ "dulak" , 225, 438, 548, 4, 30, 65, 1, 1, 1, "Dulak's Harbor" ],
		154 =>  [ "emeraldjungle" , 94, 4648.06, -1222.97, 0, 30, 45, 1, 1, 1, "The Emerald Jungle" ],
		155 =>  [ "greatdivide" , 118, -965, -7720, -557, 30, 50, 1, 1, 1, "Great Divide" ],
		156 =>  [ "gukbottom" , 66, -217, 1197, -81.78, 30, 50, 1, 1, 0, "Ruins of Old Guk" ],
		157 =>  [ "jaggedpine" , 181, 1800, 1319, -13, 30, 50, 1, 1, 1, "The Jaggedpine Forest" ],
		158 =>  [ "kael" , 113, -633, -47, 128, 30, 60, 1, 1, 0, "Kael Drakkel" ],
		159 =>  [ "kaesora" , 88, 40, 370, 99.72, 30, 50, 1, 1, 0, "Kaesora" ],
		160 =>  [ "katta" , 160, -545, 645, 1, 30, 60, 1, 0, 1, "Katta Castellum" ],
		161 =>  [ "moors" , 395, 3263, -626, -20, 30, 50, 1, 1, 1, "Blightfire Moors" ],
		162 =>  [ "mseru" , 168, -1668, 539, -4.6, 30, 50, 1, 1, 1, "Marus Seru" ],
		163 =>  [ "scarlet" , 175, -1678, -1054, -98, 30, 50, 1, 1, 1, "The Scarlet Desert" ],
		164 =>  [ "skyshrine" , 114, -730, -210, 0, 30, 60, 1, 1, 1, "Skyshrine" ],
		165 =>  [ "thurgadina" , 115, 0, -1222, 0, 30, 45, 1, 1, 1, "City of Thurgadin" ],
		166 =>  [ "trakanon" , 95, 1485.86, 3868.29, -340.59, 30, 50, 1, 1, 1, "Trakanon's Teeth" ],
		167 =>  [ "burningwood" , 87, -820, -4942, 200.31, 35, 60, 1, 1, 1, "The Burning Wood" ],
		168 =>  [ "citymist" , 90, -734, 28, 3.75, 35, 50, 1, 1, 1, "The City of Mist" ],
		169 =>  [ "cobaltscar" , 117, 895, -939, 318, 35, 55, 1, 1, 1, "Cobalt Scar" ],
		170 =>  [ "dreadlands" , 86, 9565.05, 2806.04, 1045.2, 35, 50, 1, 1, 1, "Dreadlands" ],
		171 =>  [ "gunthak" , 224, -938.34, 1644.83, 25.94, 35, 50, 1, 1, 1, "The Gulf of Gunthak" ],
		172 =>  [ "kedge" , 64, 99.96, 14.02, 31.75, 35, 50, 1, 1, 0, "Kedge Keep" ],
		173 =>  [ "acrylia" , 154, -664, 10, 3.2, 40, 60, 1, 1, 0, "The Acrylia Caverns" ],
		174 =>  [ "broodlands" , 337, -1613, -1016, 99, 40, 60, 1, 1, 1, "The Broodlands" ],
		175 =>  [ "charasis" , 105, 0, 0, -4.25, 40, 60, 1, 1, 1, "Howling stones" ],
		176 =>  [ "chardok" , 103, 859, 119, 106, 40, 55, 1, 1, 0, "Chardok" ],
		177 =>  [ "fhalls" , 998, -74, -843, -11, 40, 75, 1, 1, 1, "The Forgotten Halls" ],
		178 =>  [ "fungusgrove" , 157, -1005, -2140, -308, 40, 55, 1, 1, 0, "Fungus Grove" ],
		179 =>  [ "mesa" , 397, -85, -2050, 19, 40, 60, 1, 1, 1, "Goru`kar Mesa" ],
		180 =>  [ "nadox" , 227, -643.06, -1349.17, -40.87, 40, 60, 1, 0, 0, "The Crypt of Nadox" ],
		181 =>  [ "natimbi" , 280, -1542, -752, 234, 40, 60, 1, 1, 1, "Natimbi, The Broken Shores " ],
		182 =>  [ "nedaria" , 182, -1737, -181, 256, 40, 60, 1, 1, 1, "Nedaria's Landing" ],
		183 =>  [ "nurga" , 107, -1755, -2199, 4.1, 40, 55, 1, 1, 0, "Mines of Nurga" ],
		184 =>  [ "skyfire" , 91, -3931.32, -1139.25, 39.76, 40, 65, 1, 1, 1, "Skyfire Mountains" ],
		185 =>  [ "sseru" , 159, -232, 1165, 59.1, 40, 60, 1, 0, 1, "Sanctus Seru" ],
		186 =>  [ "thegrey" , 171, 349, -1994, -26, 40, 55, 1, 1, 1, "The Grey" ],
		187 =>  [ "thurgadinb" , 129, 0, 250, 0, 40, 60, 1, 1, 1, "Icewell Keep" ],
		188 =>  [ "torgiran" , 226, -613.21, -326.84, 2.63, 40, 65, 1, 1, 0, "The Torgiran Mines" ],
		189 =>  [ "veksar" , 109, -1, -514.5, 49, 40, 60, 1, 0, 0, "City of veksar" ],
		190 =>  [ "velketor" , 112, -65, 581, -152, 40, 60, 1, 0, 0, "Velketor's Labrynth" ],
		191 =>  [ "wakening" , 119, -5000, -673, -195, 40, 60, 1, 1, 1, "The Wakening Lands" ],
		192 =>  [ "sebilis" , 89, 0, 235, 40, 43, 60, 1, 1, 0, "Old Sebilis" ],
		193 =>  [ "airplane" , 71, 542.45, 1384.6, -650, 45, 65, 1, 0, 1, "Plane of Sky" ],
		194 =>  [ "akheva" , 179, 60, -1395, 22, 45, 65, 1, 0, 0, "The Akheva Ruins" ],
		195 =>  [ "corathus" , 365, 16, -337, -46, 45, 65, 1, 1, 1, "Corathus Creep" ],
		196 =>  [ "delvea" , 341, -246, -1578, 68, 45, 75, 1, 1, 1, "Lavaspinner's Lair" ],
		197 =>  [ "dranikhollowsa" , 318, 0, 0, 0, 45, 70, 1, 1, 1, "Dranik's Hollows" ],
		198 =>  [ "dranikhollowsb" , 319, 0, -447, -36, 45, 70, 1, 1, 1, "Dranik's Hollows" ],
		199 =>  [ "dranikhollowsc" , 320, 5, -51, -41, 45, 70, 1, 1, 1, "Dranik's Hollows" ],
		200 =>  [ "droga" , 81, 294.11, 1371.43, 3.75, 45, 60, 1, 1, 0, "Temple of Droga" ],
		201 =>  [ "freeporthall" , 391, -432, 569, -100, 45, 75, 1, 1, 1, "Hall of Truth: Bounty" ],
		202 =>  [ "freeporttheater" , 390, 0, -6, -28, 45, 75, 1, 1, 1, "Theater of the Tranquil" ],
		203 =>  [ "griegsend" , 163, 3461, -19, -5, 45, 60, 1, 0, 1, "Grieg's End" ],
		204 =>  [ "growthplane" , 127, 3016, -2522, -19, 45, 60, 1, 1, 1, "Plane of Growth" ],
		205 =>  [ "hateplaneb" , 186, -392.7, 629.44, 3.75, 45, 65, 1, 1, 1, "The Plane of Hate" ],
		206 =>  [ "maiden" , 173, 1905, 940, -150, 45, 60, 1, 1, 1, "The Maiden's Eye" ],
		207 =>  [ "necropolis" , 123, 2000, -100, 5, 45, 60, 1, 1, 0, "Dragon Necropolis" ],
		208 =>  [ "podisease" , 205, -1750, -1243, -56, 45, 65, 1, 1, 1, "The Plane of Disease" ],
		209 =>  [ "poinnovation" , 206, 241, 509, -52.8, 45, 65, 1, 1, 1, "Plane of Innovation" ],
		210 =>  [ "pojustice" , 201, -61, 58, 5, 45, 65, 1, 1, 1, "The Plane of Justice" ],
		211 =>  [ "ponightmare" , 204, 1668, 282, 210.4, 45, 65, 1, 1, 1, "Plane of Nightmare" ],
		212 =>  [ "hateplane" , 76, -353.08, -374.8, 3.75, 46, 65, 1, 1, 1, "Plane of Hate" ],
		213 =>  [ "templeveeshan" , 124, -499, -2086, -36, 46, 65, 1, 0, 0, "Temple of Veeshan" ],
		214 =>  [ "barren" , 422, 1203, 698, 54, 50, 70, 1, 1, 1, "Barren Coast" ],
		215 =>  [ "cazicthule" , 48, -80, 80, 5.5, 50, 60, 1, 1, 1, "Accursed Temple of Cazic-Thule" ],
		216 =>  [ "chardokb" , 277, 0, 0, 0, 50, 60, 1, 1, 0, "The Halls of Betrayal" ],
		217 =>  [ "fearplane" , 72, 1282.09, -1139.03, 1.67, 50, 70, 1, 1, 1, "Plane of Fear" ],
		218 =>  [ "hole" , 39, -1049.98, 640.04, -77.22, 50, 70, 1, 0, 0, "The Hole" ],
		219 =>  [ "karnor" , 102, 301, -76, 4, 50, 65, 1, 1, 1, "Karnor's Castle" ],
		220 =>  [ "roost" , 398, -1592, 2125, -308, 50, 70, 1, 1, 1, "Blackfeather Roost" ],
		221 =>  [ "sirens" , 125, -33, 196, 4, 50, 70, 1, 0, 0, "Sirens Grotto" ],
		222 =>  [ "ssratemple" , 162, 0, 0, 4, 50, 60, 1, 1, 0, "Ssraeshza Temple" ],
		223 =>  [ "thedeep" , 164, -700, -398, -60, 50, 60, 1, 0, 0, "The Deepshade" ],
		224 =>  [ "umbral" , 176, 1900, -474, 23, 50, 75, 1, 1, 1, "The Umbral Plains" ],
		225 =>  [ "vexthal" , 158, -1400, 343, -40.4, 50, 75, 1, 0, 0, "Vex Thal" ],
		226 =>  [ "westwastes" , 120, -3499, -4099, -16.66, 50, 70, 1, 1, 1, "Western Wastelands" ],
		227 =>  [ "barindu" , 283, 590, -1457, -123, 55, 65, 1, 1, 1, "Barindu, Hanging Gardens" ],
		228 =>  [ "bloodfields" , 301, -1763, 2140, -928, 55, 75, 1, 1, 1, "The Bloodfields" ],
		229 =>  [ "corathusa" , 366, -49.3, 49.84, -10.76, 55, 75, 1, 1, 1, "Sporali Caverns" ],
		230 =>  [ "corathusb" , 367, 2, 90, -15, 55, 75, 1, 1, 1, "The Corathus Mines" ],
		231 =>  [ "drachnidhive" , 354, 0, 0, 0, 55, 75, 1, 1, 1, "The Hive" ],
		232 =>  [ "drachnidhivea" , 355, 0, 0, 0, 55, 75, 1, 1, 1, "The Hatchery" ],
		233 =>  [ "drachnidhiveb" , 356, 21.25, 1248.2, 150.27, 55, 75, 1, 1, 1, "The Cocoons" ],
		234 =>  [ "drachnidhivec" , 357, -55.72, -70.27, -755, 55, 75, 1, 1, 1, "Queen Sendaii`s Lair" ],
		235 =>  [ "dranikcatacombsa" , 328, 0, 0, -8, 55, 75, 1, 1, 1, "Catacombs of Dranik" ],
		236 =>  [ "dranikcatacombsb" , 329, 222.17, 665.96, -13.21, 55, 75, 1, 1, 1, "Catacombs of Dranik" ],
		237 =>  [ "dranikcatacombsc" , 330, -20, -218, -1.78, 55, 75, 1, 1, 1, "Catacombs of Dranik" ],
		238 =>  [ "freeportcityhall" , 389, -46.98, -31.21, -9.92, 55, 75, 1, 1, 1, "City Hall" ],
		239 =>  [ "harbingers" , 335, 122, -98, 10, 55, 75, 1, 1, 1, "Harbinger's Spire" ],
		240 =>  [ "hatesfury" , 228, -924, 107, 0, 55, 65, 1, 1, 0, "Hate's Fury" ],
		241 =>  [ "kattacastrum" , 416, -2, -425, -20, 55, 75, 1, 1, 1, "Katta Castrum" ],
		242 =>  [ "poeartha" , 218, -1150, 200, 71.75, 55, 75, 1, 1, 1, "Vegarlson, The Earthen Badlands" ],
		243 =>  [ "potorment" , 207, -341, 1706, -491, 55, 65, 1, 1, 1, "Plane of Torment" ],
		244 =>  [ "povalor" , 208, 190, -1668, 64.91, 55, 65, 1, 1, 1, "Plane of Valor" ],
		245 =>  [ "powar" , 213, 0, 0, 0, 55, 70, 1, 1, 1, "Plane of War" ],
		246 =>  [ "qinimi" , 281, -1053, 438, -16, 55, 80, 1, 0, 1, "Qinimi, Court of Nihilia" ],
		247 =>  [ "soldungc" , 278, 307, -307, -14, 55, 65, 1, 1, 0, "The Caverns of Exile" ],
		248 =>  [ "stillmoona" , 338, -9, -78, -30, 55, 75, 1, 1, 1, "Stillmoon Temple" ],
		249 =>  [ "arcstone" , 369, 1630, -279, 5, 60, 75, 1, 1, 1, "Arcstone, Isle of Spirits" ],
		250 =>  [ "bothunder" , 209, 207, 178, -1620, 60, 70, 1, 1, 1, "Bastion of Thunder" ],
		251 =>  [ "causeway" , 303, -1674, -239, 317, 60, 75, 1, 1, 1, "Nobles' Causeway" ],
		252 =>  [ "codecay" , 200, -153.7, -66.1, -95.8, 60, 65, 1, 1, 0, "Ruins of Ixanvom" ],
		253 =>  [ "delveb" , 342, -138, -355, 17, 60, 75, 1, 1, 1, "Tirranun's Delve" ],
		254 =>  [ "devastation" , 372, 1390, 216, 53, 60, 75, 1, 1, 1, "The Devastation" ],
		255 =>  [ "draniksewersa" , 331, 0, 0, 0, 60, 75, 1, 1, 1, "Sewers of Dranik" ],
		256 =>  [ "draniksewersb" , 332, 0, 0, 0, 60, 75, 1, 1, 1, "Sewers of Dranik" ],
		257 =>  [ "draniksewersc" , 333, 0, 0, 0, 60, 75, 1, 1, 1, "Sewers of Dranik" ],
		258 =>  [ "ferubi" , 284, 1483, 596, 111, 60, 75, 1, 1, 1, "Ferubi, Forgotten Temple of Taelosia" ],
		259 =>  [ "freeporttemple" , 386, 0, 0, 10, 60, 75, 1, 1, 1, "Temple of Marr" ],
		260 =>  [ "hohonora" , 211, -2709.9, -338, 2.2, 60, 65, 1, 1, 1, "Halls of Honor" ],
		261 =>  [ "hohonorb" , 220, 978.3, -1.2, 395.2, 60, 65, 1, 1, 1, "Temple of Marr" ],
		262 =>  [ "poearthb" , 222, -762, 328, -56.25, 60, 80, 1, 1, 1, "Stronghold of the Twelve" ],
		263 =>  [ "redfeather" , 430, 2531, -3638, 312, 60, 80, 1, 1, 1, "Redfeather Isle" ],
		264 =>  [ "riftseekers" , 334, -1, 297, -208, 60, 80, 1, 1, 1, "Riftseekers' Sanctum" ],
		265 =>  [ "riwwi" , 282, 454, -650, 35, 60, 80, 1, 1, 1, "Riwwi, Coliseum of Games" ],
		266 =>  [ "sleeper" , 128, 0, 0, 5, 60, 75, 1, 1, 0, "Kerafyrm's Lair" ],
		267 =>  [ "sncrematory" , 288, 31, 175, -17, 60, 75, 1, 1, 0, "Sewers of Nihilia, Emanating Cre" ],
		268 =>  [ "snlair" , 286, 234, -70, -14, 60, 65, 1, 1, 0, "Sewers of Nihilia, Lair of Trapp" ],
		269 =>  [ "snplant" , 287, 150, 127, -7, 60, 75, 1, 1, 0, "Sewers of Nihilia, Purifying Pla" ],
		270 =>  [ "snpool" , 285, 137, -5, -19, 60, 65, 1, 1, 0, "Sewers of Nihilia, Pool of Sludg" ],
		271 =>  [ "steppes" , 399, -896, -2360, 3, 60, 75, 1, 1, 1, "The Steppes" ],
		272 =>  [ "sunderock" , 403, -393, -3454, 4, 60, 75, 1, 1, 1, "Sunderock Springs" ],
		273 =>  [ "takishruins" , 376, -983, 269, 62, 60, 80, 1, 1, 1, "Ruins of Takish-Hiz" ],
		274 =>  [ "thundercrest" , 340, 1641, -646, 114, 60, 80, 1, 1, 1, "Thundercrest Isles" ],
		275 =>  [ "veeshan" , 108, 1682, 41, 28, 60, 80, 1, 1, 0, "Veeshan's Peak" ],
		276 =>  [ "vergalid" , 404, 14, 0, 3, 60, 80, 1, 1, 1, "Vergalid Mines" ],
		277 =>  [ "vxed" , 290, -427, -3552, 14, 60, 80, 1, 1, 1, "Vxed, The Crumbling Caverns" ],
		278 =>  [ "westkorlach" , 358, -2229, 395, 895, 60, 80, 1, 1, 1, "Stoneroot Falls" ],
		279 =>  [ "westkorlachb" , 360, 0, 4, 4, 60, 80, 1, 1, 1, "Caverns of the Lost" ],
		280 =>  [ "westkorlachc" , 361, -57, 197, 43, 60, 80, 1, 1, 1, "Lair of the Korlach" ],
		281 =>  [ "stillmoonb" , 339, 169, 1027, 44, 62, 75, 1, 1, 1, "The Ascent" ],
		282 =>  [ "buriedsea" , 423, 3130, -1721, 308, 65, 75, 1, 1, 1, "The Buried Sea" ],
		283 =>  [ "chambersa" , 304, 0, 0, 0, 65, 75, 1, 1, 1, "Muramite Proving Grounds" ],
		284 =>  [ "chambersb" , 305, 0, 0, 0, 65, 75, 1, 1, 1, "Muramite Proving Grounds" ],
		285 =>  [ "chambersc" , 306, 0, 0, 0, 65, 75, 1, 1, 1, "Muramite Proving Grounds" ],
		286 =>  [ "chambersd" , 307, 0, 0, 0, 65, 75, 1, 1, 1, "Muramite Proving Grounds" ],
		287 =>  [ "chamberse" , 308, 0, 0, 0, 65, 75, 1, 1, 1, "Muramite Proving Grounds" ],
		288 =>  [ "chambersf" , 309, 0, 0, 0, 65, 75, 1, 1, 1, "Muramite Proving Grounds" ],
		289 =>  [ "devastationa" , 373, -141, 1059, 4, 65, 75, 1, 1, 1, "The Seething Wall" ],
		290 =>  [ "dranik" , 336, -1112, -1953, -369, 65, 75, 1, 1, 1, "The Ruined City of Dranik" ],
		291 =>  [ "eastkorlach" , 362, -950, -1130, 184, 65, 75, 1, 1, 1, "The Undershore" ],
		292 =>  [ "freeportmilitia" , 387, 7, -243, 3, 65, 75, 1, 1, 1, "Freeport Militia House: My Precious" ],
		293 =>  [ "ikkinz" , 294, -157, 23, -2, 65, 75, 1, 1, 1, "Ikkinz, Chambers of Singular Mig" ],
		294 =>  [ "inktuta" , 296, 0, 65, -2, 65, 75, 1, 1, 1, "Inktu'Ta, the Unmasked Chapel" ],
		295 =>  [ "kodtaz" , 293, -1475, 1548, -302.12, 65, 75, 1, 1, 1, "Kod'Taz, Broken Trial Grounds" ],
		296 =>  [ "paw" , 18, -7.9, -79.3, 4, 65, 75, 1, 1, 0, "Infected Paw" ],
		297 =>  [ "poair" , 215, 532, 884, -92.13, 65, 80, 1, 1, 1, "Eryslai, the Kingdom of Wind" ],
		298 =>  [ "pofire" , 217, -1387, 1210, -180.84, 65, 80, 1, 1, 1, "Doomfire, The Burning Lands" ],
		299 =>  [ "postorms" , 210, -1755.7, -2001.1, -463.8, 65, 80, 1, 1, 1, "Plane of Storms" ],
		300 =>  [ "potactics" , 214, -210, 10, -38.25, 65, 80, 1, 1, 0, "Drunder, Fortress of Zek" ],
		301 =>  [ "potimea" , 219, -37, -110, 7.95, 65, 80, 1, 1, 1, "Plane of Time" ],
		302 =>  [ "potimeb" , 223, 851, -141, 396, 65, 80, 1, 1, 1, "The Plane of Time" ],
		303 =>  [ "potranquility" , 203, -1507, 701, -878, 65, 80, 0, 1, 1, "The Plane of Tranquility" ],
		304 =>  [ "powater" , 216, -165, -1250, 6.18, 65, 80, 1, 1, 0, "Reef of Coirnav" ],
		305 =>  [ "provinggrounds" , 316, -124, -5676, -306, 65, 75, 1, 1, 1, "Muramite Provinggrounds" ],
		306 =>  [ "qvic" , 295, -2515, 767, -647, 65, 75, 1, 1, 1, "Qvic, Prayer Grounds of Calling" ],
		307 =>  [ "qvicb" , 299, 0, 0, -6.25, 65, 75, 1, 1, 1, "Qvic, the Hidden Vault" ],
		308 =>  [ "ruja" , 230, 805, -123, -95, 65, 75, 1, 1, 0, "The Rujarkian Hills: Bloodied Quarries" ],
		309 =>  [ "rujb" , 235, 367, -776, -12, 65, 75, 1, 1, 0, "The Rujarkian Hills: Halls of War" ],
		310 =>  [ "rujc" , 240, -1315, -515, -12, 65, 75, 1, 1, 0, "The Rujarkian Hills: Wind Bridges" ],
		311 =>  [ "rujd" , 245, -322, 1254, -96, 65, 75, 1, 1, 0, "The Rujarkian Hills: Gladiator Pits" ],
		312 =>  [ "ruje" , 250, 500, -1876, -222, 65, 75, 1, 1, 0, "The Rujarkian Hills: Drudge Hollows" ],
		313 =>  [ "rujf" , 255, -290, -571, -460, 65, 75, 1, 1, 0, "The Rujarkian Hills: Fortified Lair of the Taskmasters" ],
		314 =>  [ "rujg" , 260, 238, -1163, 130, 65, 75, 1, 1, 0, "The Rujarkian Hills: Hidden Vale" ],
		315 =>  [ "rujh" , 265, 656, -1250, -15, 65, 75, 1, 1, 0, "The Rujarkian Hills: Blazing Forge " ],
		316 =>  [ "ruji" , 269, 833, -1871, -222, 65, 75, 1, 1, 0, "The Rujarkian Hills: Arena of Chance" ],
		317 =>  [ "rujj" , 273, 750, -134, 26, 65, 75, 1, 1, 0, "The Rujarkian Hills: Barracks of War" ],
		318 =>  [ "shipmvm" , 435, -69, -47, 44, 65, 80, 1, 1, 1, "The Open Sea" ],
		319 =>  [ "shipmvp" , 431, 0, 68, 47, 65, 80, 1, 1, 1, "The Open Sea" ],
		320 =>  [ "shipmvu" , 432, -118, -193, 29, 65, 80, 1, 1, 1, "The Open Sea" ],
		321 =>  [ "shippvu" , 433, -116, -97, 46, 65, 80, 1, 1, 1, "The Open Sea" ],
		322 =>  [ "shipuvu" , 434, -116, -97, 46, 65, 80, 1, 1, 1, "The Open Sea" ],
		323 =>  [ "solrotower" , 212, -1, -2915, -766, 65, 75, 1, 1, 0, "Solusek Ro's Tower" ],
		324 =>  [ "suncrest" , 426, -2241, -650, 316, 65, 75, 1, 1, 1, "Suncrest Isle" ],
		325 =>  [ "tacvi" , 298, 4, 9, -8, 65, 75, 1, 1, 1, "Tacvi, The Broken Temple" ],
		326 =>  [ "taka" , 231, -77, 493, 3, 65, 80, 1, 1, 0, "Takish-Hiz: Sunken Library" ],
		327 =>  [ "takb" , 236, 380, -544, 7, 65, 80, 1, 1, 0, "Takish-Hiz: Shifting Tower" ],
		328 =>  [ "takc" , 241, 251, 33, 3, 65, 80, 1, 1, 0, "Takish-Hiz: Fading Temple" ],
		329 =>  [ "takd" , 246, -282, 133, 7, 65, 80, 1, 1, 0, "Takish-Hiz: Royal Observatory" ],
		330 =>  [ "take" , 251, 375, -406, 19, 65, 80, 1, 1, 0, "Takish-Hiz: River of Recollection" ],
		331 =>  [ "takf" , 256, 69, 1, 3, 65, 80, 1, 1, 0, "Takish-Hiz: Sandfall Corridors" ],
		332 =>  [ "takg" , 261, -214, 234, 22, 65, 80, 1, 1, 0, "Takish-Hiz: Balancing Chamber" ],
		333 =>  [ "takh" , 266, -147, 392, -1, 65, 80, 1, 1, 0, "Takish-Hiz: Sweeping Tides" ],
		334 =>  [ "taki" , 270, 617, 119, -3, 65, 80, 1, 1, 0, "Takish-Hiz: Antiquated Palace" ],
		335 =>  [ "takishruinsa" , 377, 18, -138, -29, 65, 80, 1, 1, 1, "The Root of Ro" ],
		336 =>  [ "takj" , 274, -143, 625, -21, 65, 80, 1, 1, 0, "Takish-Hiz: Prismatic Corridors" ],
		337 =>  [ "thevoida" , 459, -79, -158, 33, 65, 85, 1, 1, 1, "The Void" ],
		338 =>  [ "tipt" , 289, -448, -2374, 12, 65, 75, 1, 1, 1, "Tipt, Treacherous Crags" ],
		339 =>  [ "txevu" , 297, -332, -1, -420, 65, 85, 1, 1, 1, "Txevu, Lair of the Elite" ],
		340 =>  [ "wallofslaughter" , 300, -1461, -2263, -69, 65, 85, 1, 1, 1, "Wall of Slaughter" ],
		341 =>  [ "yxtta" , 291, 1235, 1300, -348, 65, 80, 1, 1, 1, "Yxtta, Pulpit of Exiles " ],
		342 =>  [ "anguish" , 317, -9, -2466, -79, 70, 80, 1, 1, 1, "Anguish, the Fallen Palace" ],
		343 =>  [ "atiiki" , 418, -916, -1089, -39, 70, 75, 1, 1, 1, "Jewel of Atiiki" ],
		344 =>  [ "direwind" , 405, -329, -1845, 10, 70, 75, 1, 1, 1, "Direwind Cliffs" ],
		345 =>  [ "dragonscale" , 442, 1688, 1434, 215, 70, 80, 1, 1, 1, "Dragonscale Hills" ],
		346 =>  [ "dreadspire" , 351, 1358, -1030, -572, 70, 80, 1, 1, 1, "Dreadspire Keep" ],
		347 =>  [ "elddar" , 378, 606, 296, -36, 70, 80, 1, 1, 1, "The Elddar Forest" ],
		348 =>  [ "elddara" , 379, 0, 0, -6, 70, 75, 1, 1, 1, "Tunare's Shrine" ],
		349 =>  [ "icefall" , 400, 765, -1871, -46, 70, 75, 1, 1, 1, "Icefall Glacier" ],
		350 =>  [ "illsalin" , 347, 308, -182, -32, 70, 75, 1, 1, 1, "Ruins of Illsalin" ],
		351 =>  [ "illsalina" , 348, 8, 0, -20, 70, 75, 1, 1, 1, "Illsalin Marketplace" ],
		352 =>  [ "illsalinb" , 349, 0, 0, 0, 70, 75, 1, 1, 1, "Temple of Korlach" ],
		353 =>  [ "illsalinc" , 350, 0, 0, -15, 70, 75, 1, 1, 1, "The Nargil Pits" ],
		354 =>  [ "jardelshook" , 424, 4677, -784, 373, 70, 75, 1, 1, 1, "Jardel's Hook" ],
		355 =>  [ "maidensgrave" , 429, 4455, 2042, 307, 70, 75, 1, 1, 1, "Maiden's Grave" ],
		356 =>  [ "oceangreenhills" , 466, -1140, 4542, 73, 70, 85, 1, 1, 1, "Oceangreen Hills" ],
		357 =>  [ "oceangreenvillage" , 467, 83, -72, 3, 70, 85, 1, 1, 1, "Oceangreen Village" ],
		358 =>  [ "rage" , 374, 0, 1065, 7, 70, 80, 1, 1, 1, "Sverag, Stronghold of Rage" ],
		359 =>  [ "ragea" , 375, 354, 63, 3, 70, 80, 1, 1, 1, "Razorthorn, Tower of Sullon Zek" ],
		360 =>  [ "relic" , 370, 861, 618, -265, 70, 85, 1, 1, 1, "Relic, the Artifact City" ],
		361 =>  [ "shadowspine" , 364, 2, 408, 72, 70, 75, 1, 1, 1, "Shadow Spine" ],
		362 =>  [ "skylance" , 371, 0, -95, 2, 70, 75, 1, 1, 1, "Skylance" ],
		363 =>  [ "theater" , 380, 2933, 719, 376, 70, 80, 1, 1, 1, "Theater of Blood" ],
		364 =>  [ "theatera" , 381, 0, -108, 4, 70, 80, 1, 1, 1, "Deathknell, Tower of Dissonance" ],
		365 =>  [ "uqua" , 292, -17, -7, -26, 70, 90, 1, 1, 1, "Uqua, the Ocean God Chantry" ],
		366 =>  [ "valdeholm" , 401, 119, -3215, 3, 70, 85, 1, 1, 1, "Valdeholm" ],
		367 =>  [ "westkorlacha" , 359, -1549, 577, 4, 70, 85, 1, 1, 1, "Prince's Manor" ],
		368 =>  [ "zhisza" , 419, 6, -856, 5, 70, 80, 1, 1, 1, "Zhisza, the Shissar Sanctuary" ],
		369 =>  [ "ashengate" , 406, 0, -375, 8, 75, 85, 1, 1, 1, "Ashengate, Reliquary of the Scale" ],
		370 =>  [ "bertoxtemple" , 469, 2, -2, 2, 75, 85, 1, 1, 1, "Temple of Bertoxxulous" ],
		371 =>  [ "blacksail" , 428, -165, 5410, 307, 75, 75, 1, 1, 1, "Blacksail Folly" ],
		372 =>  [ "bloodmoon" , 445, -4, 34, 8, 75, 80, 1, 1, 1, "Bloodmoon Keep" ],
		373 =>  [ "frostcrypt" , 402, 0, -40, 2, 75, 85, 1, 1, 1, "Frostcrypt, Throne of the Shade King" ],
		374 =>  [ "guardian" , 447, -115, 60, 4, 75, 85, 1, 1, 1, "The Mechamatic Guardian" ],
		375 =>  [ "gyrospireb" , 440, -9, -843, 4, 75, 85, 1, 1, 1, "Gyrospire Beza" ],
		376 =>  [ "gyrospirez" , 441, -9, -843, 4, 75, 85, 1, 1, 1, "Gyrospire Zeka" ],
		377 =>  [ "kithicor" , 20, 3828, 1889, 459, 75, 85, 1, 1, 1, "Kithicor Woods" ],
		378 =>  [ "lopingplains" , 443, -3698, -1289, 722, 75, 80, 1, 1, 1, "Loping Plains" ],
		379 =>  [ "oldblackburrow" , 468, 7, -377, 46, 75, 85, 1, 1, 1, "BlackBurrow" ],
		380 =>  [ "oldcommons" , 457, -3492, 180, 15, 75, 85, 1, 1, 1, "Old Commonlands" ],
		381 =>  [ "oldkithicor" , 456, -255, 1189, 10, 75, 85, 1, 1, 1, "Bloody Kithicor" ],
		382 =>  [ "silyssar" , 420, 167, -50, -66, 75, 80, 1, 1, 1, "Silyssar, New Chelsith" ],
		383 =>  [ "solteris" , 421, 0, 0, -20, 75, 80, 1, 1, 1, "Solteris, the Throne of Ro" ],
		384 =>  [ "thalassius" , 417, 37, -86, 23, 75, 75, 1, 1, 1, "Thalassius, the Coral Keep" ],
		385 =>  [ "cryptofshade" , 449, 985, -445, -39, 80, 80, 1, 1, 1, "Crypt of Shade" ],
		386 =>  [ "crystallos" , 446, -65, -200, -75, 80, 80, 1, 1, 1, "Crystallos, Lair of the Awakened" ],
		387 =>  [ "dragonscaleb" , 451, 25, 20, 5, 80, 80, 1, 1, 1, "Deepscar's Den" ],
		388 =>  [ "hillsofshade" , 444, -216, -1950, -50, 80, 80, 1, 1, 1, "Hills of Shade" ],
		389 =>  [ "mansion" , 437, 0, -73, 3, 80, 85, 1, 1, 1, "Meldrath's Majestic Mansion" ],
		390 =>  [ "mechanotus" , 436, -1700, 350, 404, 80, 85, 1, 1, 1, "Fortress Mechanotus" ],
		391 =>  [ "monkeyrock" , 425, -4084, -3067, 307, 80, 100, 1, 1, 1, "Monkey Rock" ],
		392 =>  [ "oldbloodfield" , 472, -2097, 2051, 3, 80, 85, 1, 1, 1, "Old Bloodfields" ],
		393 =>  [ "oldfieldofbone" , 452, 1692, 1194, -49, 80, 85, 1, 1, 1, "Field of Scale" ],
		394 =>  [ "oldkaesoraa" , 453, 33.67, -20.86, 3.37, 80, 85, 1, 1, 1, "Kaesora Library" ],
		395 =>  [ "oldkaesorab" , 454, -64, -30, 2, 80, 85, 1, 1, 1, "Kaesora Hatchery" ],
		396 =>  [ "shipworkshop" , 439, 530, 457, 10, 80, 80, 1, 1, 1, "S.H.I.P. Workshop" ],
		397 =>  [ "steamfactory" , 438, -870, 66, 121, 80, 80, 1, 1, 1, "The Steam Factory" ],
		398 =>  [ "toskirakk" , 475, -402.5, 309.17, 20.18, 80, 100, 1, 1, 1, "Toskirakk" ],
		399 =>  [ "brellsarena" , 492, 3, -304, -4, 80, 90, 1, 1, 1, "Brell's Arena" ],
		400 =>  [ "discord" , 470, 28, -20, -16, 85, 90, 1, 1, 1, "Korafax, Home of the Riders" ],
		401 =>  [ "discordtower" , 471, 0, 0, -55, 85, 90, 1, 1, 1, "Citadel of the Worldslayer" ],
		402 =>  [ "korascian" , 476, 24, -77, 25, 85, 85, 1, 1, 1, "Korascian Warrens" ],
		403 =>  [ "olddranik" , 474, -1799, 986, -184, 85, 85, 1, 1, 1, "City of Dranik" ],
		404 =>  [ "rathechamber" , 477, -19, -10, -22, 85, 90, 1, 1, 1, "Rathe Council Chamber" ],
		405 =>  [ "thevoidb" , 460, -79, -158, 33, 85, 85, 1, 1, 1, "The Void" ],
		406 =>  [ "thevoidc" , 461, -79, -158, 33, 85, 85, 1, 1, 1, "The Void" ],
		407 =>  [ "thevoidd" , 462, -79, -158, 33, 85, 85, 1, 1, 1, "The Void" ],
		408 =>  [ "thevoide" , 463, -79, -158, 33, 85, 85, 1, 1, 1, "The Void" ],
		409 =>  [ "thevoidf" , 464, -79, -158, 33, 85, 85, 1, 1, 1, "The Void" ],
		410 =>  [ "thevoidg" , 465, -79, -158, 33, 85, 85, 1, 1, 1, "The Void" ],
		411 =>  [ "brellsrest" , 480, 116, -700, 53, 85, 90, 1, 1, 1, "Brell's Rest" ],
		412 =>  [ "coolingchamber" , 483, -35, -130, 59, 85, 90, 1, 1, 1, "The Cooling Chamber" ],
		413 =>  [ "pellucid" , 488, -779, -424, -53, 85, 90, 1, 1, 1, "Pellucid Grotto" ],
		414 =>  [ "arthicrex" , 485, 517, -1662, 200, 85, 90, 1, 1, 1, "Arthicrex" ],
		415 =>  [ "foundation" , 486, 1168.49, -1023.98, -209, 85, 90, 1, 1, 1, "The Foundation" ],
		416 =>  [ "underquarry" , 482, 46, -190, -196, 85, 90, 1, 1, 1, "The Underquarry" ],
		417 =>  [ "stonesnake" , 489, 50, 24, 0, 85, 90, 1, 1, 1, "Volska's Husk" ],
	);
	my $Level1 = quest::saylink(1, 1);
	my $Level5 = quest::saylink(5, 1);
	my $Level10 = quest::saylink(10, 1);
	my $Level15 = quest::saylink(15, 1);
	my $Level20 = quest::saylink(20, 1);
	my $Level25 = quest::saylink(25, 1);
	my $Level30 = quest::saylink(30, 1);
	my $Level35 = quest::saylink(35, 1);
	my $Level40 = quest::saylink(40, 1);
	my $Level45 = quest::saylink(45, 1);
	my $Level50 = quest::saylink(50, 1);
	my $Level55 = quest::saylink(55, 1);
	my $Level60 = quest::saylink(60, 1);
	my $Level65 = quest::saylink(65, 1);
	my $Level70 = quest::saylink(70, 1);
	my $Level75 = quest::saylink(75, 1);
	my $Level80 = quest::saylink(80, 1);
	my $Level85 = quest::saylink(85, 1);
	my $Level90 = quest::saylink(90, 1);
	my $Level95 = quest::saylink(95, 1);
	my $Level100 = quest::saylink(100, 1);
	my $Level105 = quest::saylink(105, 1);
	my $Level110 = quest::saylink(110, 1);
	my $Level115 = quest::saylink(115, 1);
	my $Level120 = quest::saylink(120, 1);
	my $Level125 = quest::saylink(125, 1);
	my $Level130 = quest::saylink(130, 1);
	my $Level135 = quest::saylink(135, 1);
	my $Level140 = quest::saylink(140, 1);
	my $Level145 = quest::saylink(145, 1);
	my $Level150 = quest::saylink(150, 1);
	my $Level155 = quest::saylink(155, 1);
	my $Level160 = quest::saylink(160, 1);
	my $Level165 = quest::saylink(165, 1);
	my $Level170 = quest::saylink(170, 1);
	my $Level175 = quest::saylink(175, 1);
	my $Level180 = quest::saylink(180, 1);
	my $Level185 = quest::saylink(185, 1);
	my $Level190 = quest::saylink(190, 1);
	my $Level195 = quest::saylink(195, 1);
	my $Level200 = quest::saylink(200, 1);
	my $Level205 = quest::saylink(205, 1);
	my $Level210 = quest::saylink(210, 1);
	my $Level215 = quest::saylink(215, 1);
	my $Level220 = quest::saylink(220, 1);
	my $Level225 = quest::saylink(225, 1);
	my $Level230 = quest::saylink(230, 1);
	my $Level235 = quest::saylink(235, 1);
	my $Level240 = quest::saylink(240, 1);
	my $Level245 = quest::saylink(245, 1);
	my $Level250 = quest::saylink(250, 1);

	if($text=~/hail/i){
		$IsLevelRange = undef;
		$IsLevelRange2 = undef;
		$FinStage = 1;
		my $level = quest::saylink("Level Range", 1);
		my $recommend = quest::saylink("Recommend", 1);
		plugin::ClientSay("Hello $name, which $level would you like to speculate today? Would you like me to $recommend some places?");
		plugin::DoAnim("wave");
	}
	if($text=~/Level Range/i){
		$client->Message(315, "	$Level1	$Level5	$Level10	$Level15	$Level20	$Level25	$Level30	$Level35	$Level40	$Level45	$Level50	");
		$client->Message(315, "	$Level55	$Level60	$Level65	$Level70	$Level75	$Level80	$Level85");#	$Level90	$Level95	$Level100	");	
		$IsLevelRange = 1;
	}
	if($text=~/recommend/i && $ulevel >= 85 && !$IsLevelRange){
		my $n = 1;
		while  ($ZL{$n}[0]){
			if(($ZL{$n}[5]) == 80 || ($ZL{$n}[5]) == 85){
				$MC = 315;
				my $ZoneLN = quest::saylink($n, 1, $ZL{$n}[10]);
				my $SkillID = $ZL{$n}[1];
				#my $ZoneLN = $ZL{$n}[10];
				my $MinL = $ZL{$n}[5];
				my $MaxL = $ZL{$n}[6];
				my $ZoneSN = $ZL{$n}[0];
				#Create the silent saylink
				#List all animations
				$OutDoor = "Dungeon Zone";
				if($ulevel >= ($MinL - 5) || $ulevel <= ($MinL + 5)){ $MC = 10;}
				if($ulevel <= ($MinL - 7)){ $MC = 15;}
				if($ulevel <= ($MinL - 15)){ $MC = 13;}
				if($ulevel >= ($MinL + 6)){ $MC = 4;}
				if($ulevel >= ($MinL + 13)){ $MC = 2;}
				$client->Message($MC, "[$MinL - $MaxL] $ZoneLN");
				$MC = 315;
			}
			$n++;
		}
	}
	elsif($text=~/recommend/i && !$IsLevelRange){
		my $n = 1;
			my $DeclaredLevel = 1; $IsLevelRange2 = 1;
			if($ulevel == 1){ $DeclaredLevel = 1; }
			if($ulevel < 10 && $ulevel >= 5){ $DeclaredLevel = 5; }
			if($ulevel < 15 && $ulevel >= 10){ $DeclaredLevel = 10; }
			if($ulevel < 20 && $ulevel >= 15){ $DeclaredLevel = 15; }
			if($ulevel < 25 && $ulevel >= 20){ $DeclaredLevel = 20; }
			if($ulevel < 30 && $ulevel >= 25){ $DeclaredLevel = 25; }
			if($ulevel < 35 && $ulevel >= 30){ $DeclaredLevel = 30; }
			if($ulevel < 40 && $ulevel >= 35){ $DeclaredLevel = 35; }
			if($ulevel < 45 && $ulevel >= 40){ $DeclaredLevel = 40; }
			if($ulevel < 50 && $ulevel >= 45){ $DeclaredLevel = 45; }
			if($ulevel < 55 && $ulevel >= 50){ $DeclaredLevel = 50; }
			if($ulevel < 60 && $ulevel >= 55){ $DeclaredLevel = 55; }
			if($ulevel < 65 && $ulevel >= 60){ $DeclaredLevel = 60; }
			if($ulevel < 70 && $ulevel >= 65){ $DeclaredLevel = 65; }
			if($ulevel < 75 && $ulevel >= 70){ $DeclaredLevel = 70; }
			if($ulevel < 80 && $ulevel >= 75){ $DeclaredLevel = 75; }
			if($ulevel < 85 && $ulevel >= 80){ $DeclaredLevel = 80; }
			if($ulevel < 90 && $ulevel >= 85){ $DeclaredLevel = 85; }
			while  ($ZL{$n}[0]) {	
				if(($ZL{$n}[5]) == $DeclaredLevel){
					$MC = 315;
					my $ZoneLN = quest::saylink($n, 1, $ZL{$n}[10]);
					my $SkillID = $ZL{$n}[1];
					#my $ZoneLN = $ZL{$n}[10];
					my $MinL = $ZL{$n}[5];
					my $MaxL = $ZL{$n}[6];
					my $ZoneSN = $ZL{$n}[0];
					#Create the silent saylink
					#List all animations
					$OutDoor = "Dungeon Zone";
					if($ulevel >= ($MinL - 5) || $ulevel <= ($MinL + 5)){ $MC = 10;}
					if($ulevel <= ($MinL - 7)){ $MC = 15;}
					if($ulevel <= ($MinL - 15)){ $MC = 13;}
					if($ulevel >= ($MinL + 6)){ $MC = 4;}
					if($ulevel >= ($MinL + 13)){ $MC = 2;}
					$client->Message($MC, "[$MinL - $MaxL] $ZoneLN");
					$MC = 315;
				}
				$n++;
			}
		}
			
		if($text && ($IsLevelRange == 1 || $IsLevelRange2 == 1)){
			quest::settimer("clear", 1);
			my $n = 1;
			while  ($ZL{$n}[0]){
				if(($ZL{$n}[5]) == $text){
					$MC = 315;
					my $ZoneLN = quest::saylink($n, 1, $ZL{$n}[10]);
					my $SkillID = $ZL{$n}[1];
					#my $ZoneLN = $ZL{$n}[10];
					my $MinL = $ZL{$n}[5];
					my $MaxL = $ZL{$n}[6];
					my $ZoneSN = $ZL{$n}[0];
					#Create the silent saylink
					#List all animations
					$OutDoor = "Dungeon Zone";
					if($ulevel >= ($MinL - 5) || $ulevel <= ($MinL + 5)){ $MC = 10;}
					if($ulevel <= ($MinL - 7)){ $MC = 15;}
					if($ulevel <= ($MinL - 15)){ $MC = 13;}
					if($ulevel >= ($MinL + 6)){ $MC = 4;}
					if($ulevel >= ($MinL + 13)){ $MC = 2;}
					$client->Message($MC, "[$MinL - $MaxL] $ZoneLN");
					$MC = 315;
				}
				$n++;
			}
		}
		#zonesn - 0, zoneid - 1, x - 2, y - 3, z - 4
		#MinLevel - 5 Maxlevel 6
		#Can Combat - 7	Levitation - 8	CastOutdoor - 9
		#zoneln = 10
		if($ZL{$text} && !$FinStage){
			$IsLevelRange = undef;
			my $Break = plugin::PWBreak();
			my $Indent = plugin::PWIndent();
			my $OutDoor = "No";
			if ($ZL{$text}[9] == 1){ $OutDoor = "Yes"; }
			my $CZ = "No";
			if ($ZL{$text}[7] == 1){ $CZ = "Yes"; }
			my $Levitation = "No";
			if ($ZL{$text}[8] == 1){ $Levitation = "Yes"; }
			my $X = $ZL{$text}[2];
			my $Y = $ZL{$text}[3];
			my $Z = $ZL{$text}[4];
			my $ZoneID = $ZL{$text}[1];
			my $ZoneLN = $ZL{$text}[10];
			my $MinL = $ZL{$text}[5];
			my $MaxL = $ZL{$text}[6];
			my $ZoneSN = $ZL{$text}[0];
			quest::popup("Zone Request", "$Logo<br><br>
				$Center $Indent Zone Request:<br>
				$Indent $Indent $Yellow '$ZoneLN' - '$ZoneSN'</c> <br>
				$Indent $Indent <c \"#00FFFF\"> Level Range </c>- $MinL - $MaxL <br>
				$Indent $Indent <c \"#00FFFF\"> Outdoor Zone? </c>- $OutDoor<br>
				$Indent $Indent <c \"#00FFFF\"> Combat Zone? </c>- $CZ <br>
				$Indent $Indent <c \"#00FFFF\"> Levitation Allowed? </c>- $Levitation<br>
				$Break<br><br>
				<c \"#F07F00\">Click 'Yes' to go to this destination</c>", 50, 1);
			$client->SetEntityVariable(59, $ZoneID); # Set Z Base Integer
			$client->SetEntityVariable(60, $X);	# Set X Base Integer
			$client->SetEntityVariable(61, $Y); # Set Y Base Integer
			$client->SetEntityVariable(62, $Z); # Set Z Base Integer
		}
}

sub EVENT_POPUPRESPONSE{
	if($popupid == 50){
		my $ZoneID = $client->GetEntityVariable(59);
		my $X = $client->GetEntityVariable(60);
		my $Y = $client->GetEntityVariable(61);
		my $Z = $client->GetEntityVariable(62);
		quest::movepc($ZoneID, $X, $Y, $Z, $h);
	}
}


sub EVENT_TIMER{
	if($timer eq "clear"){
		quest::stoptimer("clear");
		$FinStage = undef;
	}
}