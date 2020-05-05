sub EVENT_SAY {

my $say_serve = quest::saylink("serve", 1);
my $say_bind = quest::saylink("bind", 1);

if($text=~/hail/i)
{
	my $phrase = "";
	my $connect = plugin::LoadMysql();
	my $sql_query = "SHOW TABLES LIKE 'bot%'";
	my $sql_handler = $connect->prepare($sql_query);
	$sql_handler->execute();
	while (@item_row = $sql_handler->fetchrow_array())
	{
		$phrase = "If you need travel companions for your journey, look into using the '#bot help' or '#bot help create' commands to organize some henchman.";
	}

	quest::say("Greetings, $name. Have you come to $say_serve the Velvet Order? Maybe you wish for me to $say_bind you here? If it is knowledge of the many worlds you seek, perhaps you could speak to Sister Gretak in the Plane of Knowledge. If you need some rare crafting items, maybe someone from the Amethyst Blade can help. You could probably find them in the Bazaar along with many other merchants selling very valuable items. The cities often have sages or artisans that can help you find crafting items or spell scrolls, along with arcanum merchants selling rare equipment. $phrase");
}

if($text=~/bind/i){
	quest::say("Binding your soul. You will return here when you die.");
	quest::selfcast(2049);
}

if($text=~/serve/i){
quest::taskselector(7985, 7986, 7991, 7994, 7998, 7999, 8000, 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011);
}

}

sub EVENT_ITEM {
if ($itemcount{16769} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(68245);} #202
elsif ($itemcount{68245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89167);} #202
elsif ($itemcount{89167} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16769);} #202
elsif ($itemcount{16755} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(82700);} #202
elsif ($itemcount{82700} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89175);} #202
elsif ($itemcount{89175} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16755);} #202
elsif ($itemcount{6204} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16761);} #202
elsif ($itemcount{16761} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31187);} #202
elsif ($itemcount{31187} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6204);} #202
elsif ($itemcount{29296} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(55068);} #202
elsif ($itemcount{55068} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85573);} #202
elsif ($itemcount{85573} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29296);} #202
elsif ($itemcount{16795} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89159);} #202
elsif ($itemcount{89159} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16795);} #202
elsif ($itemcount{25438} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67625);} #202
elsif ($itemcount{67625} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25438);} #202
elsif ($itemcount{16691} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31237);} #202
elsif ($itemcount{31237} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16691);} #202
elsif ($itemcount{31462} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89238);} #202
elsif ($itemcount{89238} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31462);} #202
elsif ($itemcount{7386} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15773);} #202
elsif ($itemcount{15773} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7386);} #202
elsif ($itemcount{29558} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31085);} #202
elsif ($itemcount{31085} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29558);} #202
elsif ($itemcount{15764} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51865);} #202
elsif ($itemcount{51865} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15764);} #202
elsif ($itemcount{15474} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29559);} #202
elsif ($itemcount{29559} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15474);} #202
elsif ($itemcount{31183} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31358);} #202
elsif ($itemcount{31358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31183);} #202
elsif ($itemcount{15758} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15770);} #202
elsif ($itemcount{15770} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15758);} #202
elsif ($itemcount{15119} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25434);} #202
elsif ($itemcount{25434} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15119);} #202
elsif ($itemcount{15751} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15761);} #202
elsif ($itemcount{15761} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15751);} #202
elsif ($itemcount{8358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11001);} #202
elsif ($itemcount{11001} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8358);} #202
elsif ($itemcount{29551} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(82703);} #202
elsif ($itemcount{82703} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29551);} #202
}