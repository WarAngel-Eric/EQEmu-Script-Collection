#2736 Above_the_shallow_grave in lfaydark v.0

sub EVENT_SPAWN {
	$npc->TempName("");
}

sub EVENT_SAY {
    my $shadow = quest::saylink("shadow", 2);
    my $animal = quest::saylink("animal", 2);

	if($text=~/hail/i){
		quest::emote("the [$shadow] seems to orients as if facing you.");
	}
	if($text=~/shadow/i){
		quest::emote("in the right light, an [$animal] form briefly appears in the shade, then fades from view.");
	}
	if($text=~/animal/i){
		quest::emote("the glimer of four animals swirl in the mist along with the text of [ancient spells]. A distant voice eerily yearns for the [embodiment] of these spirits.");
	}
}

sub EVENT_ITEM {
	if (plugin::check_handin(\%itemcount,15278=>1,30474=>1,9400=>1,13746=>1)) {
		quest::spawn2(2731,0,0,-1076,-268,-2,157);
		$client->SendMarqueeMessage(15,510,1,200,5000, "A Lupine Spirit appears nearby."); # color, text opacity, fade_in = 1, fade_out = fade out in MS, duration = duration in MS
		quest::depop_withtimer();
	}
	if (plugin::check_handin(\%itemcount,15279=>1,30431=>1,9451=>1,27393=>1)) {
		quest::spawn2(2732,0,0,-834,-256,-2,342);
		$client->SendMarqueeMessage(15,510,1,200,5000, "An Ursine Spirit appears nearby."); # color, text opacity, fade_in = 1, fade_out = fade out in MS, duration = duration in MS
		quest::depop_withtimer();
	}
	if (plugin::check_handin(\%itemcount,15269=>1,77866=>1,9452=>1,9917=>1)) {
		quest::spawn2(2733,0,0,-976.29,-438.32,-6,0);
		$client->SendMarqueeMessage(15,510,1,200,5000, "A Feline Spirit appears nearby."); # color, text opacity, fade_in = 1, fade_out = fade out in MS, duration = duration in MS
		quest::depop_withtimer();
	}
	if (plugin::check_handin(\%itemcount,7670=>1,78477=>1,9453=>1,3813=>1)) {
		quest::spawn2(2734,0,0,-1117.84,-342.37,30,104);
		$client->SendMarqueeMessage(15,510,1,200,5000, "A Strigine Spirit appears nearby."); # color, text opacity, fade_in = 1, fade_out = fade out in MS, duration = duration in MS
		quest::depop_withtimer();
	}
	if (plugin::check_handin(\%itemcount,9454=>1,9455=>1,9456=>1,9457=>1)) {
		quest::spawn2(2737,0,0,-1076,-268,-2,157);
		quest::spawn2(2738,0,0,-834,-256,-2,342);
		quest::spawn2(2739,0,0,-976.29,-438.32,-6,0);
		quest::spawn2(2740,0,0,-1117.84,-342.37,30,104);
		quest::settimer(1,20);
		$client->SendMarqueeMessage(15,510,1,200,5000, "The Tamed Spirits appear."); # color, text opacity, fade_in = 1, fade_out = fade out in MS, duration = duration in MS
	}
	plugin::return_items(\%itemcount);
}

sub EVENT_TIMER {
	if($timer == 1) {
		quest::spawn2(2735,0,0,-946,-319,-2,384);
		quest::stoptimer(1);
		quest::depop_withtimer();
	}
}

sub EVENT_SIGNAL {
	if ($signal == 1) {
		quest::depop_withtimer();
	}
}

