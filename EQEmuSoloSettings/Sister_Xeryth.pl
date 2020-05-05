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
quest::taskselector(7845, 7848, 7850, 7852, 7857, 7870, 7874, 7879, 7887, 7890, 7893, 7898, 7900, 7902, 7904, 7905, 7907, 7909, 7910, 7911, 7912, 7913);
}

}

sub EVENT_ITEM {
if ($itemcount{2560} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2561);} #46
elsif ($itemcount{2561} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2639);} #46
elsif ($itemcount{2639} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2640);} #46
elsif ($itemcount{2640} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3594);} #46
elsif ($itemcount{3594} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7583);} #46
elsif ($itemcount{7583} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28255);} #46
elsif ($itemcount{28255} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30658);} #46
elsif ($itemcount{30658} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2560);} #46
elsif ($itemcount{8925} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11322);} #46
elsif ($itemcount{11322} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11326);} #46
elsif ($itemcount{11326} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21545);} #46
elsif ($itemcount{21545} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21559);} #46
elsif ($itemcount{21559} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54235);} #46
elsif ($itemcount{54235} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54236);} #46
elsif ($itemcount{54236} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54237);} #46
elsif ($itemcount{54237} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8925);} #46
elsif ($itemcount{2965} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12518);} #46
elsif ($itemcount{12518} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12522);} #46
elsif ($itemcount{12522} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12525);} #46
elsif ($itemcount{12525} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12529);} #46
elsif ($itemcount{12529} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24801);} #46
elsif ($itemcount{24801} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30293);} #46
elsif ($itemcount{30293} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2965);} #46
elsif ($itemcount{3373} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3374);} #46
elsif ($itemcount{3374} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3690);} #46
elsif ($itemcount{3690} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3703);} #46
elsif ($itemcount{3703} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3716);} #46
elsif ($itemcount{3716} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7234);} #46
elsif ($itemcount{7234} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7304);} #46
elsif ($itemcount{7304} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67219);} #46
elsif ($itemcount{67219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3373);} #46
elsif ($itemcount{2314} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2902);} #46
elsif ($itemcount{2902} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38128);} #46
elsif ($itemcount{38128} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38129);} #46
elsif ($itemcount{38129} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38135);} #46
elsif ($itemcount{38135} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38142);} #46
elsif ($itemcount{38142} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38143);} #46
elsif ($itemcount{38143} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38144);} #46
elsif ($itemcount{38144} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2314);} #46
elsif ($itemcount{2912} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24711);} #46
elsif ($itemcount{24711} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27007);} #46
elsif ($itemcount{27007} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29870);} #46
elsif ($itemcount{29870} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58875);} #46
elsif ($itemcount{58875} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58876);} #46
elsif ($itemcount{58876} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63376);} #46
elsif ($itemcount{63376} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2912);} #46
elsif ($itemcount{6225} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6231);} #46
elsif ($itemcount{6231} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7233);} #46
elsif ($itemcount{7233} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10572);} #46
elsif ($itemcount{10572} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58854);} #46
elsif ($itemcount{58854} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63587);} #46
elsif ($itemcount{63587} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69267);} #46
elsif ($itemcount{69267} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6225);} #46
elsif ($itemcount{7547} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7548);} #46
elsif ($itemcount{7548} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38003);} #46
elsif ($itemcount{38003} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38007);} #46
elsif ($itemcount{38007} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38019);} #46
elsif ($itemcount{38019} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52674);} #46
elsif ($itemcount{52674} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88088);} #46
elsif ($itemcount{88088} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7547);} #46
elsif ($itemcount{3792} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7512);} #46
elsif ($itemcount{7512} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7513);} #46
elsif ($itemcount{7513} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7519);} #46
elsif ($itemcount{7519} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7521);} #46
elsif ($itemcount{7521} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27027);} #46
elsif ($itemcount{27027} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29553);} #46
elsif ($itemcount{29553} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3792);} #46
elsif ($itemcount{3555} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3572);} #46
elsif ($itemcount{3572} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12519);} #46
elsif ($itemcount{12519} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12523);} #46
elsif ($itemcount{12523} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24808);} #46
elsif ($itemcount{24808} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28354);} #46
elsif ($itemcount{28354} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89223);} #46
elsif ($itemcount{89223} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3555);} #46
elsif ($itemcount{3149} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21914);} #46
elsif ($itemcount{21914} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24800);} #46
elsif ($itemcount{24800} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24805);} #46
elsif ($itemcount{24805} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24810);} #46
elsif ($itemcount{24810} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38175);} #46
elsif ($itemcount{38175} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38186);} #46
elsif ($itemcount{38186} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3149);} #46
elsif ($itemcount{2975} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3722);} #46
elsif ($itemcount{3722} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29836);} #46
elsif ($itemcount{29836} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38067);} #46
elsif ($itemcount{38067} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65239);} #46
elsif ($itemcount{65239} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89258);} #46
elsif ($itemcount{89258} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89259);} #46
elsif ($itemcount{89259} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2975);} #46
elsif ($itemcount{1601} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1605);} #46
elsif ($itemcount{1605} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2420);} #46
elsif ($itemcount{2420} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3558);} #46
elsif ($itemcount{3558} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3739);} #46
elsif ($itemcount{3739} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27709);} #46
elsif ($itemcount{27709} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38124);} #46
elsif ($itemcount{38124} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1601);} #46
elsif ($itemcount{3413} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3899);} #46
elsif ($itemcount{3899} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3939);} #46
elsif ($itemcount{3939} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3942);} #46
elsif ($itemcount{3942} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3978);} #46
elsif ($itemcount{3978} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27701);} #46
elsif ($itemcount{27701} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89264);} #46
elsif ($itemcount{89264} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3413);} #46
elsif ($itemcount{6810} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38114);} #46
elsif ($itemcount{38114} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58913);} #46
elsif ($itemcount{58913} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58914);} #46
elsif ($itemcount{58914} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63449);} #46
elsif ($itemcount{63449} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63450);} #46
elsif ($itemcount{63450} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63645);} #46
elsif ($itemcount{63645} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6810);} #46
elsif ($itemcount{3711} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5605);} #46
elsif ($itemcount{5605} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9285);} #46
elsif ($itemcount{9285} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86714);} #46
elsif ($itemcount{86714} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86753);} #46
elsif ($itemcount{86753} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86754);} #46
elsif ($itemcount{86754} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89103);} #46
elsif ($itemcount{89103} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3711);} #46
elsif ($itemcount{3789} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7516);} #46
elsif ($itemcount{7516} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7549);} #46
elsif ($itemcount{7549} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7551);} #46
elsif ($itemcount{7551} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7571);} #46
elsif ($itemcount{7571} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21918);} #46
elsif ($itemcount{21918} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69280);} #46
elsif ($itemcount{69280} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3789);} #46
elsif ($itemcount{7540} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7562);} #46
elsif ($itemcount{7562} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29832);} #46
elsif ($itemcount{29832} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71303);} #46
elsif ($itemcount{71303} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75685);} #46
elsif ($itemcount{75685} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75697);} #46
elsif ($itemcount{75697} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89113);} #46
elsif ($itemcount{89113} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7540);} #46
elsif ($itemcount{7289} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7294);} #46
elsif ($itemcount{7294} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25588);} #46
elsif ($itemcount{25588} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25590);} #46
elsif ($itemcount{25590} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75689);} #46
elsif ($itemcount{75689} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86693);} #46
elsif ($itemcount{86693} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86733);} #46
elsif ($itemcount{86733} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7289);} #46
elsif ($itemcount{6820} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6829);} #46
elsif ($itemcount{6829} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27067);} #46
elsif ($itemcount{27067} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32557);} #46
elsif ($itemcount{32557} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(55296);} #46
elsif ($itemcount{55296} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85537);} #46
elsif ($itemcount{85537} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90034);} #46
elsif ($itemcount{90034} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6820);} #46
elsif ($itemcount{3898} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24618);} #46
elsif ($itemcount{24618} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27065);} #46
elsif ($itemcount{27065} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27719);} #46
elsif ($itemcount{27719} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38163);} #46
elsif ($itemcount{38163} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69275);} #46
elsif ($itemcount{69275} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71302);} #46
elsif ($itemcount{71302} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3898);} #46
elsif ($itemcount{6728} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11159);} #46
elsif ($itemcount{11159} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(22816);} #46
elsif ($itemcount{22816} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28350);} #46
elsif ($itemcount{28350} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29605);} #46
elsif ($itemcount{29605} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31464);} #46
elsif ($itemcount{31464} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86856);} #46
elsif ($itemcount{86856} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6728);} #46
}