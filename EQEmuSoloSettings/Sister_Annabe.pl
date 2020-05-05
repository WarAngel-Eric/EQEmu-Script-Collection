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
quest::taskselector(7425, 7426, 7427, 7428, 7429, 7430, 7431, 7442, 7449, 7456, 7457, 7466, 7467, 7476, 7484, 7485, 7488, 7491);
}

}

sub EVENT_ITEM {
if ($itemcount{1161} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1166);} #38
elsif ($itemcount{1166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1168);} #38
elsif ($itemcount{1168} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13919);} #38
elsif ($itemcount{13919} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16889);} #38
elsif ($itemcount{16889} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25345);} #38
elsif ($itemcount{25345} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38054);} #38
elsif ($itemcount{38054} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85727);} #38
elsif ($itemcount{85727} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1161);} #38
elsif ($itemcount{7302} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21581);} #38
elsif ($itemcount{21581} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(36162);} #38
elsif ($itemcount{36162} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38256);} #38
elsif ($itemcount{38256} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38259);} #38
elsif ($itemcount{38259} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38264);} #38
elsif ($itemcount{38264} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38268);} #38
elsif ($itemcount{38268} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38302);} #38
elsif ($itemcount{38302} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7302);} #38
elsif ($itemcount{4271} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4272);} #38
elsif ($itemcount{4272} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4274);} #38
elsif ($itemcount{4274} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4276);} #38
elsif ($itemcount{4276} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25653);} #38
elsif ($itemcount{25653} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25655);} #38
elsif ($itemcount{25655} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25657);} #38
elsif ($itemcount{25657} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29248);} #38
elsif ($itemcount{29248} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4271);} #38
elsif ($itemcount{1769} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6029);} #38
elsif ($itemcount{6029} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7897);} #38
elsif ($itemcount{7897} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21502);} #38
elsif ($itemcount{21502} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29284);} #38
elsif ($itemcount{29284} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30283);} #38
elsif ($itemcount{30283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59996);} #38
elsif ($itemcount{59996} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67241);} #38
elsif ($itemcount{67241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1769);} #38
elsif ($itemcount{1530} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5386);} #38
elsif ($itemcount{5386} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7765);} #38
elsif ($itemcount{7765} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12278);} #38
elsif ($itemcount{12278} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25060);} #38
elsif ($itemcount{25060} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26054);} #38
elsif ($itemcount{26054} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85669);} #38
elsif ($itemcount{85669} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88130);} #38
elsif ($itemcount{88130} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1530);} #38
elsif ($itemcount{6936} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7813);} #38
elsif ($itemcount{7813} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20768);} #38
elsif ($itemcount{20768} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24033);} #38
elsif ($itemcount{24033} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28266);} #38
elsif ($itemcount{28266} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29282);} #38
elsif ($itemcount{29282} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54389);} #38
elsif ($itemcount{54389} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69272);} #38
elsif ($itemcount{69272} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6936);} #38
elsif ($itemcount{3516} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25157);} #38
elsif ($itemcount{25157} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25161);} #38
elsif ($itemcount{25161} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25164);} #38
elsif ($itemcount{25164} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25165);} #38
elsif ($itemcount{25165} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38084);} #38
elsif ($itemcount{38084} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38086);} #38
elsif ($itemcount{38086} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89005);} #38
elsif ($itemcount{89005} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3516);} #38
elsif ($itemcount{58801} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58805);} #38
elsif ($itemcount{58805} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58807);} #38
elsif ($itemcount{58807} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58863);} #38
elsif ($itemcount{58863} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63204);} #38
elsif ($itemcount{63204} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63210);} #38
elsif ($itemcount{63210} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63540);} #38
elsif ($itemcount{63540} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58801);} #38
elsif ($itemcount{58806} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58822);} #38
elsif ($itemcount{58822} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58878);} #38
elsif ($itemcount{58878} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63209);} #38
elsif ($itemcount{63209} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63323);} #38
elsif ($itemcount{63323} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63379);} #38
elsif ($itemcount{63379} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63555);} #38
elsif ($itemcount{63555} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58806);} #38
elsif ($itemcount{11308} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25084);} #38
elsif ($itemcount{25084} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32171);} #38
elsif ($itemcount{32171} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89099);} #38
elsif ($itemcount{89099} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89107);} #38
elsif ($itemcount{89107} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89122);} #38
elsif ($itemcount{89122} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90299);} #38
elsif ($itemcount{90299} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11308);} #38
elsif ($itemcount{3754} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7523);} #38
elsif ($itemcount{7523} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7524);} #38
elsif ($itemcount{7524} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7530);} #38
elsif ($itemcount{7530} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7532);} #38
elsif ($itemcount{7532} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21925);} #38
elsif ($itemcount{21925} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27732);} #38
elsif ($itemcount{27732} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3754);} #38
elsif ($itemcount{2934} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2940);} #38
elsif ($itemcount{2940} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2946);} #38
elsif ($itemcount{2946} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6046);} #38
elsif ($itemcount{6046} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8070);} #38
elsif ($itemcount{8070} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8433);} #38
elsif ($itemcount{8433} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89191);} #38
elsif ($itemcount{89191} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2934);} #38
elsif ($itemcount{7546} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7568);} #38
elsif ($itemcount{7568} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7574);} #38
elsif ($itemcount{7574} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11305);} #38
elsif ($itemcount{11305} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27019);} #38
elsif ($itemcount{27019} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27729);} #38
elsif ($itemcount{27729} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38017);} #38
elsif ($itemcount{38017} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7546);} #38
elsif ($itemcount{6815} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11589);} #38
elsif ($itemcount{11589} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27718);} #38
elsif ($itemcount{27718} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30052);} #38
elsif ($itemcount{30052} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38004);} #38
elsif ($itemcount{38004} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38241);} #38
elsif ($itemcount{38241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67367);} #38
elsif ($itemcount{67367} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6815);} #38
elsif ($itemcount{3900} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26492);} #38
elsif ($itemcount{26492} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38120);} #38
elsif ($itemcount{38120} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58948);} #38
elsif ($itemcount{58948} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63415);} #38
elsif ($itemcount{63415} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63647);} #38
elsif ($itemcount{63647} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86685);} #38
elsif ($itemcount{86685} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3900);} #38
elsif ($itemcount{7363} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8974);} #38
elsif ($itemcount{8974} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27068);} #38
elsif ($itemcount{27068} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27080);} #38
elsif ($itemcount{27080} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31470);} #38
elsif ($itemcount{31470} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38115);} #38
elsif ($itemcount{38115} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7363);} #38
elsif ($itemcount{6831} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8973);} #38
elsif ($itemcount{8973} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9243);} #38
elsif ($itemcount{8973} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27061);} #38
elsif ($itemcount{27061} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27079);} #38
elsif ($itemcount{27079} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6831);} #38
elsif ($itemcount{27059} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38157);} #38
elsif ($itemcount{38157} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89163);} #38
elsif ($itemcount{89163} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27059);} #38
}