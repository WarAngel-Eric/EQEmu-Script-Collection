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
quest::taskselector(7919, 7922, 7959, 7966, 7973, 7975, 7976, 7978, 7979, 7980, 7981, 7982, 7983, 7984);
}

}

sub EVENT_ITEM {
if ($itemcount{11238} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11313);} #165
elsif ($itemcount{11313} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11333);} #165
elsif ($itemcount{11333} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11340);} #165
elsif ($itemcount{11340} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11341);} #165
elsif ($itemcount{11341} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11342);} #165
elsif ($itemcount{11342} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11343);} #165
elsif ($itemcount{11343} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11344);} #165
elsif ($itemcount{11344} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11238);} #165
elsif ($itemcount{2707} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8435);} #165
elsif ($itemcount{8435} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12254);} #165
elsif ($itemcount{12254} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38254);} #165
elsif ($itemcount{38254} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38266);} #165
elsif ($itemcount{38266} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38267);} #165
elsif ($itemcount{38267} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38269);} #165
elsif ($itemcount{38269} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(61013);} #165
elsif ($itemcount{61013} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2707);} #165
elsif ($itemcount{11225} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11235);} #165
elsif ($itemcount{11235} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11237);} #165
elsif ($itemcount{11237} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11265);} #165
elsif ($itemcount{11265} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11266);} #165
elsif ($itemcount{11266} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11267);} #165
elsif ($itemcount{11267} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11317);} #165
elsif ($itemcount{11317} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11225);} #165
elsif ($itemcount{1882} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25041);} #165
elsif ($itemcount{25041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25070);} #165
elsif ($itemcount{25070} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28389);} #165
elsif ($itemcount{28389} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38116);} #165
elsif ($itemcount{38116} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86643);} #165
elsif ($itemcount{86643} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(90036);} #165
elsif ($itemcount{90036} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1882);} #165
elsif ($itemcount{6403} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8820);} #165
elsif ($itemcount{8820} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8841);} #165
elsif ($itemcount{8841} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58916);} #165
elsif ($itemcount{58916} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63648);} #165
elsif ($itemcount{63648} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69269);} #165
elsif ($itemcount{69269} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86686);} #165
elsif ($itemcount{86686} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6403);} #165
elsif ($itemcount{12597} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28323);} #165
elsif ($itemcount{28323} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28346);} #165
elsif ($itemcount{28346} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31209);} #165
elsif ($itemcount{31209} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31221);} #165
elsif ($itemcount{31221} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69262);} #165
elsif ($itemcount{69262} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(83998);} #165
elsif ($itemcount{83998} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12597);} #165
elsif ($itemcount{3577} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3593);} #165
elsif ($itemcount{3593} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3596);} #165
elsif ($itemcount{3596} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7290);} #165
elsif ($itemcount{7290} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7464);} #165
elsif ($itemcount{7464} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9281);} #165
elsif ($itemcount{9281} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9283);} #165
elsif ($itemcount{9283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3577);} #165
elsif ($itemcount{3947} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7529);} #165
elsif ($itemcount{7529} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7538);} #165
elsif ($itemcount{7538} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7573);} #165
elsif ($itemcount{7573} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11675);} #165
elsif ($itemcount{11675} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32109);} #165
elsif ($itemcount{32109} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86671);} #165
elsif ($itemcount{86671} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3947);} #165
elsif ($itemcount{11434} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11449);} #165
elsif ($itemcount{11449} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29872);} #165
elsif ($itemcount{29872} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32108);} #165
elsif ($itemcount{32108} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38220);} #165
elsif ($itemcount{38220} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58949);} #165
elsif ($itemcount{58949} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86800);} #165
elsif ($itemcount{86800} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11434);} #165
elsif ($itemcount{7550} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24054);} #165
elsif ($itemcount{24054} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24070);} #165
elsif ($itemcount{24070} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26017);} #165
elsif ($itemcount{26017} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(61195);} #165
elsif ($itemcount{61195} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69268);} #165
elsif ($itemcount{69268} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86663);} #165
elsif ($itemcount{86663} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7550);} #165
elsif ($itemcount{6843} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11664);} #165
elsif ($itemcount{11664} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(16809);} #165
elsif ($itemcount{16809} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32106);} #165
elsif ($itemcount{32106} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6843);} #165
elsif ($itemcount{3737} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5756);} #165
elsif ($itemcount{5756} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6832);} #165
elsif ($itemcount{6832} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10858);} #165
elsif ($itemcount{10858} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11682);} #165
elsif ($itemcount{11682} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27064);} #165
elsif ($itemcount{27064} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31185);} #165
elsif ($itemcount{31185} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3737);} #165
elsif ($itemcount{9817} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11136);} #165
elsif ($itemcount{11136} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11437);} #165
elsif ($itemcount{11437} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11443);} #165
elsif ($itemcount{11443} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31182);} #165
elsif ($itemcount{31182} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31529);} #165
elsif ($itemcount{31529} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(32175);} #165
elsif ($itemcount{32175} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9817);} #165
elsif ($itemcount{2611} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6806);} #165
elsif ($itemcount{6806} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8228);} #165
elsif ($itemcount{8228} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28333);} #165
elsif ($itemcount{28333} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31472);} #165
elsif ($itemcount{31472} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62321);} #165
elsif ($itemcount{62321} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86620);} #165
elsif ($itemcount{86620} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2611);} #165
}