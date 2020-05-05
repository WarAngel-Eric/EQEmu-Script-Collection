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
quest::taskselector(7213, 7214, 7215, 7216, 7217, 7219, 7220, 7226, 7231, 7232, 7243, 7244, 7245, 7248, 7251, 7252, 7253, 7254, 7255, 7256, 7257, 7258, 7262, 7263, 7265, 7266, 7267, 7268, 7274, 7275, 7278);
}

}

sub EVENT_ITEM {
if ($itemcount{6932} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7356);} #56
elsif ($itemcount{7356} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20702);} #56
elsif ($itemcount{20702} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29289);} #56
elsif ($itemcount{29289} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29375);} #56
elsif ($itemcount{29375} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29377);} #56
elsif ($itemcount{29377} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29379);} #56
elsif ($itemcount{29379} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52510);} #56
elsif ($itemcount{52510} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6932);} #56
elsif ($itemcount{2796} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2797);} #56
elsif ($itemcount{2797} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2799);} #56
elsif ($itemcount{2799} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2801);} #56
elsif ($itemcount{2801} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2803);} #56
elsif ($itemcount{2803} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5056);} #56
elsif ($itemcount{5056} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12208);} #56
elsif ($itemcount{12208} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21519);} #56
elsif ($itemcount{21519} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2796);} #56
elsif ($itemcount{2386} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11201);} #56
elsif ($itemcount{11201} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11203);} #56
elsif ($itemcount{11203} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11205);} #56
elsif ($itemcount{11205} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11206);} #56
elsif ($itemcount{11206} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11207);} #56
elsif ($itemcount{11207} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11210);} #56
elsif ($itemcount{11210} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11212);} #56
elsif ($itemcount{11212} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2386);} #56
elsif ($itemcount{2904} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5384);} #56
elsif ($itemcount{5384} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5387);} #56
elsif ($itemcount{5387} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6368);} #56
elsif ($itemcount{6368} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8927);} #56
elsif ($itemcount{8927} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38126);} #56
elsif ($itemcount{38126} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38138);} #56
elsif ($itemcount{38138} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89054);} #56
elsif ($itemcount{89054} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2904);} #56
elsif ($itemcount{1301} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5382);} #56
elsif ($itemcount{5382} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6982);} #56
elsif ($itemcount{6982} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13353);} #56
elsif ($itemcount{13353} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29802);} #56
elsif ($itemcount{29802} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54002);} #56
elsif ($itemcount{54002} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85556);} #56
elsif ($itemcount{85556} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85760);} #56
elsif ($itemcount{85760} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1301);} #56
elsif ($itemcount{5380} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5383);} #56
elsif ($itemcount{5383} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6032);} #56
elsif ($itemcount{6032} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6365);} #56
elsif ($itemcount{6365} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7024);} #56
elsif ($itemcount{7024} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7355);} #56
elsif ($itemcount{7355} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(23503);} #56
elsif ($itemcount{23503} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29500);} #56
elsif ($itemcount{29500} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5380);} #56
elsif ($itemcount{3047} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3304);} #56
elsif ($itemcount{3304} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11673);} #56
elsif ($itemcount{11673} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25583);} #56
elsif ($itemcount{25583} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38137);} #56
elsif ($itemcount{38137} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38318);} #56
elsif ($itemcount{38318} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38320);} #56
elsif ($itemcount{38320} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38322);} #56
elsif ($itemcount{38322} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3047);} #56
elsif ($itemcount{2313} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2906);} #56
elsif ($itemcount{2906} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2907);} #56
elsif ($itemcount{2907} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12863);} #56
elsif ($itemcount{12863} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38233);} #56
elsif ($itemcount{38233} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38235);} #56
elsif ($itemcount{38235} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38245);} #56
elsif ($itemcount{38245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38246);} #56
elsif ($itemcount{38246} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2313);} #56
elsif ($itemcount{58823} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58877);} #56
elsif ($itemcount{58877} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63324);} #56
elsif ($itemcount{63324} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63325);} #56
elsif ($itemcount{63325} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63556);} #56
elsif ($itemcount{63556} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63557);} #56
elsif ($itemcount{63557} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63766);} #56
elsif ($itemcount{63766} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58823);} #56
elsif ($itemcount{27241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30879);} #56
elsif ($itemcount{30879} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30881);} #56
elsif ($itemcount{30881} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38108);} #56
elsif ($itemcount{38108} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38110);} #56
elsif ($itemcount{38110} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38112);} #56
elsif ($itemcount{38112} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59562);} #56
elsif ($itemcount{59562} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27241);} #56
elsif ($itemcount{3356} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24893);} #56
elsif ($itemcount{24893} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26493);} #56
elsif ($itemcount{26493} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26495);} #56
elsif ($itemcount{26495} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27005);} #56
elsif ($itemcount{27005} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71516);} #56
elsif ($itemcount{71516} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85058);} #56
elsif ($itemcount{85058} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3356);} #56
elsif ($itemcount{3793} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3932);} #56
elsif ($itemcount{3932} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6713);} #56
elsif ($itemcount{6713} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7346);} #56
elsif ($itemcount{7346} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51241);} #56
elsif ($itemcount{51241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63050);} #56
elsif ($itemcount{63050} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89247);} #56
elsif ($itemcount{89247} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3793);} #56
elsif ($itemcount{2709} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7391);} #56
elsif ($itemcount{7391} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8800);} #56
elsif ($itemcount{8800} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8949);} #56
elsif ($itemcount{8949} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13970);} #56
elsif ($itemcount{13970} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67183);} #56
elsif ($itemcount{67183} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86875);} #56
elsif ($itemcount{86875} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2709);} #56
elsif ($itemcount{1276} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2287);} #56
elsif ($itemcount{2287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2289);} #56
elsif ($itemcount{2289} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2293);} #56
elsif ($itemcount{2293} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2900);} #56
elsif ($itemcount{2900} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20734);} #56
elsif ($itemcount{20734} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25144);} #56
elsif ($itemcount{25144} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1276);} #56
elsif ($itemcount{1977} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1979);} #56
elsif ($itemcount{1979} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1981);} #56
elsif ($itemcount{1981} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1984);} #56
elsif ($itemcount{1984} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1985);} #56
elsif ($itemcount{1985} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1986);} #56
elsif ($itemcount{1986} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6557);} #56
elsif ($itemcount{6557} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1977);} #56
elsif ($itemcount{1878} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3574);} #56
elsif ($itemcount{3574} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21913);} #56
elsif ($itemcount{21913} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58838);} #56
elsif ($itemcount{58838} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63339);} #56
elsif ($itemcount{63339} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63393);} #56
elsif ($itemcount{63393} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63769);} #56
elsif ($itemcount{63769} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1878);} #56
elsif ($itemcount{3355} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6346);} #56
elsif ($itemcount{6346} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10121);} #56
elsif ($itemcount{10121} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10754);} #56
elsif ($itemcount{10754} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32202);} #56
elsif ($itemcount{32202} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52167);} #56
elsif ($itemcount{52167} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52168);} #56
elsif ($itemcount{52168} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3355);} #56
elsif ($itemcount{3300} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3950);} #56
elsif ($itemcount{3950} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3951);} #56
elsif ($itemcount{3951} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3954);} #56
elsif ($itemcount{3954} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3957);} #56
elsif ($itemcount{3957} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3958);} #56
elsif ($itemcount{3958} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8387);} #56
elsif ($itemcount{8387} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3300);} #56
elsif ($itemcount{38109} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38121);} #56
elsif ($itemcount{38121} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38122);} #56
elsif ($itemcount{38122} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59563);} #56
elsif ($itemcount{59563} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59564);} #56
elsif ($itemcount{59564} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86830);} #56
elsif ($itemcount{86830} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89200);} #56
elsif ($itemcount{89200} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38109);} #56
elsif ($itemcount{1199} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3554);} #56
elsif ($itemcount{3554} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3565);} #56
elsif ($itemcount{3565} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8391);} #56
elsif ($itemcount{8391} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20704);} #56
elsif ($itemcount{20704} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27022);} #56
elsif ($itemcount{27022} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28391);} #56
elsif ($itemcount{28391} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1199);} #56
elsif ($itemcount{2971} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3746);} #56
elsif ($itemcount{3746} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3781);} #56
elsif ($itemcount{3781} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3785);} #56
elsif ($itemcount{3785} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31726);} #56
elsif ($itemcount{31726} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52163);} #56
elsif ($itemcount{52163} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86810);} #56
elsif ($itemcount{86810} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2971);} #56
elsif ($itemcount{28356} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28404);} #56
elsif ($itemcount{28404} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28406);} #56
elsif ($itemcount{28406} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28408);} #56
elsif ($itemcount{28408} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28409);} #56
elsif ($itemcount{28409} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28411);} #56
elsif ($itemcount{28411} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89114);} #56
elsif ($itemcount{89114} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28356);} #56
elsif ($itemcount{3741} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3907);} #56
elsif ($itemcount{3907} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3908);} #56
elsif ($itemcount{3908} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3931);} #56
elsif ($itemcount{3931} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6812);} #56
elsif ($itemcount{6812} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86807);} #56
elsif ($itemcount{86807} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89123);} #56
elsif ($itemcount{89123} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3741);} #56
elsif ($itemcount{3527} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7901);} #56
elsif ($itemcount{7901} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11895);} #56
elsif ($itemcount{11895} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21504);} #56
elsif ($itemcount{21504} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54030);} #56
elsif ($itemcount{54030} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54034);} #56
elsif ($itemcount{54034} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62325);} #56
elsif ($itemcount{62325} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3527);} #56
elsif ($itemcount{2710} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3433);} #56
elsif ($itemcount{3433} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3938);} #56
elsif ($itemcount{3938} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3943);} #56
elsif ($itemcount{3943} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3944);} #56
elsif ($itemcount{3944} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21934);} #56
elsif ($itemcount{21934} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71309);} #56
elsif ($itemcount{71309} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2710);} #56
elsif ($itemcount{3780} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7875);} #56
elsif ($itemcount{7875} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24060);} #56
elsif ($itemcount{24060} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38008);} #56
elsif ($itemcount{38008} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38056);} #56
elsif ($itemcount{38056} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38058);} #56
elsif ($itemcount{38058} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67182);} #56
elsif ($itemcount{67182} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3780);} #56
elsif ($itemcount{3696} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3735);} #56
elsif ($itemcount{3735} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3775);} #56
elsif ($itemcount{3775} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11650);} #56
elsif ($itemcount{11650} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65150);} #56
elsif ($itemcount{65150} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65153);} #56
elsif ($itemcount{65153} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65195);} #56
elsif ($itemcount{65195} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3696);} #56
elsif ($itemcount{6811} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7975);} #56
elsif ($itemcount{7975} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11029);} #56
elsif ($itemcount{11029} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20152);} #56
elsif ($itemcount{20152} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38178);} #56
elsif ($itemcount{38178} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38183);} #56
elsif ($itemcount{38183} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86623);} #56
elsif ($itemcount{86623} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6811);} #56
elsif ($itemcount{15782} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24531);} #56
elsif ($itemcount{24531} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54035);} #56
elsif ($itemcount{54035} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58918);} #56
elsif ($itemcount{58918} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63650);} #56
elsif ($itemcount{63650} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63651);} #56
elsif ($itemcount{63651} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86794);} #56
elsif ($itemcount{86794} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15782);} #56
elsif ($itemcount{1173} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3776);} #56
elsif ($itemcount{3776} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3933);} #56
elsif ($itemcount{3933} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9808);} #56
elsif ($itemcount{9808} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38093);} #56
elsif ($itemcount{38093} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38156);} #56
elsif ($itemcount{38156} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89172);} #56
elsif ($itemcount{89172} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1173);} #56
elsif ($itemcount{3986} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6801);} #56
elsif ($itemcount{6801} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28338);} #56
elsif ($itemcount{28338} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28390);} #56
elsif ($itemcount{28390} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54029);} #56
elsif ($itemcount{54029} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(68257);} #56
elsif ($itemcount{68257} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69467);} #56
elsif ($itemcount{69467} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3986);} #56
}