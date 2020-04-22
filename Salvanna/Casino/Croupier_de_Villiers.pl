#2593 Croupier_de_Villiers in poknowledge v.0
#Casino dealer for game "Glyphed Jetons"
#Author: Salvanna
#Date: 1 Jan 2019

sub EVENT_SPAWN {
	my $ready = 0;
	my $roll = 100;
	my $sum = 0;
	my $choice = 0;
}

sub EVENT_SAY {
	if($text=~/hail/i) { quest::say("Welcome to my casino table, $name. Do you wish to hear the [" . quest::saylink("rules") . "] of the game or [" . quest::saylink("begin playing") . "]?"); }
	if($text=~/rules/i) { quest::say("The game functions as follows. Give to me 10 platinum and one game token, and you will be dealt 5 random glyphed jetons, each can have any value indicated by the strength on the item. Three random glyphed jetons will be chosen for the dealer and their summed value shown on the table, minimum of 15. [" . quest::saylink("continue") . "]"); }
	if($text=~/continue/i) { quest::say("You will be given thirty seconds to play 2 to 4 jetons by handing them to me; all must be different from one another. I shall add or subtract their values, each chosen at random with a preference for adding, to your tally. If your total is higher than the shown dealer sum, you win a random coin reward 21-40 platinum; lower and you simply forfeit your 10 platinum bid. If you manage to equal it exactly, you win a random item!"); }
	if($text=~/begin playing/i && $ready == 1) { quest::say("A game is currently in progress. Please wait until it is completed."); }
	if($text=~/begin playing/i && $ready == 0) { quest::say("Splendid! Let us begin by securing your bid of 10 platinum pieces along with one game token. If you lack a game token, you may purchase one from me."); }
}

sub EVENT_ITEM {
	if ($ready == 0) {
		if (plugin::takeItemsCoin(0,0,0,10, 9209 => 1)) { #hand in glyphed jeton game token and 10 platinum
			quest::settimer("game",30);
			$ready = 1;
			$roll = int(rand(28)) + 15; #generates random roll, may need adjusting (15-42 possible), represents sum of 3 random jetons, minimum 15
			quest::emote("Deftly deals to you 5 glyphed jetons and reveals three jetons on the table with a summed value of " . $roll . ".");
			quest::summonitem(quest::ChooseRandom(8794,8981,8984,9024,9058,9098,9099,9186,9192,9193,9202,9203,9207,9208));
			quest::summonitem(quest::ChooseRandom(8794,8981,8984,9024,9058,9098,9099,9186,9192,9193,9202,9203,9207,9208));
			quest::summonitem(quest::ChooseRandom(8794,8981,8984,9024,9058,9098,9099,9186,9192,9193,9202,9203,9207,9208));
			quest::summonitem(quest::ChooseRandom(8794,8981,8984,9024,9058,9098,9099,9186,9192,9193,9202,9203,9207,9208));
			quest::summonitem(quest::ChooseRandom(8794,8981,8984,9024,9058,9098,9099,9186,9192,9193,9202,9203,9207,9208));
			plugin::returnUnusedItems();
		}
		else {
			plugin::returnUnusedItems();
			quest::say("That is insufficient payment, or you have neglected to provide the proper glyphed jeton game token, my friend.");
		}
	}
	elsif ($ready == 1) {
		my $jetons = {
			8794 => [ 1, 1],8981 => [ 1, 2],8984 => [ 1, 3],9024 => [ 1, 4],9058 => [ 1, 5],9098 => [ 1, 6],9099 => [ 1, 7],
			9186 => [ 1, 8],9192 => [ 1, 9],9193 => [ 1, 10],9202 => [ 1, 11],9203 => [ 1, 12],9207 => [ 1, 13],9208 => [ 1, 14],			
		};
		foreach my $itemID ( keys %itemcount ) {
			next unless defined $jetons->{$itemID};
			my ( $count, $points ) = @{ $jetons->{$itemID} };
			if ( plugin::check_handin(\%itemcount, $itemID => $count )) {
				quest::stoptimer("game");
				$ready = 0;
				$choice = quest::ChooseRandom(1,1,1,2); #will add the jeton value to player's total 75% of the time, subtract it 25% of the time.
				if ($choice == 1) {
					$sum = $sum + $points;
					quest::say("Glyphed jeton value is " . $points . ". Adding it to your total.");
				}
				else {
					$sum = $sum - $points;
					quest::say("Glyphed jeton value is " . $points . ". Subtracting it from your total.");
				}
			}
			else { #player loses, reset variables for a new game
				quest::settimer("game",1);
			}
		}
		quest::say("Your total is " . $sum . ".");
		if ($sum > $roll) { #player wins random platinum reward (21-40), 2.1x to 4.0x payout, reset variables for a new game
			$cashreward = int(rand(20)) + 21;
			$client->AddMoneyToPP(0, 0, 0, $cashreward, 1);
			quest::say("We have a winner! You win " . $cashreward . " platinum pieces.");
			quest::settimer("game",1);
		}
		elsif ($sum == $roll) { #summon random item for player, reset variables for a new game
			$npc->CastSpell(119,$npc); #ignites a firework
			quest::shout("We have a grand winner! Here is your item reward, $name.");
			quest::summonitem(quest::ChooseRandom(50853,40714,66450,64714,67924,43971,40778,54978,9210)); #several illusion items for random reward
			quest::settimer("game",1);
		}
		else { #player loses, reset variables for a new game
			quest::settimer("game",1);
		}
    }
	else {
	}
}

sub EVENT_TIMER {
	if($timer eq "game") { #game time expires, reset variables for a new game
		quest::stoptimer("game");
		quest::say("This game has ended.");
		quest::emote("gathers the glyphed jetons into a pile and randomizes them, ready for the next game.");
		$ready = 0;
		$roll = 100;
		$sum = 0;
	}
}

