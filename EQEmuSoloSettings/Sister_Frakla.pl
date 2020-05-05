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
quest::taskselector(7284, 7285, 7286, 7287, 7295, 7311, 7312, 7320, 7327, 7333, 7335, 7338, 7339, 7340, 7343, 7344, 7346, 7348, 7349, 7352, 7354);
}

}

sub EVENT_ITEM {
if ($itemcount{1176} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6041);} #30
elsif ($itemcount{6041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7036);} #30
elsif ($itemcount{7036} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7306);} #30
elsif ($itemcount{7306} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8389);} #30
elsif ($itemcount{8389} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12989);} #30
elsif ($itemcount{12989} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71518);} #30
elsif ($itemcount{71518} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88004);} #30
elsif ($itemcount{88004} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1176);} #30
elsif ($itemcount{1749} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5786);} #30
elsif ($itemcount{5786} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20075);} #30
elsif ($itemcount{20075} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20479);} #30
elsif ($itemcount{20479} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21512);} #30
elsif ($itemcount{21512} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24729);} #30
elsif ($itemcount{24729} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38281);} #30
elsif ($itemcount{38281} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89029);} #30
elsif ($itemcount{89029} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1749);} #30
elsif ($itemcount{1262} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5055);} #30
elsif ($itemcount{5055} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5212);} #30
elsif ($itemcount{5212} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5216);} #30
elsif ($itemcount{5216} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5372);} #30
elsif ($itemcount{5372} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21513);} #30
elsif ($itemcount{21513} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21523);} #30
elsif ($itemcount{21523} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38289);} #30
elsif ($itemcount{38289} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1262);} #30
elsif ($itemcount{58797} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58798);} #30
elsif ($itemcount{58798} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63200);} #30
elsif ($itemcount{63200} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63201);} #30
elsif ($itemcount{63201} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63529);} #30
elsif ($itemcount{63529} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63531);} #30
elsif ($itemcount{63531} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63751);} #30
elsif ($itemcount{63751} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90302);} #30
elsif ($itemcount{90302} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58797);} #30
elsif ($itemcount{7370} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9378);} #30
elsif ($itemcount{9378} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10585);} #30
elsif ($itemcount{10585} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10586);} #30
elsif ($itemcount{10586} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12874);} #30
elsif ($itemcount{12874} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21522);} #30
elsif ($itemcount{21522} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24502);} #30
elsif ($itemcount{24502} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24503);} #30
elsif ($itemcount{24503} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7370);} #30
elsif ($itemcount{6037} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8966);} #30
elsif ($itemcount{8966} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(22302);} #30
elsif ($itemcount{22302} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24897);} #30
elsif ($itemcount{24897} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25167);} #30
elsif ($itemcount{25167} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38087);} #30
elsif ($itemcount{38087} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38091);} #30
elsif ($itemcount{38091} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6037);} #30
elsif ($itemcount{1275} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5499);} #30
elsif ($itemcount{5499} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6328);} #30
elsif ($itemcount{6328} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7115);} #30
elsif ($itemcount{7115} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9245);} #30
elsif ($itemcount{9245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11191);} #30
elsif ($itemcount{11191} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69285);} #30
elsif ($itemcount{69285} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1275);} #30
elsif ($itemcount{6087} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6091);} #30
elsif ($itemcount{6091} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6093);} #30
elsif ($itemcount{6093} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6167);} #30
elsif ($itemcount{6167} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6168);} #30
elsif ($itemcount{6168} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6170);} #30
elsif ($itemcount{6170} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6174);} #30
elsif ($itemcount{6174} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6087);} #30
elsif ($itemcount{3991} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3996);} #30
elsif ($itemcount{3996} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5389);} #30
elsif ($itemcount{5389} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7501);} #30
elsif ($itemcount{7501} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(23543);} #30
elsif ($itemcount{23543} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(57019);} #30
elsif ($itemcount{57019} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89133);} #30
elsif ($itemcount{89133} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3991);} #30
elsif ($itemcount{3323} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3794);} #30
elsif ($itemcount{3794} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6814);} #30
elsif ($itemcount{6814} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6823);} #30
elsif ($itemcount{6823} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7345);} #30
elsif ($itemcount{7345} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25065);} #30
elsif ($itemcount{25065} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28359);} #30
elsif ($itemcount{28359} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3323);} #30
elsif ($itemcount{5215} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7457);} #30
elsif ($itemcount{7457} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8971);} #30
elsif ($itemcount{8971} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20427);} #30
elsif ($itemcount{20427} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30008);} #30
elsif ($itemcount{30008} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(68272);} #30
elsif ($itemcount{68272} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89081);} #30
elsif ($itemcount{89081} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5215);} #30
elsif ($itemcount{6813} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24633);} #30
elsif ($itemcount{24633} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38117);} #30
elsif ($itemcount{38117} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38119);} #30
elsif ($itemcount{38119} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62058);} #30
elsif ($itemcount{62058} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86878);} #30
elsif ($itemcount{86878} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89260);} #30
elsif ($itemcount{89260} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6813);} #30
elsif ($itemcount{24803} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58922);} #30
elsif ($itemcount{58922} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58936);} #30
elsif ($itemcount{58936} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63417);} #30
elsif ($itemcount{63417} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63437);} #30
elsif ($itemcount{63437} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63438);} #30
elsif ($itemcount{63438} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63654);} #30
elsif ($itemcount{63654} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24803);} #30
elsif ($itemcount{7781} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10655);} #30
elsif ($itemcount{10655} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11156);} #30
elsif ($itemcount{11156} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66144);} #30
elsif ($itemcount{66144} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86626);} #30
elsif ($itemcount{86626} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89039);} #30
elsif ($itemcount{89039} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89073);} #30
elsif ($itemcount{89073} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7781);} #30
elsif ($itemcount{3787} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5358);} #30
elsif ($itemcount{5358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13545);} #30
elsif ($itemcount{13545} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25593);} #30
elsif ($itemcount{25593} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29005);} #30
elsif ($itemcount{29005} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63681);} #30
elsif ($itemcount{63681} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86664);} #30
elsif ($itemcount{86664} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3787);} #30
elsif ($itemcount{7190} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9286);} #30
elsif ($itemcount{9286} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11140);} #30
elsif ($itemcount{11140} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19442);} #30
elsif ($itemcount{19442} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27049);} #30
elsif ($itemcount{27049} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27057);} #30
elsif ($itemcount{27057} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7190);} #30
elsif ($itemcount{6605} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10406);} #30
elsif ($itemcount{10406} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10924);} #30
elsif ($itemcount{10924} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32196);} #30
elsif ($itemcount{32196} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62316);} #30
elsif ($itemcount{62316} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69264);} #30
elsif ($itemcount{69264} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86642);} #30
elsif ($itemcount{86642} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6605);} #30
elsif ($itemcount{3592} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7517);} #30
elsif ($itemcount{7517} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11694);} #30
elsif ($itemcount{11694} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15779);} #30
elsif ($itemcount{15779} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24731);} #30
elsif ($itemcount{24731} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(51244);} #30
elsif ($itemcount{51244} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54038);} #30
elsif ($itemcount{54038} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3592);} #30
elsif ($itemcount{3724} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3984);} #30
elsif ($itemcount{3984} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5067);} #30
elsif ($itemcount{5067} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6727);} #30
elsif ($itemcount{6727} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29625);} #30
elsif ($itemcount{29625} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63652);} #30
elsif ($itemcount{63652} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86766);} #30
elsif ($itemcount{86766} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3724);} #30
elsif ($itemcount{3934} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6821);} #30
elsif ($itemcount{6821} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7399);} #30
elsif ($itemcount{7399} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27042);} #30
elsif ($itemcount{27042} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27062);} #30
elsif ($itemcount{27062} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27082);} #30
elsif ($itemcount{27082} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28351);} #30
elsif ($itemcount{28351} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3934);} #30
elsif ($itemcount{8958} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16711);} #30
elsif ($itemcount{16711} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16775);} #30
elsif ($itemcount{16775} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16801);} #30
elsif ($itemcount{16801} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28336);} #30
elsif ($itemcount{28336} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28337);} #30
elsif ($itemcount{28337} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86814);} #30
elsif ($itemcount{86814} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8958);} #30
}