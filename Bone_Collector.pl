sub EVENT_SPAWN {
   $x = $npc->GetX();
   $y = $npc->GetY();
   quest::set_proximity($x - 500, $x + 500, $y - 500, $y + 500);
}

sub EVENT_SAY {
  my $saylink1 = quest::saylink("REZ");
  if (($text=~/hail/i) && ($ulevel<86)) {
	$client->Message(315,"Hello $name, Bring me an Essence Emerald and I can gather your pathetic bones for you. I can also give you a [$saylink1] if you wish.");
  }
  if (($text=~/rez/i) && ($ulevel<86)) {
	  my $charid = $client->GetID();
	  if($text=~/rez/i) {
            my $corpse = $entity_list->GetCorpseByOwner($client);
            $client->Message(315,'Ok, Stand by '.$corpse->GetOwnerName().' I am rezzing your corpse.');
            $corpse_id = $corpse->GetID();
            $npc->CastSpell(1524,$corpse_id);
      }
  }
}

sub EVENT_ITEM {
$failure = "Sorry $name I can not help you.";


	if(plugin::check_handin(\%itemcount, 9963 => 1))
	{
		if ($ulevel<86)
		{
			EVENT_SUMMON();
		}
		else
		{
			quest::say($failure);
			quest::summonitem(9963);
		}
	}
}

sub EVENT_SUMMON {
$charid = $client->CharacterID();
$count = $client->GetCorpseCount();
# $corpse = quest::getplayerburiedcorpsecount($charid);
$x = $client->GetX();
$y = $client->GetY();
$z = $client->GetZ();
	
	if($count > 0)
	{
    		quest::summonallplayercorpses($charid,$x,$y,$z,0);
			$client->Message(315,"There is the bones you left behind $name . See you again sometime.");
	}
	
	else {
			$client->Message(315,"You have no corpses $name, take this back.");
			quest::summonitem(9963);
	}
}
