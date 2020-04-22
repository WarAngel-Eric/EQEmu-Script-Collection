#2594 A signpost in poknowledge v.0 to indicate the Casino entrance

sub EVENT_SPAWN {
	quest::npcfeature("size", 150);
	$npc->NPCSpecialAttacks(ZHfDCAB, 0);
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	$client->Message(315, "Welcome to the Casino!");
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_EXIT {
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

