#NPCID 2596 Roulette_Wheel in poknowledge v.0
#Set to type 11 (untargetable) after placing in database

sub EVENT_SIGNAL {
	if ($signal == 1) {
		$npc->CastSpell(5106,$npc);
	}
}

