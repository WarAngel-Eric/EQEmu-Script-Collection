#2784 Angitia_of_Marsi in cityofbronze v.1 (City of the Ringbuilders)

#Phase 1: must kill all 8 of the snakes #2785 each drop in hpevent or will heal by 11% each hpevent (healthwall plus 11% heal)
	#the snakes respawn in 2 minutes from death, each has a 20% chance to spawn 2 snakes on its death
#Phase 2: must kill all 4 of the tougher snakes #2786 to get past 7% healthwall
	#tougher snakes each have 40% chance to respawn on death
#Phase 3: despawns and spawns super snake (loot dropper) in her place #2787

sub EVENT_SPAWN {
	quest::setnexthpevent(88);
	quest::depop(2787); #despawn Angitia_of_Marsi2 if up
}

sub EVENT_HP {
	if ($hpevent <= 90 && $hpevent >= 40 && !$entity_list->GetMobByNpcTypeID(2785)) { #between 90 to 30 and no snakes are up
		quest::setnexthpevent($hpevent - 19); # begins at 88, 69, 50, 31, 12
	}
	elsif ($hpevent <= 90 && $hpevent >= 40 && $entity_list->GetMobByNpcTypeID(2785)) { #if a snake is up
		$npc->SetHP($npc->GetMaxHP() * 0.01 * ($hpevent + 11)); #increase mob HP% by 11%
		quest::setnexthpevent($hpevent);
	}
	elsif ($hpevent <= 40 && $hpevent >= 10) { #spawn 4 tougher snakes each with 40% chance to repop on death
		quest::spawn2(2786,0,0,$x+20,$y,$z,$h);
		quest::spawn2(2786,0,0,$x-20,$y,$z,$h);
		quest::spawn2(2786,0,0,$x,$y+20,$z,$h);
		quest::spawn2(2786,0,0,$x,$y-20,$z,$h);
		quest::setnexthpevent(7);
	}
	elsif ($hpevent == 7 && $entity_list->GetMobByNpcTypeID(2785)) { #7% and tougher snakes up spawn 1 more tougher snake
		$npc->SetHP($npc->GetMaxHP() * 0.11); #set mob HP% to 11%
		quest::spawn2(2786,0,0,$x+20,$y,$z,$h);
	}
	elsif ($hpevent == 7 && !$entity_list->GetMobByNpcTypeID(2785)) { #7% and no tougher snakes up spawn 1 super snake (loot dropper) and depop
		quest::emote("channels her spirit into a shed snake skins on the floor.");
		quest::spawn2(2787,0,0,$x,$y,$z,$h);
		quest::depop_withtimer();
	}
}

sub EVENT_COMBAT {
	if ($combat_state == 0) {
		$npc->SetHP($npc->GetMaxHP());
		quest::setnexthpevent(88);
	}
}

