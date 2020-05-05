sub EVENT_SAY
{
	my $say_trade = quest::saylink("tradeskill", 1);

	if($text=~/hail/i)
	{
		quest::say("Greetings, $name. If you are searching for some particular $say_trade items, I may have what you are looking for. I carry almost 3,000 rare items that may help you create something new.");
	}
	elsif($text=~/tradeskill/i)
	{
		quest::say("Yes. Simply tell me what you are looking for and I will tell you if I have it and what it would cost. Precede your question with a `T:` followed by part of the name for the item you seek and I will see what I can recall. As an example, to ask where you can buy `Green Dye`, then ask me where you can find `T:Green Dye`. You can also search for items like `Green Dye`, so if you want to search for items that have that in the name, you can ask for `T:*Green Dye*`. You can also search for items that end in `T:*Green Dye`, or begin with `T:Green Dye*`. If you wish to buy the item from me, select my catalog number as each item I carry has a unique number for me to better track my wares.");
	}
	elsif($text=~/T:/i) 
	{
		my $item_name = "";

		my $connect = plugin::LoadMysql();

		$text = substr $text, 2;

		$text =~ s/'/`/g;
		$text =~ s/\*/\%/g;

		my $criteria = $connect->quote("$text");

		my $found_items = 0;

		my $sql_query = "SELECT * FROM _craft_merchant WHERE name LIKE $criteria LIMIT 50";
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

		if ( $found_items < 1 ){ quest::say("Sorry, $name. I do not have anything like that."); }

		$connect->disconnect();
	}
	elsif ( ($text+0) > 0 )
	{
		my $connect = plugin::LoadMysql();

		my $criteria = $connect->quote("$text");

		my $sql_query = "SELECT * FROM _craft_merchant WHERE item = $criteria";
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
			else {
				quest::say("Sorry, $name. It will cost you $item_cost copper for that $item_name.");
			}
		}
	}
}