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
quest::taskselector(7705, 7706, 7707, 7708, 7709, 7728, 7741, 7746, 7748, 7751, 7754, 7757, 7759, 7760, 7762, 7763, 7769, 7771, 7774);
}

}

sub EVENT_ITEM {
if ($itemcount{7960} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7963);} #10
elsif ($itemcount{7963} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7965);} #10
elsif ($itemcount{7965} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19135);} #10
elsif ($itemcount{19135} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25651);} #10
elsif ($itemcount{25651} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25656);} #10
elsif ($itemcount{25656} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25660);} #10
elsif ($itemcount{25660} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28265);} #10
elsif ($itemcount{28265} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7960);} #10
elsif ($itemcount{2706} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7192);} #10
elsif ($itemcount{7192} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7193);} #10
elsif ($itemcount{7193} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7295);} #10
elsif ($itemcount{7295} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7296);} #10
elsif ($itemcount{7296} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25174);} #10
elsif ($itemcount{25174} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25176);} #10
elsif ($itemcount{25176} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25178);} #10
elsif ($itemcount{25178} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2706);} #10
elsif ($itemcount{9321} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28241);} #10
elsif ($itemcount{28241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28242);} #10
elsif ($itemcount{28242} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28243);} #10
elsif ($itemcount{28243} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29388);} #10
elsif ($itemcount{29388} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54385);} #10
elsif ($itemcount{54385} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54386);} #10
elsif ($itemcount{54386} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54387);} #10
elsif ($itemcount{54387} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9321);} #10
elsif ($itemcount{11914} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38275);} #10
elsif ($itemcount{38275} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38292);} #10
elsif ($itemcount{38292} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63783);} #10
elsif ($itemcount{63783} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88095);} #10
elsif ($itemcount{88095} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88096);} #10
elsif ($itemcount{88096} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88097);} #10
elsif ($itemcount{88097} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88099);} #10
elsif ($itemcount{88099} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11914);} #10
elsif ($itemcount{7046} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7230);} #10
elsif ($itemcount{7230} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10573);} #10
elsif ($itemcount{10573} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10576);} #10
elsif ($itemcount{10576} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10599);} #10
elsif ($itemcount{10599} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58796);} #10
elsif ($itemcount{58796} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63199);} #10
elsif ($itemcount{63199} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63530);} #10
elsif ($itemcount{63530} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7046);} #10
elsif ($itemcount{3410} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3414);} #10
elsif ($itemcount{3414} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3415);} #10
elsif ($itemcount{3415} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3416);} #10
elsif ($itemcount{3416} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3418);} #10
elsif ($itemcount{3418} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10169);} #10
elsif ($itemcount{10169} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12237);} #10
elsif ($itemcount{12237} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3410);} #10
elsif ($itemcount{1621} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2905);} #10
elsif ($itemcount{2905} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3953);} #10
elsif ($itemcount{3953} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3956);} #10
elsif ($itemcount{3956} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8444);} #10
elsif ($itemcount{8444} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9393);} #10
elsif ($itemcount{9393} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38242);} #10
elsif ($itemcount{38242} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1621);} #10
elsif ($itemcount{2199} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8428);} #10
elsif ($itemcount{8428} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11283);} #10
elsif ($itemcount{11283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27024);} #10
elsif ($itemcount{27024} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71305);} #10
elsif ($itemcount{71305} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86809);} #10
elsif ($itemcount{86809} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89219);} #10
elsif ($itemcount{89219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2199);} #10
elsif ($itemcount{1283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1994);} #10
elsif ($itemcount{1994} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2000);} #10
elsif ($itemcount{2000} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3430);} #10
elsif ($itemcount{3430} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3567);} #10
elsif ($itemcount{3567} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7493);} #10
elsif ($itemcount{7493} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51242);} #10
elsif ($itemcount{51242} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1283);} #10
elsif ($itemcount{3520} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3744);} #10
elsif ($itemcount{3744} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3796);} #10
elsif ($itemcount{3796} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15790);} #10
elsif ($itemcount{15790} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29718);} #10
elsif ($itemcount{29718} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38172);} #10
elsif ($itemcount{38172} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85059);} #10
elsif ($itemcount{85059} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3520);} #10
elsif ($itemcount{2703} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2960);} #10
elsif ($itemcount{2960} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3557);} #10
elsif ($itemcount{3557} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4502);} #10
elsif ($itemcount{4502} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6816);} #10
elsif ($itemcount{6816} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12972);} #10
elsif ($itemcount{12972} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12976);} #10
elsif ($itemcount{12976} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2703);} #10
elsif ($itemcount{13613} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20424);} #10
elsif ($itemcount{20424} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21570);} #10
elsif ($itemcount{21570} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31725);} #10
elsif ($itemcount{31725} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38221);} #10
elsif ($itemcount{38221} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38226);} #10
elsif ($itemcount{38226} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38228);} #10
elsif ($itemcount{38228} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13613);} #10
elsif ($itemcount{2972} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3566);} #10
elsif ($itemcount{3566} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5616);} #10
elsif ($itemcount{5616} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6263);} #10
elsif ($itemcount{6263} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86863);} #10
elsif ($itemcount{86863} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86877);} #10
elsif ($itemcount{86877} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89208);} #10
elsif ($itemcount{89208} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2972);} #10
elsif ($itemcount{6260} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12526);} #10
elsif ($itemcount{12526} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25068);} #10
elsif ($itemcount{25068} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29111);} #10
elsif ($itemcount{29111} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38011);} #10
elsif ($itemcount{38011} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38309);} #10
elsif ($itemcount{38309} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65154);} #10
elsif ($itemcount{65154} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6260);} #10
elsif ($itemcount{3758} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4321);} #10
elsif ($itemcount{4321} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6733);} #10
elsif ($itemcount{6733} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9949);} #10
elsif ($itemcount{9949} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11597);} #10
elsif ($itemcount{11597} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65198);} #10
elsif ($itemcount{65198} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66138);} #10
elsif ($itemcount{66138} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3758);} #10
elsif ($itemcount{3791} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3935);} #10
elsif ($itemcount{3935} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3961);} #10
elsif ($itemcount{3961} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3965);} #10
elsif ($itemcount{3965} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3968);} #10
elsif ($itemcount{3968} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28388);} #10
elsif ($itemcount{28388} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38014);} #10
elsif ($itemcount{38014} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3791);} #10
elsif ($itemcount{7750} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24058);} #10
elsif ($itemcount{24058} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28342);} #10
elsif ($itemcount{28342} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29686);} #10
elsif ($itemcount{29686} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86793);} #10
elsif ($itemcount{86793} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89171);} #10
elsif ($itemcount{89171} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89224);} #10
elsif ($itemcount{89224} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7750);} #10
elsif ($itemcount{6227} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6828);} #10
elsif ($itemcount{6828} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16725);} #10
elsif ($itemcount{16725} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16783);} #10
elsif ($itemcount{16783} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21930);} #10
elsif ($itemcount{21930} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29004);} #10
elsif ($itemcount{29004} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51866);} #10
elsif ($itemcount{51866} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6227);} #10
elsif ($itemcount{2610} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6824);} #10
elsif ($itemcount{6824} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10857);} #10
elsif ($itemcount{10857} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11696);} #10
elsif ($itemcount{11696} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31184);} #10
elsif ($itemcount{31184} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51246);} #10
elsif ($itemcount{51246} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90033);} #10
elsif ($itemcount{90033} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2610);} #10
}