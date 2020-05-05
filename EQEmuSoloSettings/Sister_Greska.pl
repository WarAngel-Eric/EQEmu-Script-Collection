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
quest::taskselector(7142, 7145, 7146, 7148, 7149, 7150, 7151, 7152, 7160, 7164, 7169, 7173, 7178, 7183, 7187, 7191, 7192, 7193, 7194, 7197, 7199, 7200, 7201, 7203, 7207, 7208, 7209, 7211);
}

}

sub EVENT_ITEM {
if ($itemcount{4281} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25558);} #68
elsif ($itemcount{25558} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29241);} #68
elsif ($itemcount{29241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29243);} #68
elsif ($itemcount{29243} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29244);} #68
elsif ($itemcount{29244} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29245);} #68
elsif ($itemcount{29245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29249);} #68
elsif ($itemcount{29249} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29250);} #68
elsif ($itemcount{29250} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4281);} #68
elsif ($itemcount{3361} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8361);} #68
elsif ($itemcount{8361} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54219);} #68
elsif ($itemcount{54219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54222);} #68
elsif ($itemcount{54222} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63781);} #68
elsif ($itemcount{63781} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67215);} #68
elsif ($itemcount{67215} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67216);} #68
elsif ($itemcount{67216} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67217);} #68
elsif ($itemcount{67217} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3361);} #68
elsif ($itemcount{6304} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7291);} #68
elsif ($itemcount{7291} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7292);} #68
elsif ($itemcount{7292} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9996);} #68
elsif ($itemcount{9996} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10164);} #68
elsif ($itemcount{10164} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24993);} #68
elsif ($itemcount{24993} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28223);} #68
elsif ($itemcount{28223} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52356);} #68
elsif ($itemcount{52356} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6304);} #68
elsif ($itemcount{1278} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1300);} #68
elsif ($itemcount{1300} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3692);} #68
elsif ($itemcount{3692} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3718);} #68
elsif ($itemcount{3718} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21928);} #68
elsif ($itemcount{21928} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38176);} #68
elsif ($itemcount{38176} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89004);} #68
elsif ($itemcount{89004} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1278);} #68
elsif ($itemcount{2402} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3677);} #68
elsif ($itemcount{3677} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5367);} #68
elsif ($itemcount{5367} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12443);} #68
elsif ($itemcount{12443} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25268);} #68
elsif ($itemcount{25268} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(46139);} #68
elsif ($itemcount{46139} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67284);} #68
elsif ($itemcount{67284} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89183);} #68
elsif ($itemcount{89183} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2402);} #68
elsif ($itemcount{10900} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21582);} #68
elsif ($itemcount{21582} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21585);} #68
elsif ($itemcount{21585} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38021);} #68
elsif ($itemcount{38021} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38023);} #68
elsif ($itemcount{38023} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38028);} #68
elsif ($itemcount{38028} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38033);} #68
elsif ($itemcount{38033} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38035);} #68
elsif ($itemcount{38035} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10900);} #68
elsif ($itemcount{1198} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1713);} #68
elsif ($itemcount{1713} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10656);} #68
elsif ($itemcount{10656} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10657);} #68
elsif ($itemcount{10657} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10658);} #68
elsif ($itemcount{10658} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10660);} #68
elsif ($itemcount{10660} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10661);} #68
elsif ($itemcount{10661} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1198);} #68
elsif ($itemcount{12953} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24031);} #68
elsif ($itemcount{24031} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24035);} #68
elsif ($itemcount{24035} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27731);} #68
elsif ($itemcount{27731} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28257);} #68
elsif ($itemcount{28257} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69274);} #68
elsif ($itemcount{69274} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89020);} #68
elsif ($itemcount{89020} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12953);} #68
elsif ($itemcount{7890} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7894);} #68
elsif ($itemcount{7894} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11883);} #68
elsif ($itemcount{11883} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11884);} #68
elsif ($itemcount{11884} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11885);} #68
elsif ($itemcount{11885} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11887);} #68
elsif ($itemcount{11887} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11889);} #68
elsif ($itemcount{11889} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7890);} #68
elsif ($itemcount{11223} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11239);} #68
elsif ($itemcount{11239} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11241);} #68
elsif ($itemcount{11241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11242);} #68
elsif ($itemcount{11242} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11246);} #68
elsif ($itemcount{11246} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11316);} #68
elsif ($itemcount{11316} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11345);} #68
elsif ($itemcount{11345} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11223);} #68
elsif ($itemcount{7782} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7787);} #68
elsif ($itemcount{7787} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7792);} #68
elsif ($itemcount{7792} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7794);} #68
elsif ($itemcount{7794} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9358);} #68
elsif ($itemcount{9358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9359);} #68
elsif ($itemcount{9359} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67286);} #68
elsif ($itemcount{67286} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7782);} #68
elsif ($itemcount{4413} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6172);} #68
elsif ($itemcount{6172} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21907);} #68
elsif ($itemcount{21907} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21980);} #68
elsif ($itemcount{21980} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24049);} #68
elsif ($itemcount{24049} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30755);} #68
elsif ($itemcount{30755} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52087);} #68
elsif ($itemcount{52087} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4413);} #68
elsif ($itemcount{29830} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38066);} #68
elsif ($itemcount{38066} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38068);} #68
elsif ($itemcount{38068} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38070);} #68
elsif ($itemcount{38070} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38218);} #68
elsif ($itemcount{38218} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38219);} #68
elsif ($itemcount{38219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90295);} #68
elsif ($itemcount{90295} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29830);} #68
elsif ($itemcount{3580} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7461);} #68
elsif ($itemcount{7461} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7462);} #68
elsif ($itemcount{7462} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7785);} #68
elsif ($itemcount{7785} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7786);} #68
elsif ($itemcount{7786} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12981);} #68
elsif ($itemcount{12981} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89255);} #68
elsif ($itemcount{89255} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3580);} #68
elsif ($itemcount{3551} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11921);} #68
elsif ($itemcount{11921} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12448);} #68
elsif ($itemcount{12448} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27011);} #68
elsif ($itemcount{27011} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27015);} #68
elsif ($itemcount{27015} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28235);} #68
elsif ($itemcount{28235} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29283);} #68
elsif ($itemcount{29283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3551);} #68
elsif ($itemcount{2190} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3964);} #68
elsif ($itemcount{3964} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3969);} #68
elsif ($itemcount{3969} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3970);} #68
elsif ($itemcount{3970} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7258);} #68
elsif ($itemcount{7258} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28410);} #68
elsif ($itemcount{28410} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89115);} #68
elsif ($itemcount{89115} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2190);} #68
elsif ($itemcount{3988} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3994);} #68
elsif ($itemcount{3994} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27728);} #68
elsif ($itemcount{27728} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71304);} #68
elsif ($itemcount{71304} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86635);} #68
elsif ($itemcount{86635} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89136);} #68
elsif ($itemcount{89136} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89138);} #68
elsif ($itemcount{89138} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3988);} #68
elsif ($itemcount{3544} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3747);} #68
elsif ($itemcount{3747} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3748);} #68
elsif ($itemcount{3748} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4323);} #68
elsif ($itemcount{4323} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11689);} #68
elsif ($itemcount{11689} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86822);} #68
elsif ($itemcount{86822} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89131);} #68
elsif ($itemcount{89131} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3544);} #68
elsif ($itemcount{3387} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7248);} #68
elsif ($itemcount{7248} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11688);} #68
elsif ($itemcount{11688} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13622);} #68
elsif ($itemcount{13622} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20430);} #68
elsif ($itemcount{20430} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38050);} #68
elsif ($itemcount{38050} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65129);} #68
elsif ($itemcount{65129} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3387);} #68
elsif ($itemcount{3575} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3974);} #68
elsif ($itemcount{3974} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3976);} #68
elsif ($itemcount{3976} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11600);} #68
elsif ($itemcount{11600} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24516);} #68
elsif ($itemcount{24516} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38016);} #68
elsif ($itemcount{38016} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38199);} #68
elsif ($itemcount{38199} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3575);} #68
elsif ($itemcount{1867} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8821);} #68
elsif ($itemcount{8821} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11280);} #68
elsif ($itemcount{11280} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29839);} #68
elsif ($itemcount{29839} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38078);} #68
elsif ($itemcount{38078} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38080);} #68
elsif ($itemcount{38080} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66123);} #68
elsif ($itemcount{66123} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1867);} #68
elsif ($itemcount{3981} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9279);} #68
elsif ($itemcount{9279} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9280);} #68
elsif ($itemcount{9280} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15807);} #68
elsif ($itemcount{15807} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38053);} #68
elsif ($itemcount{38053} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38184);} #68
elsif ($itemcount{38184} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66132);} #68
elsif ($itemcount{66132} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3981);} #68
elsif ($itemcount{6783} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24877);} #68
elsif ($itemcount{24877} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38324);} #68
elsif ($itemcount{38324} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63416);} #68
elsif ($itemcount{63416} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63435);} #68
elsif ($itemcount{63435} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63436);} #68
elsif ($itemcount{63436} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86625);} #68
elsif ($itemcount{86625} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6783);} #68
elsif ($itemcount{7191} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8292);} #68
elsif ($itemcount{8292} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12531);} #68
elsif ($itemcount{12531} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24526);} #68
elsif ($itemcount{24526} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28347);} #68
elsif ($itemcount{28347} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86816);} #68
elsif ($itemcount{86816} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7191);} #68
elsif ($itemcount{7396} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21840);} #68
elsif ($itemcount{21840} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21932);} #68
elsif ($itemcount{21932} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31465);} #68
elsif ($itemcount{31465} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89165);} #68
elsif ($itemcount{89165} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89266);} #68
elsif ($itemcount{89266} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90035);} #68
elsif ($itemcount{90035} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7396);} #68
elsif ($itemcount{3568} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25858);} #68
elsif ($itemcount{25858} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27051);} #68
elsif ($itemcount{27051} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27069);} #68
elsif ($itemcount{27069} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31087);} #68
elsif ($itemcount{31087} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3568);} #68
elsif ($itemcount{3973} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27043);} #68
elsif ($itemcount{27043} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27045);} #68
elsif ($itemcount{27045} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27053);} #68
elsif ($itemcount{27053} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38010);} #68
elsif ($itemcount{38010} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89137);} #68
elsif ($itemcount{89137} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89228);} #68
elsif ($itemcount{89228} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3973);} #68
elsif ($itemcount{5711} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8748);} #68
elsif ($itemcount{8748} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9201);} #68
elsif ($itemcount{9201} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32107);} #68
elsif ($itemcount{32107} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62317);} #68
elsif ($itemcount{62317} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86815);} #68
elsif ($itemcount{86815} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86871);} #68
elsif ($itemcount{86871} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5711);} #68
}