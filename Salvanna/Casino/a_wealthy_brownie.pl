#2595 a_wealthy_brownie in poknowledge v.0
#Roulette operator
#Author: Salvanna
#Date: 2 Jan 2019

sub EVENT_SPAWN {
	my $ready = 0;
	my $choice = 0;
	my $wheel = 0;
}

sub EVENT_SAY {
	if($text=~/hail/i) { quest::say("Welcome to the Roulette wheel, $name. Do you wish to hear the [" . quest::saylink("rules") . "] of the game or [" . quest::saylink("begin playing") . "]?"); }
	if($text=~/rules/i) { quest::say("The game functions as follows. You choose on which number you think the wheel will land, 1 through 5. You will then be given 12 seconds to pay the 5 platinum bet. If your guess is correct, you win a 40-80 platinum reward."); }
	if($text=~/begin playing/i && $ready > 0) { quest::say("A game is currently in progress. Please wait until it is completed."); }
	if($text=~/begin playing/i && $ready == 0) { quest::say("On which number would you like to bet? Simply state the number. Minimum 1, maximum 5. Then give me your 5 platinum bet to begin."); }
	if(($text=~/1/i || $text=~/2/i ||$text=~/3/i ||$text=~/4/i ||$text=~/5/i) && $ready == 0) {
		quest::settimer("game",12);
		$ready = 1;
		$choice = $text;
		quest::say("Choice of " . $choice . " declared, awaiting 5 platinum bet. You have 12 seconds before the wheel stops!");
		quest::signalwith(2596,1); #sends signal to wheel for graphic
	}
}

sub EVENT_ITEM {
	if ($ready == 1) {
		if (plugin::takePlatinum(5)) { #hand in 5 platinum as the bet
			$ready = 2;
			$wheel = quest::ChooseRandom(1,2,3,4,5);
			quest::emote("$name has bet on " . $choice . ".");
			quest::emote("the wheel is " . $wheel . ".");
			plugin::returnUnusedItems();
			if ($choice == $wheel) {
				$cashreward = int(rand(40)) + 41;
				$client->AddMoneyToPP(0, 0, 0, $cashreward, 1);
				quest::say("We have a winner! You win " . $cashreward . " platinum pieces.");
				$npc->CastSpell(5285,$client);
			}
		}
		else {
			plugin::returnUnusedItems();
			quest::say("That is insufficient payment; 5 platinum pieces are required.");
		}
	}
	elsif ($ready == 2) {
		quest::say("A game is currently in progress. Please wait until it is completed.");
	}
	else {
	}
}

sub EVENT_TIMER {
	if($timer eq "game") { #game time expires, reset variables for a new game
		quest::stoptimer("game");
		quest::say("This game has ended. Resetting the wheel for the next game. All declared choices cleared.");
		$ready = 0;
		$choice = 0;
		$wheel = 0;
	}
}

