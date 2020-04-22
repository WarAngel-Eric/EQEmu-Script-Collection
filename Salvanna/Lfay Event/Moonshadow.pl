#2735 Moonshadow in lfaydark v.0

sub EVENT_SPAWN {
	$npc->SetOOCRegen(0);
	quest::setnexthpevent(75);
	quest::settimer(1,2);
}

sub EVENT_TIMER {
	if($timer == 1) {
		quest::signalwith(2736,1); #signal Above_the_shallow_grave <Moon's Shadow> to despawn if it spawns while Moonshadow is up
	}
	if($timer == 1) {
		quest::depop(); #despawn after 10 minutes once in werewolf form
	}
}

sub EVENT_HP {
	if($hpevent == 75) {
		plugin::CloneAppearance(($entity_list->GetMobByNpcTypeID(2738)), $npc); #bear
		my $CloneName = ($entity_list->GetMobByNpcTypeID(2738))->GetCleanName();
		$npc->TempName("$CloneName");
		quest::depop(2738);
		quest::setnexthpevent(15);
	}
	if($hpevent == 15) {
		$npc->SetHP($npc->GetMaxHP() * 0.95);
		plugin::CloneAppearance(($entity_list->GetMobByNpcTypeID(2739)), $npc); #cat
		my $CloneName = ($entity_list->GetMobByNpcTypeID(2739))->GetCleanName();
		$npc->TempName("$CloneName");
		quest::depop(2739);
		quest::setnexthpevent(30);
	}
	if($hpevent == 30) {
		$npc->SetHP($npc->GetMaxHP() * 0.95);
		plugin::CloneAppearance(($entity_list->GetMobByNpcTypeID(2740)), $npc); #owlbear
		my $CloneName = ($entity_list->GetMobByNpcTypeID(2740))->GetCleanName();
		$npc->TempName("$CloneName");
		quest::depop(2740);
		quest::setnexthpevent(50);
	}
	if($hpevent == 50) {
		$npc->SetHP($npc->GetMaxHP() * 0.95);
		plugin::CloneAppearance(($entity_list->GetMobByNpcTypeID(2737)), $npc); #wolf
		my $CloneName = ($entity_list->GetMobByNpcTypeID(2737))->GetCleanName();
		$npc->TempName("$CloneName");
		quest::depop(2737);
		quest::setnexthpevent(90);
	}
	if($hpevent == 90) {
		$npc->SetOOCRegen(20);
		quest::setnexthpevent(80);
	}
	if($hpevent == 80) {
		$npc->SetOOCRegen(30);
		quest::setnexthpevent(60);
	}
	if($hpevent == 60) {
		$npc->SetOOCRegen(40);
		quest::setnexthpevent(40);
	}
	if($hpevent == 40) {
		$npc->SetOOCRegen(50); $npc->SetRace(454); $npc->SetGender(2); $npc->SetTexture(3); $npc->ChangeSize(8); #werewolf
		$npc->TempName("Moonshadow, the Lycanthrope");
		quest::settimer(2,600);
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::we(4,"An agonizing howl is heard throughout the Faydark as Moonshadow is defeated by $name.");
}

