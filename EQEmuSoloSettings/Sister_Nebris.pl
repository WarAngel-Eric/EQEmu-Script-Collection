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
quest::taskselector(7565, 7566, 7567, 7568, 7569, 7570, 7571, 7582, 7583, 7597, 7598, 7599, 7600, 7606, 7607, 7610, 7614, 7615, 7616, 7617, 7620, 7622, 7623, 7624, 7631, 7632, 7633, 7634);
}

}

sub EVENT_ITEM {
if ($itemcount{11183} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11185);} #33
elsif ($itemcount{11185} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11187);} #33
elsif ($itemcount{11187} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11188);} #33
elsif ($itemcount{11188} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11189);} #33
elsif ($itemcount{11189} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11190);} #33
elsif ($itemcount{11190} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11192);} #33
elsif ($itemcount{11192} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11325);} #33
elsif ($itemcount{11325} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11183);} #33
elsif ($itemcount{2573} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8924);} #33
elsif ($itemcount{8924} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12886);} #33
elsif ($itemcount{12886} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38147);} #33
elsif ($itemcount{38147} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38149);} #33
elsif ($itemcount{38149} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38155);} #33
elsif ($itemcount{38155} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63788);} #33
elsif ($itemcount{63788} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85546);} #33
elsif ($itemcount{85546} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2573);} #33
elsif ($itemcount{3695} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3708);} #33
elsif ($itemcount{3708} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3721);} #33
elsif ($itemcount{3721} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3734);} #33
elsif ($itemcount{3734} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20994);} #33
elsif ($itemcount{20994} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28581);} #33
elsif ($itemcount{28581} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38315);} #33
elsif ($itemcount{38315} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38317);} #33
elsif ($itemcount{38317} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3695);} #33
elsif ($itemcount{3694} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3707);} #33
elsif ($itemcount{3707} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3720);} #33
elsif ($itemcount{3720} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3733);} #33
elsif ($itemcount{3733} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6777);} #33
elsif ($itemcount{6777} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7812);} #33
elsif ($itemcount{7812} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21910);} #33
elsif ($itemcount{21910} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85559);} #33
elsif ($itemcount{85559} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3694);} #33
elsif ($itemcount{3679} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4275);} #33
elsif ($itemcount{4275} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4277);} #33
elsif ($itemcount{4277} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4279);} #33
elsif ($itemcount{4279} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4280);} #33
elsif ($itemcount{4280} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12674);} #33
elsif ($itemcount{12674} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24005);} #33
elsif ($itemcount{24005} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24015);} #33
elsif ($itemcount{24015} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3679);} #33
elsif ($itemcount{3875} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5408);} #33
elsif ($itemcount{5408} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6301);} #33
elsif ($itemcount{6301} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7320);} #33
elsif ($itemcount{7320} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10358);} #33
elsif ($itemcount{10358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25156);} #33
elsif ($itemcount{25156} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30996);} #33
elsif ($itemcount{30996} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69287);} #33
elsif ($itemcount{69287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3875);} #33
elsif ($itemcount{6359} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10120);} #33
elsif ($itemcount{10120} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11926);} #33
elsif ($itemcount{11926} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52162);} #33
elsif ($itemcount{52162} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52165);} #33
elsif ($itemcount{52165} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54220);} #33
elsif ($itemcount{54220} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54227);} #33
elsif ($itemcount{54227} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63779);} #33
elsif ($itemcount{63779} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6359);} #33
elsif ($itemcount{11227} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11229);} #33
elsif ($itemcount{11229} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11232);} #33
elsif ($itemcount{11232} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11243);} #33
elsif ($itemcount{11243} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11244);} #33
elsif ($itemcount{11244} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11245);} #33
elsif ($itemcount{11245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11248);} #33
elsif ($itemcount{11248} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11227);} #33
elsif ($itemcount{5063} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7893);} #33
elsif ($itemcount{7893} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7895);} #33
elsif ($itemcount{7895} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21552);} #33
elsif ($itemcount{21552} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30281);} #33
elsif ($itemcount{30281} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30287);} #33
elsif ($itemcount{30287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90038);} #33
elsif ($itemcount{90038} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5063);} #33
elsif ($itemcount{2901} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3714);} #33
elsif ($itemcount{3714} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7338);} #33
elsif ($itemcount{7338} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28270);} #33
elsif ($itemcount{28270} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38212);} #33
elsif ($itemcount{38212} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38217);} #33
elsif ($itemcount{38217} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38227);} #33
elsif ($itemcount{38227} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2901);} #33
elsif ($itemcount{27001} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27730);} #33
elsif ($itemcount{27730} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58890);} #33
elsif ($itemcount{58890} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58891);} #33
elsif ($itemcount{58891} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63391);} #33
elsif ($itemcount{63391} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63392);} #33
elsif ($itemcount{63392} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63624);} #33
elsif ($itemcount{63624} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27001);} #33
elsif ($itemcount{1179} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2966);} #33
elsif ($itemcount{2966} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3514);} #33
elsif ($itemcount{3514} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3556);} #33
elsif ($itemcount{3556} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7184);} #33
elsif ($itemcount{7184} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24048);} #33
elsif ($itemcount{24048} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63051);} #33
elsif ($itemcount{63051} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1179);} #33
elsif ($itemcount{1995} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2974);} #33
elsif ($itemcount{2974} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3432);} #33
elsif ($itemcount{3432} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3436);} #33
elsif ($itemcount{3436} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3439);} #33
elsif ($itemcount{3439} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7395);} #33
elsif ($itemcount{7395} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29607);} #33
elsif ($itemcount{29607} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1995);} #33
elsif ($itemcount{3512} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3799);} #33
elsif ($itemcount{3799} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7783);} #33
elsif ($itemcount{7783} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10071);} #33
elsif ($itemcount{10071} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86831);} #33
elsif ($itemcount{86831} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89074);} #33
elsif ($itemcount{89074} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89124);} #33
elsif ($itemcount{89124} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3512);} #33
elsif ($itemcount{9382} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10577);} #33
elsif ($itemcount{10577} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10699);} #33
elsif ($itemcount{10699} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24534);} #33
elsif ($itemcount{24534} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28258);} #33
elsif ($itemcount{28258} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31469);} #33
elsif ($itemcount{31469} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71188);} #33
elsif ($itemcount{71188} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9382);} #33
elsif ($itemcount{6838} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7545);} #33
elsif ($itemcount{7545} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7552);} #33
elsif ($itemcount{7552} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7554);} #33
elsif ($itemcount{7554} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7979);} #33
elsif ($itemcount{7979} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24898);} #33
elsif ($itemcount{24898} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27036);} #33
elsif ($itemcount{27036} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6838);} #33
elsif ($itemcount{3570} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4318);} #33
elsif ($itemcount{4318} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6493);} #33
elsif ($itemcount{6493} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6495);} #33
elsif ($itemcount{6495} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9284);} #33
elsif ($itemcount{9284} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24524);} #33
elsif ($itemcount{24524} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86829);} #33
elsif ($itemcount{86829} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3570);} #33
elsif ($itemcount{6817} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8390);} #33
elsif ($itemcount{8390} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38130);} #33
elsif ($itemcount{38130} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38140);} #33
elsif ($itemcount{38140} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38319);} #33
elsif ($itemcount{38319} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38323);} #33
elsif ($itemcount{38323} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38327);} #33
elsif ($itemcount{38327} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6817);} #33
elsif ($itemcount{65130} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65152);} #33
elsif ($itemcount{65152} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65175);} #33
elsif ($itemcount{65175} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65197);} #33
elsif ($itemcount{65197} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65218);} #33
elsif ($itemcount{65218} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65219);} #33
elsif ($itemcount{65219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65238);} #33
elsif ($itemcount{65238} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65130);} #33
elsif ($itemcount{7217} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21912);} #33
elsif ($itemcount{21912} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(22818);} #33
elsif ($itemcount{22818} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38100);} #33
elsif ($itemcount{38100} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38304);} #33
elsif ($itemcount{38304} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86864);} #33
elsif ($itemcount{86864} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89204);} #33
elsif ($itemcount{89204} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7217);} #33
elsif ($itemcount{1721} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6716);} #33
elsif ($itemcount{6716} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7336);} #33
elsif ($itemcount{7336} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8823);} #33
elsif ($itemcount{8823} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25338);} #33
elsif ($itemcount{25338} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38158);} #33
elsif ($itemcount{38158} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38161);} #33
elsif ($itemcount{38161} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1721);} #33
elsif ($itemcount{1992} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3576);} #33
elsif ($itemcount{3576} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3590);} #33
elsif ($itemcount{3590} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3949);} #33
elsif ($itemcount{3949} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6752);} #33
elsif ($itemcount{6752} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11277);} #33
elsif ($itemcount{11277} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11896);} #33
elsif ($itemcount{11896} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1992);} #33
elsif ($itemcount{3745} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8035);} #33
elsif ($itemcount{8035} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8038);} #33
elsif ($itemcount{8038} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8039);} #33
elsif ($itemcount{8039} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9274);} #33
elsif ($itemcount{9274} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9276);} #33
elsif ($itemcount{9276} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30166);} #33
elsif ($itemcount{30166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3745);} #33
elsif ($itemcount{2955} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3972);} #33
elsif ($itemcount{3972} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8819);} #33
elsif ($itemcount{8819} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8824);} #33
elsif ($itemcount{8824} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38072);} #33
elsif ($itemcount{38072} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66129);} #33
elsif ($itemcount{66129} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66135);} #33
elsif ($itemcount{66135} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2955);} #33
elsif ($itemcount{20077} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(61020);} #33
elsif ($itemcount{61020} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85771);} #33
elsif ($itemcount{85771} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20077);} #33
elsif ($itemcount{8033} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9829);} #33
elsif ($itemcount{9829} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10099);} #33
elsif ($itemcount{10099} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11518);} #33
elsif ($itemcount{11518} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29647);} #33
elsif ($itemcount{29647} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31086);} #33
elsif ($itemcount{31086} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31471);} #33
elsif ($itemcount{31471} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8033);} #33
elsif ($itemcount{6826} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12663);} #33
elsif ($itemcount{12663} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13557);} #33
elsif ($itemcount{13557} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19545);} #33
elsif ($itemcount{19545} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20073);} #33
elsif ($itemcount{20073} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31186);} #33
elsif ($itemcount{31186} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31188);} #33
elsif ($itemcount{31188} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6826);} #33
elsif ($itemcount{2196} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28330);} #33
elsif ($itemcount{28330} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28331);} #33
elsif ($itemcount{28331} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31524);} #33
elsif ($itemcount{31524} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(55076);} #33
elsif ($itemcount{55076} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85572);} #33
elsif ($itemcount{85572} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(87082);} #33
elsif ($itemcount{87082} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2196);} #33
}