#2741 Filverel_Sarris in poknowledge v.0

sub EVENT_SPAWN {
	quest::moveto(386,708,-157,490,1);
	quest::settimer(1,70);
}

sub EVENT_TIMER {
	if($timer == 1) {
		quest::stoptimer(1);
		quest::settimer(2,6);
		quest::say("I shall make another venture into the Lesser Faydark to investigate the new animals.");
	}
	if($timer == 2) {
		quest::signalwith(1637,1); #send signal to Dr. Jasmini to elicit his reply
		quest::stoptimer(2);
		quest::settimer(3,60);
		quest::moveto(885,851,-157,0,1);
	}
	if($timer == 3) {
		quest::stoptimer(3);
		quest::settimer(4,7);
		quest::moveto(885,905,-157,0,1);
	}
	if($timer == 4) {
		quest::depop_withtimer(); #will respawn in 10 min
	}
}

