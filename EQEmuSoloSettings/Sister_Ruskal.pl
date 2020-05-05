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
quest::taskselector(7635, 7636, 7637, 7638, 7639, 7640, 7641, 7642, 7643, 7644, 7645, 7646, 7647, 7652, 7653, 7654, 7672, 7674, 7676, 7680, 7681, 7684, 7685, 7686, 7687, 7694, 7695, 7697, 7700, 7701, 7703, 7704);
}

}

sub EVENT_ITEM {
if ($itemcount{5041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6031);} #2
elsif ($itemcount{6031} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6953);} #2
elsif ($itemcount{6953} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7022);} #2
elsif ($itemcount{7022} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7305);} #2
elsif ($itemcount{7305} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7353);} #2
elsif ($itemcount{7353} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52164);} #2
elsif ($itemcount{52164} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52169);} #2
elsif ($itemcount{52169} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5041);} #2
elsif ($itemcount{3360} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3362);} #2
elsif ($itemcount{3362} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13727);} #2
elsif ($itemcount{13727} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13816);} #2
elsif ($itemcount{13816} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28745);} #2
elsif ($itemcount{28745} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29268);} #2
elsif ($itemcount{29268} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59952);} #2
elsif ($itemcount{59952} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59968);} #2
elsif ($itemcount{59968} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3360);} #2
elsif ($itemcount{1122} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6732);} #2
elsif ($itemcount{6732} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7402);} #2
elsif ($itemcount{7402} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8926);} #2
elsif ($itemcount{8926} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(14749);} #2
elsif ($itemcount{14749} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52085);} #2
elsif ($itemcount{52085} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(57200);} #2
elsif ($itemcount{57200} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63748);} #2
elsif ($itemcount{63748} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1122);} #2
elsif ($itemcount{3507} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13920);} #2
elsif ($itemcount{13920} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21565);} #2
elsif ($itemcount{21565} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21566);} #2
elsif ($itemcount{21566} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59950);} #2
elsif ($itemcount{59950} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(59951);} #2
elsif ($itemcount{59951} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67285);} #2
elsif ($itemcount{67285} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(99211);} #2
elsif ($itemcount{99211} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3507);} #2
elsif ($itemcount{11215} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11218);} #2
elsif ($itemcount{11218} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11219);} #2
elsif ($itemcount{11219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11222);} #2
elsif ($itemcount{11222} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11224);} #2
elsif ($itemcount{11224} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11335);} #2
elsif ($itemcount{11335} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11337);} #2
elsif ($itemcount{11337} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11339);} #2
elsif ($itemcount{11339} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11215);} #2
elsif ($itemcount{1277} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3159);} #2
elsif ($itemcount{3159} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6306);} #2
elsif ($itemcount{6306} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29847);} #2
elsif ($itemcount{29847} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(61014);} #2
elsif ($itemcount{61014} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67287);} #2
elsif ($itemcount{67287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69266);} #2
elsif ($itemcount{69266} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89016);} #2
elsif ($itemcount{89016} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1277);} #2
elsif ($itemcount{3922} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5114);} #2
elsif ($itemcount{5114} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7343);} #2
elsif ($itemcount{7343} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7372);} #2
elsif ($itemcount{7372} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38044);} #2
elsif ($itemcount{38044} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67184);} #2
elsif ($itemcount{67184} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(67191);} #2
elsif ($itemcount{67191} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69293);} #2
elsif ($itemcount{69293} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3922);} #2
elsif ($itemcount{1271} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7526);} #2
elsif ($itemcount{7526} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(20477);} #2
elsif ($itemcount{20477} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24055);} #2
elsif ($itemcount{24055} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24813);} #2
elsif ($itemcount{24813} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32147);} #2
elsif ($itemcount{32147} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89064);} #2
elsif ($itemcount{89064} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90300);} #2
elsif ($itemcount{90300} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1271);} #2
elsif ($itemcount{3350} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3354);} #2
elsif ($itemcount{3354} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3528);} #2
elsif ($itemcount{3528} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6981);} #2
elsif ($itemcount{6981} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7027);} #2
elsif ($itemcount{7027} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21547);} #2
elsif ($itemcount{21547} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29671);} #2
elsif ($itemcount{29671} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69278);} #2
elsif ($itemcount{69278} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3350);} #2
elsif ($itemcount{3405} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3407);} #2
elsif ($itemcount{3407} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3408);} #2
elsif ($itemcount{3408} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3409);} #2
elsif ($itemcount{3409} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3411);} #2
elsif ($itemcount{3411} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(14902);} #2
elsif ($itemcount{14902} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63552);} #2
elsif ($itemcount{63552} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63754);} #2
elsif ($itemcount{63754} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3405);} #2
elsif ($itemcount{3550} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6358);} #2
elsif ($itemcount{6358} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21836);} #2
elsif ($itemcount{21836} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25127);} #2
elsif ($itemcount{25127} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25128);} #2
elsif ($itemcount{25128} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25129);} #2
elsif ($itemcount{25129} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27712);} #2
elsif ($itemcount{27712} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90032);} #2
elsif ($itemcount{90032} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3550);} #2
elsif ($itemcount{1690} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12366);} #2
elsif ($itemcount{12366} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13385);} #2
elsif ($itemcount{13385} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30377);} #2
elsif ($itemcount{30377} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38296);} #2
elsif ($itemcount{38296} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38310);} #2
elsif ($itemcount{38310} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52002);} #2
elsif ($itemcount{52002} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85017);} #2
elsif ($itemcount{85017} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1690);} #2
elsif ($itemcount{2708} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3662);} #2
elsif ($itemcount{3662} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3767);} #2
elsif ($itemcount{3767} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25177);} #2
elsif ($itemcount{25177} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32189);} #2
elsif ($itemcount{32189} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38197);} #2
elsif ($itemcount{38197} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71185);} #2
elsif ($itemcount{71185} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2708);} #2
elsif ($itemcount{2388} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3529);} #2
elsif ($itemcount{3529} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7349);} #2
elsif ($itemcount{7349} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8968);} #2
elsif ($itemcount{8968} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29256);} #2
elsif ($itemcount{29256} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29257);} #2
elsif ($itemcount{29257} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29266);} #2
elsif ($itemcount{29266} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2388);} #2
elsif ($itemcount{2705} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38298);} #2
elsif ($itemcount{38298} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38305);} #2
elsif ($itemcount{38305} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38308);} #2
elsif ($itemcount{38308} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38311);} #2
elsif ($itemcount{38311} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89102);} #2
elsif ($itemcount{89102} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89187);} #2
elsif ($itemcount{89187} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2705);} #2
elsif ($itemcount{38089} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38103);} #2
elsif ($itemcount{38103} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58799);} #2
elsif ($itemcount{58799} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58857);} #2
elsif ($itemcount{58857} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63202);} #2
elsif ($itemcount{63202} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63533);} #2
elsif ($itemcount{63533} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63591);} #2
elsif ($itemcount{63591} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38089);} #2
elsif ($itemcount{2568} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3779);} #2
elsif ($itemcount{3779} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3782);} #2
elsif ($itemcount{3782} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6385);} #2
elsif ($itemcount{6385} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6569);} #2
elsif ($itemcount{6569} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25316);} #2
elsif ($itemcount{25316} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32194);} #2
elsif ($itemcount{32194} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2568);} #2
elsif ($itemcount{3052} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5784);} #2
elsif ($itemcount{5784} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6331);} #2
elsif ($itemcount{6331} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6332);} #2
elsif ($itemcount{6332} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6333);} #2
elsif ($itemcount{6333} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69291);} #2
elsif ($itemcount{69291} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(87322);} #2
elsif ($itemcount{87322} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3052);} #2
elsif ($itemcount{24045} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24057);} #2
elsif ($itemcount{24057} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27028);} #2
elsif ($itemcount{27028} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27702);} #2
elsif ($itemcount{27702} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27706);} #2
elsif ($itemcount{27706} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29242);} #2
elsif ($itemcount{29242} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62054);} #2
elsif ($itemcount{62054} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24045);} #2
elsif ($itemcount{3762} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3764);} #2
elsif ($itemcount{3764} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3766);} #2
elsif ($itemcount{3766} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3768);} #2
elsif ($itemcount{3768} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3770);} #2
elsif ($itemcount{3770} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3773);} #2
elsif ($itemcount{3773} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89150);} #2
elsif ($itemcount{89150} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3762);} #2
elsif ($itemcount{3587} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24802);} #2
elsif ($itemcount{24802} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24804);} #2
elsif ($itemcount{24804} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24806);} #2
elsif ($itemcount{24806} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24807);} #2
elsif ($itemcount{24807} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24809);} #2
elsif ($itemcount{24809} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24811);} #2
elsif ($itemcount{24811} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3587);} #2
elsif ($itemcount{3977} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3982);} #2
elsif ($itemcount{3982} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3983);} #2
elsif ($itemcount{3983} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4322);} #2
elsif ($itemcount{4322} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10909);} #2
elsif ($itemcount{10909} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10910);} #2
elsif ($itemcount{10910} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24510);} #2
elsif ($itemcount{24510} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3977);} #2
elsif ($itemcount{3788} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12520);} #2
elsif ($itemcount{12520} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12524);} #2
elsif ($itemcount{12524} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(14717);} #2
elsif ($itemcount{14717} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24522);} #2
elsif ($itemcount{24522} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25283);} #2
elsif ($itemcount{25283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86836);} #2
elsif ($itemcount{86836} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3788);} #2
elsif ($itemcount{27715} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29834);} #2
elsif ($itemcount{29834} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38075);} #2
elsif ($itemcount{38075} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38077);} #2
elsif ($itemcount{38077} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52089);} #2
elsif ($itemcount{52089} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65194);} #2
elsif ($itemcount{65194} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89140);} #2
elsif ($itemcount{89140} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27715);} #2
elsif ($itemcount{3740} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11699);} #2
elsif ($itemcount{11699} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38098);} #2
elsif ($itemcount{38098} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38099);} #2
elsif ($itemcount{38099} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38101);} #2
elsif ($itemcount{38101} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86808);} #2
elsif ($itemcount{86808} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89216);} #2
elsif ($itemcount{89216} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3740);} #2
elsif ($itemcount{8844} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38136);} #2
elsif ($itemcount{38136} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58921);} #2
elsif ($itemcount{58921} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63422);} #2
elsif ($itemcount{63422} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63649);} #2
elsif ($itemcount{63649} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63670);} #2
elsif ($itemcount{63670} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86705);} #2
elsif ($itemcount{86705} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8844);} #2
elsif ($itemcount{10921} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24535);} #2
elsif ($itemcount{24535} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29897);} #2
elsif ($itemcount{29897} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75681);} #2
elsif ($itemcount{75681} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75693);} #2
elsif ($itemcount{75693} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86633);} #2
elsif ($itemcount{86633} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86641);} #2
elsif ($itemcount{86641} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10921);} #2
elsif ($itemcount{7528} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10923);} #2
elsif ($itemcount{10923} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11581);} #2
elsif ($itemcount{11581} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15788);} #2
elsif ($itemcount{15788} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24529);} #2
elsif ($itemcount{24529} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58919);} #2
elsif ($itemcount{58919} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63420);} #2
elsif ($itemcount{63420} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7528);} #2
elsif ($itemcount{3247} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7572);} #2
elsif ($itemcount{7572} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8751);} #2
elsif ($itemcount{8751} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27608);} #2
elsif ($itemcount{27608} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31219);} #2
elsif ($itemcount{31219} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38249);} #2
elsif ($itemcount{38249} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89235);} #2
elsif ($itemcount{89235} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3247);} #2
elsif ($itemcount{7872} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9287);} #2
elsif ($itemcount{9287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75669);} #2
elsif ($itemcount{75669} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7872);} #2
elsif ($itemcount{9811} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9814);} #2
elsif ($itemcount{9814} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9826);} #2
elsif ($itemcount{9826} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11440);} #2
elsif ($itemcount{11440} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12626);} #2
elsif ($itemcount{12626} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19448);} #2
elsif ($itemcount{19448} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(19548);} #2
elsif ($itemcount{19548} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9811);} #2
elsif ($itemcount{5610} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8230);} #2
elsif ($itemcount{8230} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9282);} #2
elsif ($itemcount{9282} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25324);} #2
elsif ($itemcount{25324} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25433);} #2
elsif ($itemcount{25433} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25437);} #2
elsif ($itemcount{25437} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86870);} #2
elsif ($itemcount{86870} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5610);} #2
}