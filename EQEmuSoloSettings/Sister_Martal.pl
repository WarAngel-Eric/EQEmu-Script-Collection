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
quest::taskselector(7495, 7496, 7497, 7498, 7499, 7500, 7501, 7502, 7503, 7508, 7520, 7527, 7530, 7536, 7537, 7539, 7543, 7545, 7548, 7550, 7552, 7554, 7556, 7559, 7562);
}

}

sub EVENT_ITEM {
if ($itemcount{1178} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6400);} #50
elsif ($itemcount{6400} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21539);} #50
elsif ($itemcount{21539} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30056);} #50
elsif ($itemcount{30056} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30279);} #50
elsif ($itemcount{30279} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67288);} #50
elsif ($itemcount{67288} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67289);} #50
elsif ($itemcount{67289} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67291);} #50
elsif ($itemcount{67291} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1178);} #50
elsif ($itemcount{1058} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1059);} #50
elsif ($itemcount{1059} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7040);} #50
elsif ($itemcount{7040} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27710);} #50
elsif ($itemcount{27710} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58795);} #50
elsif ($itemcount{58795} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63198);} #50
elsif ($itemcount{63198} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63528);} #50
elsif ($itemcount{63528} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85023);} #50
elsif ($itemcount{85023} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1058);} #50
elsif ($itemcount{11892} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11893);} #50
elsif ($itemcount{11893} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11894);} #50
elsif ($itemcount{11894} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21503);} #50
elsif ($itemcount{21503} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21553);} #50
elsif ($itemcount{21553} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29285);} #50
elsif ($itemcount{29285} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29286);} #50
elsif ($itemcount{29286} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29290);} #50
elsif ($itemcount{29290} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11892);} #50
elsif ($itemcount{3041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5418);} #50
elsif ($itemcount{5418} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6248);} #50
elsif ($itemcount{6248} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7181);} #50
elsif ($itemcount{7181} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9356);} #50
elsif ($itemcount{9356} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9361);} #50
elsif ($itemcount{9361} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9362);} #50
elsif ($itemcount{9362} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89018);} #50
elsif ($itemcount{89018} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3041);} #50
elsif ($itemcount{3526} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7964);} #50
elsif ($itemcount{7964} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12367);} #50
elsif ($itemcount{12367} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12527);} #50
elsif ($itemcount{12527} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15935);} #50
elsif ($itemcount{15935} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38177);} #50
elsif ($itemcount{38177} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38182);} #50
elsif ($itemcount{38182} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38185);} #50
elsif ($itemcount{38185} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3526);} #50
elsif ($itemcount{3728} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7041);} #50
elsif ($itemcount{7041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8429);} #50
elsif ($itemcount{8429} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54231);} #50
elsif ($itemcount{54231} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54232);} #50
elsif ($itemcount{54232} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63780);} #50
elsif ($itemcount{63780} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69271);} #50
elsif ($itemcount{69271} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71521);} #50
elsif ($itemcount{71521} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3728);} #50
elsif ($itemcount{11683} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27004);} #50
elsif ($itemcount{27004} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38284);} #50
elsif ($itemcount{38284} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38287);} #50
elsif ($itemcount{38287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38288);} #50
elsif ($itemcount{38288} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63782);} #50
elsif ($itemcount{63782} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(88094);} #50
elsif ($itemcount{88094} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11683);} #50
elsif ($itemcount{1177} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5656);} #50
elsif ($itemcount{5656} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9390);} #50
elsif ($itemcount{9390} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9392);} #50
elsif ($itemcount{9392} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9394);} #50
elsif ($itemcount{9394} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9395);} #50
elsif ($itemcount{9395} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20744);} #50
elsif ($itemcount{20744} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52086);} #50
elsif ($itemcount{52086} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1177);} #50
elsif ($itemcount{5043} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5112);} #50
elsif ($itemcount{5112} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5227);} #50
elsif ($itemcount{5227} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5306);} #50
elsif ($itemcount{5306} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5319);} #50
elsif ($itemcount{5319} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6330);} #50
elsif ($itemcount{6330} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7309);} #50
elsif ($itemcount{7309} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28599);} #50
elsif ($itemcount{28599} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5043);} #50
elsif ($itemcount{1165} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2312);} #50
elsif ($itemcount{2312} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38105);} #50
elsif ($itemcount{38105} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38107);} #50
elsif ($itemcount{38107} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38113);} #50
elsif ($itemcount{38113} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38123);} #50
elsif ($itemcount{38123} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59561);} #50
elsif ($itemcount{59561} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85734);} #50
elsif ($itemcount{85734} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1165);} #50
elsif ($itemcount{2957} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6497);} #50
elsif ($itemcount{6497} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11684);} #50
elsif ($itemcount{11684} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21558);} #50
elsif ($itemcount{21558} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21560);} #50
elsif ($itemcount{21560} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29669);} #50
elsif ($itemcount{29669} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30866);} #50
elsif ($itemcount{30866} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2957);} #50
elsif ($itemcount{3601} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3608);} #50
elsif ($itemcount{3608} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3610);} #50
elsif ($itemcount{3610} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3611);} #50
elsif ($itemcount{3611} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29894);} #50
elsif ($itemcount{29894} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38145);} #50
elsif ($itemcount{38145} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89070);} #50
elsif ($itemcount{89070} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3601);} #50
elsif ($itemcount{3564} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3686);} #50
elsif ($itemcount{3686} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3725);} #50
elsif ($itemcount{3725} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7231);} #50
elsif ($itemcount{7231} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86882);} #50
elsif ($itemcount{86882} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89215);} #50
elsif ($itemcount{89215} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90301);} #50
elsif ($itemcount{90301} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3564);} #50
elsif ($itemcount{3179} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3406);} #50
elsif ($itemcount{3406} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8446);} #50
elsif ($itemcount{8446} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24625);} #50
elsif ($itemcount{24625} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27020);} #50
elsif ($itemcount{27020} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29252);} #50
elsif ($itemcount{29252} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29262);} #50
elsif ($itemcount{29262} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3179);} #50
elsif ($itemcount{27029} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38214);} #50
elsif ($itemcount{38214} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38225);} #50
elsif ($itemcount{38225} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(77505);} #50
elsif ($itemcount{77505} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86866);} #50
elsif ($itemcount{86866} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86880);} #50
elsif ($itemcount{86880} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89092);} #50
elsif ($itemcount{89092} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27029);} #50
elsif ($itemcount{1987} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1989);} #50
elsif ($itemcount{1989} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1996);} #50
elsif ($itemcount{1996} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1998);} #50
elsif ($itemcount{1998} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1999);} #50
elsif ($itemcount{1999} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6558);} #50
elsif ($itemcount{6558} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7777);} #50
elsif ($itemcount{7777} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1987);} #50
elsif ($itemcount{2716} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54027);} #50
elsif ($itemcount{54027} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54028);} #50
elsif ($itemcount{54028} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54031);} #50
elsif ($itemcount{54031} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54033);} #50
elsif ($itemcount{54033} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54036);} #50
elsif ($itemcount{54036} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54037);} #50
elsif ($itemcount{54037} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2716);} #50
elsif ($itemcount{3559} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21927);} #50
elsif ($itemcount{21927} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24536);} #50
elsif ($itemcount{24536} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27721);} #50
elsif ($itemcount{27721} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38029);} #50
elsif ($itemcount{38029} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86802);} #50
elsif ($itemcount{86802} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89157);} #50
elsif ($itemcount{89157} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3559);} #50
elsif ($itemcount{5732} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11685);} #50
elsif ($itemcount{11685} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26040);} #50
elsif ($itemcount{26040} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28358);} #50
elsif ($itemcount{28358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38031);} #50
elsif ($itemcount{38031} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69263);} #50
elsif ($itemcount{69263} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89203);} #50
elsif ($itemcount{89203} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5732);} #50
elsif ($itemcount{6792} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8385);} #50
elsif ($itemcount{8385} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10686);} #50
elsif ($itemcount{10686} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11144);} #50
elsif ($itemcount{11144} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11195);} #50
elsif ($itemcount{11195} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13320);} #50
elsif ($itemcount{13320} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89174);} #50
elsif ($itemcount{89174} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6792);} #50
elsif ($itemcount{3797} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3897);} #50
elsif ($itemcount{3897} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3909);} #50
elsif ($itemcount{3909} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3929);} #50
elsif ($itemcount{3929} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10776);} #50
elsif ($itemcount{10776} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38326);} #50
elsif ($itemcount{38326} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65132);} #50
elsif ($itemcount{65132} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3797);} #50
elsif ($itemcount{11549} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31727);} #50
elsif ($itemcount{31727} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38009);} #50
elsif ($itemcount{38009} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38015);} #50
elsif ($itemcount{38015} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58915);} #50
elsif ($itemcount{58915} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89173);} #50
elsif ($itemcount{89173} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89181);} #50
elsif ($itemcount{89181} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11549);} #50
elsif ($itemcount{3100} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8836);} #50
elsif ($itemcount{8836} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8837);} #50
elsif ($itemcount{8837} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8838);} #50
elsif ($itemcount{8838} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8839);} #50
elsif ($itemcount{8839} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12557);} #50
elsif ($itemcount{12557} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86694);} #50
elsif ($itemcount{86694} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3100);} #50
elsif ($itemcount{3685} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6835);} #50
elsif ($itemcount{6835} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8840);} #50
elsif ($itemcount{8840} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24507);} #50
elsif ($itemcount{24507} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38332);} #50
elsif ($itemcount{38332} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89087);} #50
elsif ($itemcount{89087} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89164);} #50
elsif ($itemcount{89164} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3685);} #50
elsif ($itemcount{1728} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11172);} #50
elsif ($itemcount{11172} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(22910);} #50
elsif ($itemcount{22910} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27711);} #50
elsif ($itemcount{27711} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28328);} #50
elsif ($itemcount{28328} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28349);} #50
elsif ($itemcount{28349} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31084);} #50
elsif ($itemcount{31084} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1728);} #50
}