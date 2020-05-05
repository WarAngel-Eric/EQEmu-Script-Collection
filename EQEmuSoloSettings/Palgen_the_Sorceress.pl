sub EVENT_SAY
{
	my $say_items = quest::saylink("items", 1);
	my $say_bind = quest::saylink("bind you here", 1);
	my $say_class = quest::saylink("class", 1);

	if($text=~/hail/i)
	{
		quest::say("Greetings, $name. If you are searching for particular $say_items, I may know the merchant you seek. I can also $say_bind if you wish. If you want to know what spells, songs, and such that your $say_class can use, I may be able to help you with that as well.");
	}
	elsif($text=~/bind you here/i){
		quest::say("Binding your soul. You will return here when you die.");
		quest::selfcast(2049);
	}
	elsif($text=~/items/i)
	{
		quest::say("Yes. Precede your question with a `M:` followed by part of the name for the item you seek and I will see what I can recall. As an example, to ask where you can buy `Cloth Cap`, then ask me where you can find `M:Cloth Cap`. You can also search for items like `Cloth Cap`, so if you want to search for items that have that in the name, you can ask for `M:*Cloth Cap*`. You can also search for items that end in `M:*Cloth Cap`, or begin with `M:Cloth Cap*`.");
	}
	elsif($text=~/class/i)
	{
		quest::say("Well $class, which level do you wish to know about? Simply tell me the level you are curious about.");
	}
	elsif ( ($text+0) > 0 )
	{
		my $spell_level = $text+0;
		my $connect = plugin::LoadMysql();
		my $search_class = $connect->quote("$class");
		my $search_type = "class_warrior";

		if ( $class eq "Warrior" ){ $search_type = "class_warrior"; }
		elsif ( $class eq "Cleric" ){ $search_type = "class_cleric"; }
		elsif ( $class eq "Paladin" ){ $search_type = "class_paladin"; }
		elsif ( $class eq "Ranger" ){ $search_type = "class_ranger"; }
		elsif ( $class eq "Shadowknight" ){ $search_type = "class_shadow"; }
		elsif ( $class eq "Druid" ){ $search_type = "class_druid"; }
		elsif ( $class eq "Monk" ){ $search_type = "class_monk"; }
		elsif ( $class eq "Bard" ){ $search_type = "class_bard"; }
		elsif ( $class eq "Rogue" ){ $search_type = "class_rogue"; }
		elsif ( $class eq "Shaman" ){ $search_type = "class_shaman"; }
		elsif ( $class eq "Necromancer" ){ $search_type = "class_necro"; }
		elsif ( $class eq "Wizard" ){ $search_type = "class_wizard"; }
		elsif ( $class eq "Mage" ){ $search_type = "class_mage"; }
		elsif ( $class eq "Enchanter" ){ $search_type = "class_enchant"; }
		elsif ( $class eq "Beastmaster" ){ $search_type = "class_beast"; }
		elsif ( $class eq "Berserker" ){ $search_type = "class_berserk"; }

		my $list_spells = 0;

		my $sql_query = "SELECT * FROM _item_search WHERE $search_type > 0 AND $search_type < 86 AND $search_type = $spell_level ORDER BY search_name, search_location LIMIT 300";
		my $sql_handler = $connect->prepare($sql_query);
		$sql_handler->execute();

		while (@spell_row = $sql_handler->fetchrow_array())
		{
			$list_spells++;

			$spell_name = quest::varlink($spell_row[0]);
			$spell_vendor = $spell_row[3];
				$spell_vendor =~ s/\_/ /g;
				$spell_vendor =~ s/\#//g;
			$spell_zone = $spell_row[4];

			$client->Message(315, "$spell_name from $spell_vendor ($spell_zone).");
		}

		if ( $list_spells > 0 ){ quest::say("This is what I know about a Level $spell_level $class."); }
		else { quest::say("Sorry, $name. I cannot recall anything about a Level $spell_level $class."); }

		$connect->disconnect();
	}
	elsif($text=~/M:/i) 
	{
		my $item_name = "";

		my $connect = plugin::LoadMysql();

		$text = substr $text, 2;

		$text =~ s/'/`/g;
		$text =~ s/\*/\%/g;

		my $criteria = $connect->quote("$text");

		my $found_items = 0;

		my $sql_query = "SELECT * FROM _item_search WHERE search_name LIKE $criteria OR ( spell_name LIKE $criteria AND spell_name IS NOT NULL ) LIMIT 300";
		my $sql_handler = $connect->prepare($sql_query);
		$sql_handler->execute();

		while (@item_row = $sql_handler->fetchrow_array())
		{
			$found_items++;

			$item_name = quest::varlink($item_row[0]);
			$item_vendor = $item_row[3];
				$item_vendor =~ s/\_/ /g;
				$item_vendor =~ s/\#//g;
			$item_zone = $item_row[4];

			$client->Message(315, "$item_name from $item_vendor ($item_zone).");
		}

		if ( $found_items > 0 ){ quest::say("I believe this is what you may seek."); }
		else { quest::say("Sorry, $name. I am not sure about that item."); }

		$connect->disconnect();
	}
}