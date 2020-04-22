#1821 Crafter_Hopps
#Quest Name: Bot/player (type) Armorer, equivalent to Luclin raid armor for lvl 51-60
#hand in Ancient templates for type armor

my $armortype;
$armortype = 0;

sub EVENT_SAY {
  if ($ulevel >= 55) {
	if ($text =~/Hail/i) {
		quest::say ("Greetings. I can assist you in crafting armor for yourself or your loyal companions. State which type of armor you wish to acquire, [leather], [chain], [plate], or [cloth], then give me the Ancient template for the appropriate slot. If you wish to change types, simply say so before giving me the next Ancient template.");
	}
	if ($text =~/leather/i) {
		quest::say("Crafting type set to leather for classes: monk, druid, and beastlord.");
		$armortype = 1;
	}
	if ($text =~/chain/i) {
		quest::say("Crafting type set to chain for classes: ranger, rogue, shaman, and berserker.");
		$armortype = 2;
	}
	if ($text =~/plate/i) {
		quest::say("Crafting type set to plate for classes: warrior, paladin, shadow knight, bard, and cleric.");
		$armortype = 3;
	}
	if ($text =~/cloth/i) {
		quest::say("Crafting type set to cloth for classes: enchanter, wizard, magician, and necromancer.");
		$armortype = 4;
	}
  }
  else {
	if ($text =~/Hail/i) {
		quest::say ("Greetings. I can assist you in crafting armor for you or your loyal companions once you reach level 55.");
	}
  }
}

sub EVENT_ITEM {
  if ($ulevel >= 55) {
	if ($armortype == 0) {
		quest::say("State which type of armor you wish to acquire, [leather], [chain], [plate], or [cloth].");
		plugin::return_items(\%itemcount);
	}
	if ($armortype == 1) { #leather
		if (plugin::check_handin(\%itemcount, 6951 => 1)) { quest::summonitem(27952); } #head
		if (plugin::check_handin(\%itemcount, 7028 => 1)) { quest::summonitem(7927); } #chest
		if (plugin::check_handin(\%itemcount, 7006 => 1)) { quest::summonitem(30528); } #arms
		if (plugin::check_handin(\%itemcount, 6880 => 1)) { quest::summonitem(7917); } #wrist
		if (plugin::check_handin(\%itemcount, 6928 => 1)) { quest::summonitem(28949); } #hands
		if (plugin::check_handin(\%itemcount, 7011 => 1)) { quest::summonitem(26772); } #legs
		if (plugin::check_handin(\%itemcount, 6929 => 1)) { quest::summonitem(8737); } #feet
	}
	if ($armortype == 2) { #chain
		if (plugin::check_handin(\%itemcount, 6951 => 1)) { quest::summonitem(27952); } #head
		if (plugin::check_handin(\%itemcount, 7028 => 1)) { quest::summonitem(7926); } #chest
		if (plugin::check_handin(\%itemcount, 7006 => 1)) { quest::summonitem(26771); } #arms
		if (plugin::check_handin(\%itemcount, 6880 => 1)) { quest::summonitem(7917); } #wrist
		if (plugin::check_handin(\%itemcount, 6928 => 1)) { quest::summonitem(51246); } #hands
		if (plugin::check_handin(\%itemcount, 7011 => 1)) { quest::summonitem(52078); } #legs
		if (plugin::check_handin(\%itemcount, 6929 => 1)) { quest::summonitem(8740); } #feet
	}
	if ($armortype == 3) { #plate
		if (plugin::check_handin(\%itemcount, 6951 => 1)) { quest::summonitem(27952); } #head
		if (plugin::check_handin(\%itemcount, 7028 => 1)) { quest::summonitem(7925); } #chest
		if (plugin::check_handin(\%itemcount, 7006 => 1)) { quest::summonitem(28882); } #arms
		if (plugin::check_handin(\%itemcount, 6880 => 1)) { quest::summonitem(7917); } #wrist
		if (plugin::check_handin(\%itemcount, 6928 => 1)) { quest::summonitem(51246); } #hands
		if (plugin::check_handin(\%itemcount, 7011 => 1)) { quest::summonitem(52078); } #legs
		if (plugin::check_handin(\%itemcount, 6929 => 1)) { quest::summonitem(25197); } #feet
	}
	if ($armortype == 4) { #cloth
		if (plugin::check_handin(\%itemcount, 6951 => 1)) { quest::summonitem(27952); } #head
		if (plugin::check_handin(\%itemcount, 7028 => 1)) { quest::summonitem(7924); } #chest
		if (plugin::check_handin(\%itemcount, 7006 => 1)) { quest::summonitem(52053); } #arms
		if (plugin::check_handin(\%itemcount, 6880 => 1)) { quest::summonitem(7917); } #wrist
		if (plugin::check_handin(\%itemcount, 6928 => 1)) { quest::summonitem(30538); } #hands
		if (plugin::check_handin(\%itemcount, 7011 => 1)) { quest::summonitem(52074); } #legs
		if (plugin::check_handin(\%itemcount, 6929 => 1)) { quest::summonitem(8738); } #feet
	}
	else { plugin::return_items(\%itemcount); }
  }
}

