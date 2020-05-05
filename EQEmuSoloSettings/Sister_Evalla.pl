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
quest::taskselector(7775, 7776, 7777, 7778, 7779, 7782, 7786, 7800, 7808, 7817, 7819, 7823, 7824, 7825, 7827, 7832, 7836, 7839, 7841, 7842, 7843, 7844);
}

}

sub EVENT_ITEM {
if ($itemcount{1175} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2690);} #47
elsif ($itemcount{2690} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7243);} #47
elsif ($itemcount{7243} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8923);} #47
elsif ($itemcount{8923} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13110);} #47
elsif ($itemcount{13110} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54230);} #47
elsif ($itemcount{54230} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59997);} #47
elsif ($itemcount{59997} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(87328);} #47
elsif ($itemcount{87328} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1175);} #47
elsif ($itemcount{1748} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3501);} #47
elsif ($itemcount{3501} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3517);} #47
elsif ($itemcount{3517} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5728);} #47
elsif ($itemcount{5728} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20798);} #47
elsif ($itemcount{20798} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29670);} #47
elsif ($itemcount{29670} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38198);} #47
elsif ($itemcount{38198} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38201);} #47
elsif ($itemcount{38201} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1748);} #47
elsif ($itemcount{7888} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7889);} #47
elsif ($itemcount{7889} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7891);} #47
elsif ($itemcount{7891} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7892);} #47
elsif ($itemcount{7892} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7896);} #47
elsif ($itemcount{7896} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7898);} #47
elsif ($itemcount{7898} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7899);} #47
elsif ($itemcount{7899} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21511);} #47
elsif ($itemcount{21511} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7888);} #47
elsif ($itemcount{3553} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5082);} #47
elsif ($itemcount{5082} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6042);} #47
elsif ($itemcount{6042} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6775);} #47
elsif ($itemcount{6775} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7743);} #47
elsif ($itemcount{7743} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7744);} #47
elsif ($itemcount{7744} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8434);} #47
elsif ($itemcount{8434} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24732);} #47
elsif ($itemcount{24732} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3553);} #47
elsif ($itemcount{5379} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6371);} #47
elsif ($itemcount{6371} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6776);} #47
elsif ($itemcount{6776} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28253);} #47
elsif ($itemcount{28253} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29374);} #47
elsif ($itemcount{29374} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29376);} #47
elsif ($itemcount{29376} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63784);} #47
elsif ($itemcount{63784} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69290);} #47
elsif ($itemcount{69290} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5379);} #47
elsif ($itemcount{24989} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24991);} #47
elsif ($itemcount{24991} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25159);} #47
elsif ($itemcount{25159} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25162);} #47
elsif ($itemcount{25162} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25163);} #47
elsif ($itemcount{25163} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25166);} #47
elsif ($itemcount{25166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25168);} #47
elsif ($itemcount{25168} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67320);} #47
elsif ($itemcount{67320} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24989);} #47
elsif ($itemcount{1272} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2575);} #47
elsif ($itemcount{2575} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3756);} #47
elsif ($itemcount{3756} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3759);} #47
elsif ($itemcount{3759} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3761);} #47
elsif ($itemcount{3761} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6672);} #47
elsif ($itemcount{6672} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7522);} #47
elsif ($itemcount{7522} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7525);} #47
elsif ($itemcount{7525} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1272);} #47
elsif ($itemcount{2315} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3148);} #47
elsif ($itemcount{3148} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3511);} #47
elsif ($itemcount{3511} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7511);} #47
elsif ($itemcount{7511} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12870);} #47
elsif ($itemcount{12870} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24517);} #47
elsif ($itemcount{24517} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89192);} #47
elsif ($itemcount{89192} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2315);} #47
elsif ($itemcount{3688} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3701);} #47
elsif ($itemcount{3701} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3727);} #47
elsif ($itemcount{3727} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3874);} #47
elsif ($itemcount{3874} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6411);} #47
elsif ($itemcount{6411} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21909);} #47
elsif ($itemcount{21909} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63760);} #47
elsif ($itemcount{63760} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3688);} #47
elsif ($itemcount{24009} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29395);} #47
elsif ($itemcount{29395} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29397);} #47
elsif ($itemcount{29397} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38193);} #47
elsif ($itemcount{38193} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38204);} #47
elsif ($itemcount{38204} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89049);} #47
elsif ($itemcount{89049} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89057);} #47
elsif ($itemcount{89057} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24009);} #47
elsif ($itemcount{5635} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27021);} #47
elsif ($itemcount{27021} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62057);} #47
elsif ($itemcount{62057} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88093);} #47
elsif ($itemcount{88093} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89094);} #47
elsif ($itemcount{89094} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89117);} #47
elsif ($itemcount{89117} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89125);} #47
elsif ($itemcount{89125} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5635);} #47
elsif ($itemcount{3245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3940);} #47
elsif ($itemcount{3940} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3941);} #47
elsif ($itemcount{3941} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3945);} #47
elsif ($itemcount{3945} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89067);} #47
elsif ($itemcount{89067} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89083);} #47
elsif ($itemcount{89083} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89090);} #47
elsif ($itemcount{89090} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3245);} #47
elsif ($itemcount{10687} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11319);} #47
elsif ($itemcount{11319} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24018);} #47
elsif ($itemcount{24018} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38262);} #47
elsif ($itemcount{38262} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62646);} #47
elsif ($itemcount{62646} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89141);} #47
elsif ($itemcount{89141} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89149);} #47
elsif ($itemcount{89149} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10687);} #47
elsif ($itemcount{3518} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4316);} #47
elsif ($itemcount{4316} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5800);} #47
elsif ($itemcount{5800} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11155);} #47
elsif ($itemcount{11155} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15996);} #47
elsif ($itemcount{15996} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28357);} #47
elsif ($itemcount{28357} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89055);} #47
elsif ($itemcount{89055} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3518);} #47
elsif ($itemcount{8809} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24508);} #47
elsif ($itemcount{24508} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26999);} #47
elsif ($itemcount{26999} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28382);} #47
elsif ($itemcount{28382} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29092);} #47
elsif ($itemcount{29092} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38071);} #47
elsif ($itemcount{38071} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38079);} #47
elsif ($itemcount{38079} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8809);} #47
elsif ($itemcount{1719} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3530);} #47
elsif ($itemcount{3530} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5115);} #47
elsif ($itemcount{5115} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6375);} #47
elsif ($itemcount{6375} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24515);} #47
elsif ($itemcount{24515} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86835);} #47
elsif ($itemcount{86835} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89155);} #47
elsif ($itemcount{89155} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1719);} #47
elsif ($itemcount{28341} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28385);} #47
elsif ($itemcount{28385} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31466);} #47
elsif ($itemcount{31466} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54032);} #47
elsif ($itemcount{54032} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58917);} #47
elsif ($itemcount{58917} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85547);} #47
elsif ($itemcount{85547} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86872);} #47
elsif ($itemcount{86872} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28341);} #47
elsif ($itemcount{6830} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10919);} #47
elsif ($itemcount{10919} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28344);} #47
elsif ($itemcount{28344} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86765);} #47
elsif ($itemcount{86765} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86785);} #47
elsif ($itemcount{86785} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89153);} #47
elsif ($itemcount{89153} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89179);} #47
elsif ($itemcount{89179} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6830);} #47
elsif ($itemcount{6652} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7186);} #47
elsif ($itemcount{7186} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7187);} #47
elsif ($itemcount{7187} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19837);} #47
elsif ($itemcount{19837} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27078);} #47
elsif ($itemcount{27078} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(55297);} #47
elsif ($itemcount{55297} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6652);} #47
elsif ($itemcount{5501} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5614);} #47
elsif ($itemcount{5614} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6818);} #47
elsif ($itemcount{6818} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9820);} #47
elsif ($itemcount{9820} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11177);} #47
elsif ($itemcount{11177} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11446);} #47
elsif ($itemcount{11446} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11679);} #47
elsif ($itemcount{11679} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5501);} #47
elsif ($itemcount{6819} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9805);} #47
elsif ($itemcount{9805} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11431);} #47
elsif ($itemcount{11431} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27707);} #47
elsif ($itemcount{27707} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31519);} #47
elsif ($itemcount{31519} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51243);} #47
elsif ($itemcount{51243} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89232);} #47
elsif ($itemcount{89232} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6819);} #47
elsif ($itemcount{12594} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19439);} #47
elsif ($itemcount{19439} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24747);} #47
elsif ($itemcount{24747} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25435);} #47
elsif ($itemcount{25435} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25439);} #47
elsif ($itemcount{25439} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28334);} #47
elsif ($itemcount{28334} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28335);} #47
elsif ($itemcount{28335} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12594);} #47
}