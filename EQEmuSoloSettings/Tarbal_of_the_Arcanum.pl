sub EVENT_SAY
{
	my $say_high = quest::saylink("antiquities", 1);
	my $say_lows = quest::saylink("oddities", 1);

	my $jobs = 0;

	if ( $class eq "Warrior" ){ $jobs = 1; }
	elsif ( $class eq "Cleric" ){ $jobs = 2; }
	elsif ( $class eq "Paladin" ){ $jobs = 4; }
	elsif ( $class eq "Ranger" ){ $jobs = 8; }
	elsif ( $class eq "Shadowknight" ){ $jobs = 16; }
	elsif ( $class eq "Druid" ){ $jobs = 32; }
	elsif ( $class eq "Monk" ){ $jobs = 64; }
	elsif ( $class eq "Bard" ){ $jobs = 128; }
	elsif ( $class eq "Rogue" ){ $jobs = 256; }
	elsif ( $class eq "Shaman" ){ $jobs = 512; }
	elsif ( $class eq "Necromancer" ){ $jobs = 1024; }
	elsif ( $class eq "Wizard" ){ $jobs = 2048; }
	elsif ( $class eq "Mage" ){ $jobs = 4096; }
	elsif ( $class eq "Enchanter" ){ $jobs = 8192; }
	elsif ( $class eq "Beastmaster" ){ $jobs = 16384; }
	elsif ( $class eq "Berserker" ){ $jobs = 32768; }

	my $born = 0;

	if ( $race eq "Human" ){ $born = 1; }
	elsif ( $race eq "Barbarian" ){ $born = 2; }
	elsif ( $race eq "Erudite" ){ $born = 4; }
	elsif ( $race eq "Wood Elf" ){ $born = 8; }
	elsif ( $race eq "High Elf" ){ $born = 16; }
	elsif ( $race eq "Dark Elf" ){ $born = 32; }
	elsif ( $race eq "Half-Elf" ){ $born = 64; }
	elsif ( $race eq "Dwarf" ){ $born = 128; }
	elsif ( $race eq "Troll" ){ $born = 256; }
	elsif ( $race eq "Ogre" ){ $born = 512; }
	elsif ( $race eq "Halfling" ){ $born = 1024; }
	elsif ( $race eq "Gnome" ){ $born = 2048; }
	elsif ( $race eq "Iksar" ){ $born = 4096; }
	elsif ( $race eq "Vah Shir" ){ $born = 8192; }
	elsif ( $race eq "Froglok" ){ $born = 16384; }

	if($text=~/hail/i)
	{
		quest::say("Greetings, $name. I travel the world to sell some high priced $say_high and some less expensive $say_lows to those with a pouch full of platinum. If you like, I can show you about fifty different items you can use for your race, class, and level. The fifty I can show you I will randomly select from my wares, but you may ask for $say_high or $say_lows again and I will show you another set of fifty random items. If any interest you, you can select it from what I show you to procure it.");
	}
	elsif($text=~/antiquities/i)
	{
		my $item_name = "";

		my $connect = plugin::LoadMysql();

		my $found_items = 0;

		my $sql_query = "SELECT * FROM _high_dollar WHERE races & $born AND classes & $jobs AND $ulevel >= level ORDER BY RAND() LIMIT 50";
		my $sql_handler = $connect->prepare($sql_query);
		$sql_handler->execute();

		while (@item_row = $sql_handler->fetchrow_array())
		{
			$found_items++;

			$item_name = quest::varlink($item_row[0]);
			$item_cost = $item_row[2];
				$a = $item_cost;
				$b = reverse $a;
				@c = unpack("(A3)*", $b);
				$d = reverse join ',', @c;
				$item_cost = $d;

			$say_catalog = quest::saylink("$item_row[0]", 1);

			quest::say("$item_name at $item_cost copper (buy $say_catalog).");
		}

		if ( $found_items < 1 ){ quest::say("Sorry, $name. I do not have anything to sell you that you could use."); }
		else { quest::say("Do you perhaps want to see my other $say_high or $say_lows?"); }

		$connect->disconnect();
	}
	elsif($text=~/oddities/i)
	{
		my $item_name = "";

		my $connect = plugin::LoadMysql();

		my $found_items = 0;

		my $sql_query = "SELECT * FROM _low_dollar WHERE races & $born AND classes & $jobs AND $ulevel >= level ORDER BY RAND() LIMIT 50";
		my $sql_handler = $connect->prepare($sql_query);
		$sql_handler->execute();

		while (@item_row = $sql_handler->fetchrow_array())
		{
			$found_items++;

			$item_name = quest::varlink($item_row[0]);
			$item_cost = $item_row[2];
				$a = $item_cost;
				$b = reverse $a;
				@c = unpack("(A3)*", $b);
				$d = reverse join ',', @c;
				$item_cost = $d;

			$say_catalog = quest::saylink("$item_row[0]", 1);

			quest::say("$item_name at $item_cost copper (buy $say_catalog).");
		}

		if ( $found_items < 1 ){ quest::say("Sorry, $name. I do not have anything to sell you that you could use."); }
		else { quest::say("Do you perhaps want to see my other $say_high or $say_lows?"); }

		$connect->disconnect();
	}
	elsif ( ($text+0) > 0 )
	{
		my $item_name = "";

		my $connect = plugin::LoadMysql();

		my $criteria = $connect->quote("$text");

		my $sql_query = "SELECT * FROM _high_dollar WHERE item = $criteria";
		my $sql_handler = $connect->prepare($sql_query);
		$sql_handler->execute();

		while (@item_row = $sql_handler->fetchrow_array())
		{
			$found_items++;

			$item_name = quest::varlink($item_row[0]);
			$item_cost = $item_row[2];
				$a = $item_cost;
				$b = reverse $a;
				@c = unpack("(A3)*", $b);
				$d = reverse join ',', @c;
				$item_cost = $d;

			if ( $client->GetCarriedMoney() >= $item_row[2] )
			{
				quest::say("Thank you, $name. Here is your $item_name.");
				quest::summonitem($text);
				$client->TakeMoneyFromPP( $item_row[2], 1 );
			}
			else
			{
				quest::say("Sorry, $name. You do not have enough coins for that $item_name.");
			}
		}
	}
}