sub EVENT_SAY {

my $say_serve = quest::saylink("serve", 1);
my $say_bind = quest::saylink("bind", 1);
my $say_simple = quest::saylink("simple", 1);
my $say_difficult = quest::saylink("difficult", 1);

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
quest::say("Well then, would you like to do a $say_simple task or maybe a more $say_difficult one for us?");
}

if($text=~/simple/i){
quest::taskselector(7355, 7356, 7357, 7358, 7359, 7360, 7361, 7362, 7363, 7364, 7365, 7366, 7367, 7368, 7373, 7374, 7375, 7376, 7377, 7382, 7386, 7387, 7389, 7391);
}

if($text=~/difficult/i){
quest::taskselector(7392, 7396, 7397, 7398, 7399, 7400, 7401, 7402, 7403, 7407, 7408, 7410, 7411, 7412, 7413, 7414, 7415, 7416, 7417, 7418, 7422, 7423, 7424);
}

}

sub EVENT_ITEM {
if ($itemcount{5230} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6628);} #25
elsif ($itemcount{6628} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7245);} #25
elsif ($itemcount{7245} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24994);} #25
elsif ($itemcount{24994} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25055);} #25
elsif ($itemcount{25055} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29824);} #25
elsif ($itemcount{29824} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30867);} #25
elsif ($itemcount{30867} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30870);} #25
elsif ($itemcount{30870} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5230);} #25
elsif ($itemcount{11182} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11202);} #25
elsif ($itemcount{11202} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11208);} #25
elsif ($itemcount{11208} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11209);} #25
elsif ($itemcount{11209} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11214);} #25
elsif ($itemcount{11214} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11330);} #25
elsif ($itemcount{11330} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11336);} #25
elsif ($itemcount{11336} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11346);} #25
elsif ($itemcount{11346} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11182);} #25
elsif ($itemcount{11204} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11211);} #25
elsif ($itemcount{11211} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11226);} #25
elsif ($itemcount{11226} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11310);} #25
elsif ($itemcount{11310} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11312);} #25
elsif ($itemcount{11312} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11314);} #25
elsif ($itemcount{11314} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11321);} #25
elsif ($itemcount{11321} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11332);} #25
elsif ($itemcount{11332} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11204);} #25
elsif ($itemcount{11181} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11186);} #25
elsif ($itemcount{11186} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11213);} #25
elsif ($itemcount{11213} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11217);} #25
elsif ($itemcount{11217} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11220);} #25
elsif ($itemcount{11220} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11221);} #25
elsif ($itemcount{11221} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11311);} #25
elsif ($itemcount{11311} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11331);} #25
elsif ($itemcount{11331} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11181);} #25
elsif ($itemcount{1050} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1162);} #25
elsif ($itemcount{1162} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1164);} #25
elsif ($itemcount{1164} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12241);} #25
elsif ($itemcount{12241} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12242);} #25
elsif ($itemcount{12242} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12243);} #25
elsif ($itemcount{12243} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13918);} #25
elsif ($itemcount{13918} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29258);} #25
elsif ($itemcount{29258} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1050);} #25
elsif ($itemcount{21501} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21505);} #25
elsif ($itemcount{21505} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21506);} #25
elsif ($itemcount{21506} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21538);} #25
elsif ($itemcount{21538} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21540);} #25
elsif ($itemcount{21540} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21554);} #25
elsif ($itemcount{21554} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30276);} #25
elsif ($itemcount{30276} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30285);} #25
elsif ($itemcount{30285} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21501);} #25
elsif ($itemcount{7961} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8127);} #25
elsif ($itemcount{8127} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12521);} #25
elsif ($itemcount{12521} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12528);} #25
elsif ($itemcount{12528} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30028);} #25
elsif ($itemcount{30028} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69289);} #25
elsif ($itemcount{69289} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86840);} #25
elsif ($itemcount{86840} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7961);} #25
elsif ($itemcount{3138} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3710);} #25
elsif ($itemcount{3710} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5366);} #25
elsif ($itemcount{5366} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5369);} #25
elsif ($itemcount{5369} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6683);} #25
elsif ($itemcount{6683} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71308);} #25
elsif ($itemcount{71308} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89100);} #25
elsif ($itemcount{89100} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3138);} #25
elsif ($itemcount{6009} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6952);} #25
elsif ($itemcount{6952} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58832);} #25
elsif ($itemcount{58832} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58833);} #25
elsif ($itemcount{58833} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63333);} #25
elsif ($itemcount{63333} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63334);} #25
elsif ($itemcount{63334} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63565);} #25
elsif ($itemcount{63565} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63566);} #25
elsif ($itemcount{63566} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6009);} #25
elsif ($itemcount{1146} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1149);} #25
elsif ($itemcount{1149} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7761);} #25
elsif ($itemcount{7761} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21583);} #25
elsif ($itemcount{21583} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24059);} #25
elsif ($itemcount{24059} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26490);} #25
elsif ($itemcount{26490} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69260);} #25
elsif ($itemcount{69260} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(69284);} #25
elsif ($itemcount{69284} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1146);} #25
elsif ($itemcount{6307} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6309);} #25
elsif ($itemcount{6309} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6313);} #25
elsif ($itemcount{6313} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7310);} #25
elsif ($itemcount{7310} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7313);} #25
elsif ($itemcount{7313} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10405);} #25
elsif ($itemcount{10405} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52166);} #25
elsif ($itemcount{52166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52170);} #25
elsif ($itemcount{52170} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6307);} #25
elsif ($itemcount{2956} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6356);} #25
elsif ($itemcount{6356} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7287);} #25
elsif ($itemcount{7287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7288);} #25
elsif ($itemcount{7288} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7814);} #25
elsif ($itemcount{7814} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(12467);} #25
elsif ($itemcount{12467} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89184);} #25
elsif ($itemcount{89184} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89188);} #25
elsif ($itemcount{89188} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2956);} #25
elsif ($itemcount{3691} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3704);} #25
elsif ($itemcount{3704} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3717);} #25
elsif ($itemcount{3717} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3730);} #25
elsif ($itemcount{3730} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24992);} #25
elsif ($itemcount{24992} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63335);} #25
elsif ($itemcount{63335} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63567);} #25
elsif ($itemcount{63567} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63757);} #25
elsif ($itemcount{63757} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3691);} #25
elsif ($itemcount{30859} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38063);} #25
elsif ($itemcount{38063} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38065);} #25
elsif ($itemcount{38065} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38222);} #25
elsif ($itemcount{38222} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38224);} #25
elsif ($itemcount{38224} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52421);} #25
elsif ($itemcount{52421} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(71517);} #25
elsif ($itemcount{71517} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85735);} #25
elsif ($itemcount{85735} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30859);} #25
elsif ($itemcount{3990} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3992);} #25
elsif ($itemcount{3992} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3995);} #25
elsif ($itemcount{3995} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28238);} #25
elsif ($itemcount{28238} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29382);} #25
elsif ($itemcount{29382} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29383);} #25
elsif ($itemcount{29383} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54384);} #25
elsif ($itemcount{54384} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3990);} #25
elsif ($itemcount{3510} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3560);} #25
elsif ($itemcount{3560} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25053);} #25
elsif ($itemcount{25053} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29287);} #25
elsif ($itemcount{29287} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29288);} #25
elsif ($itemcount{29288} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(54388);} #25
elsif ($itemcount{54388} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(83995);} #25
elsif ($itemcount{83995} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3510);} #25
elsif ($itemcount{1874} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2910);} #25
elsif ($itemcount{2910} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7176);} #25
elsif ($itemcount{7176} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7189);} #25
elsif ($itemcount{7189} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10852);} #25
elsif ($itemcount{10852} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26494);} #25
elsif ($itemcount{26494} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30272);} #25
elsif ($itemcount{30272} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1874);} #25
elsif ($itemcount{1282} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2041);} #25
elsif ($itemcount{2041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2327);} #25
elsif ($itemcount{2327} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6691);} #25
elsif ($itemcount{6691} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9374);} #25
elsif ($itemcount{9374} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24506);} #25
elsif ($itemcount{24506} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38032);} #25
elsif ($itemcount{38032} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1282);} #25
elsif ($itemcount{58864} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63208);} #25
elsif ($itemcount{63208} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63365);} #25
elsif ($itemcount{63365} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63538);} #25
elsif ($itemcount{63538} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63539);} #25
elsif ($itemcount{63539} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63596);} #25
elsif ($itemcount{63596} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63597);} #25
elsif ($itemcount{63597} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58864);} #25
elsif ($itemcount{11230} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11231);} #25
elsif ($itemcount{11231} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11233);} #25
elsif ($itemcount{11233} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11234);} #25
elsif ($itemcount{11234} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11236);} #25
elsif ($itemcount{11236} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11262);} #25
elsif ($itemcount{11262} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11263);} #25
elsif ($itemcount{11263} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11230);} #25
elsif ($itemcount{5385} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27033);} #25
elsif ($itemcount{27033} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38133);} #25
elsif ($itemcount{38133} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38141);} #25
elsif ($itemcount{38141} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38151);} #25
elsif ($itemcount{38151} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38164);} #25
elsif ($itemcount{38164} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38166);} #25
elsif ($itemcount{38166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5385);} #25
elsif ($itemcount{5727} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6938);} #25
elsif ($itemcount{6938} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11154);} #25
elsif ($itemcount{11154} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11676);} #25
elsif ($itemcount{11676} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25343);} #25
elsif ($itemcount{25343} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30877);} #25
elsif ($itemcount{30877} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30880);} #25
elsif ($itemcount{30880} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5727);} #25
elsif ($itemcount{24990} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58839);} #25
elsif ($itemcount{58839} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58892);} #25
elsif ($itemcount{58892} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63340);} #25
elsif ($itemcount{63340} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63571);} #25
elsif ($itemcount{63571} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63572);} #25
elsif ($itemcount{63572} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63625);} #25
elsif ($itemcount{63625} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24990);} #25
elsif ($itemcount{4401} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6082);} #25
elsif ($itemcount{6082} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6089);} #25
elsif ($itemcount{6089} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6092);} #25
elsif ($itemcount{6092} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6965);} #25
elsif ($itemcount{6965} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27723);} #25
elsif ($itemcount{27723} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27726);} #25
elsif ($itemcount{27726} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4401);} #25
elsif ($itemcount{2798} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3147);} #25
elsif ($itemcount{3147} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6305);} #25
elsif ($itemcount{6305} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9379);} #25
elsif ($itemcount{9379} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9384);} #25
elsif ($itemcount{9384} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9386);} #25
elsif ($itemcount{9386} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(77500);} #25
elsif ($itemcount{77500} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2798);} #25
elsif ($itemcount{7900} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11890);} #25
elsif ($itemcount{11890} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11891);} #25
elsif ($itemcount{11891} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27018);} #25
elsif ($itemcount{27018} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27032);} #25
elsif ($itemcount{27032} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(30277);} #25
elsif ($itemcount{30277} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(83994);} #25
elsif ($itemcount{83994} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7900);} #25
elsif ($itemcount{10659} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11302);} #25
elsif ($itemcount{11302} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11677);} #25
elsif ($itemcount{11677} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27013);} #25
elsif ($itemcount{27013} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27030);} #25
elsif ($itemcount{27030} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38277);} #25
elsif ($itemcount{38277} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38283);} #25
elsif ($itemcount{38283} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10659);} #25
elsif ($itemcount{24211} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(26000);} #25
elsif ($itemcount{26000} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28355);} #25
elsif ($itemcount{28355} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38088);} #25
elsif ($itemcount{38088} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38092);} #25
elsif ($itemcount{38092} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38095);} #25
elsif ($itemcount{38095} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63749);} #25
elsif ($itemcount{63749} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24211);} #25
elsif ($itemcount{3182} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3183);} #25
elsif ($itemcount{3183} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11184);} #25
elsif ($itemcount{11184} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11216);} #25
elsif ($itemcount{11216} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11247);} #25
elsif ($itemcount{11247} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11318);} #25
elsif ($itemcount{11318} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11338);} #25
elsif ($itemcount{11338} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3182);} #25
elsif ($itemcount{7541} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(58859);} #25
elsif ($itemcount{58859} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63360);} #25
elsif ($itemcount{63360} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63592);} #25
elsif ($itemcount{63592} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63752);} #25
elsif ($itemcount{63752} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63755);} #25
elsif ($itemcount{63755} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63761);} #25
elsif ($itemcount{63761} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7541);} #25
elsif ($itemcount{3519} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9522);} #25
elsif ($itemcount{9522} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10850);} #25
elsif ($itemcount{10850} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21906);} #25
elsif ($itemcount{21906} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24017);} #25
elsif ($itemcount{24017} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25160);} #25
elsif ($itemcount{25160} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89199);} #25
elsif ($itemcount{89199} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3519);} #25
elsif ($itemcount{6166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6171);} #25
elsif ($itemcount{6171} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6175);} #25
elsif ($itemcount{6175} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6176);} #25
elsif ($itemcount{6176} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6177);} #25
elsif ($itemcount{6177} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(22905);} #25
elsif ($itemcount{22905} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52088);} #25
elsif ($itemcount{52088} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6166);} #25
elsif ($itemcount{3985} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3987);} #25
elsif ($itemcount{3987} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3989);} #25
elsif ($itemcount{3989} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3993);} #25
elsif ($itemcount{3993} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3997);} #25
elsif ($itemcount{3997} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6743);} #25
elsif ($itemcount{6743} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28239);} #25
elsif ($itemcount{28239} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3985);} #25
elsif ($itemcount{8388} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11690);} #25
elsif ($itemcount{11690} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21841);} #25
elsif ($itemcount{21841} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31207);} #25
elsif ($itemcount{31207} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38012);} #25
elsif ($itemcount{38012} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(65196);} #25
elsif ($itemcount{65196} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89237);} #25
elsif ($itemcount{89237} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8388);} #25
elsif ($itemcount{1980} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3946);} #25
elsif ($itemcount{3946} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3948);} #25
elsif ($itemcount{3948} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3952);} #25
elsif ($itemcount{3952} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6376);} #25
elsif ($itemcount{6376} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29829);} #25
elsif ($itemcount{29829} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29838);} #25
elsif ($itemcount{29838} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(1980);} #25
elsif ($itemcount{3736} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11228);} #25
elsif ($itemcount{11228} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11240);} #25
elsif ($itemcount{11240} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(21933);} #25
elsif ($itemcount{21933} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24504);} #25
elsif ($itemcount{24504} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25002);} #25
elsif ($itemcount{25002} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89147);} #25
elsif ($itemcount{89147} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3736);} #25
elsif ($itemcount{2397} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2939);} #25
elsif ($itemcount{2939} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5414);} #25
elsif ($itemcount{5414} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24010);} #25
elsif ($itemcount{24010} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38329);} #25
elsif ($itemcount{38329} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38331);} #25
elsif ($itemcount{38331} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86821);} #25
elsif ($itemcount{86821} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(2397);} #25
elsif ($itemcount{9835} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(11577);} #25
elsif ($itemcount{11577} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27717);} #25
elsif ($itemcount{27717} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27720);} #25
elsif ($itemcount{27720} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52136);} #25
elsif ($itemcount{52136} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66141);} #25
elsif ($itemcount{66141} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89065);} #25
elsif ($itemcount{89065} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9835);} #25
elsif ($itemcount{5217} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9238);} #25
elsif ($itemcount{9238} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9946);} #25
elsif ($itemcount{9946} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38102);} #25
elsif ($itemcount{38102} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(55240);} #25
elsif ($itemcount{55240} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86828);} #25
elsif ($itemcount{86828} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89139);} #25
elsif ($itemcount{89139} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5217);} #25
elsif ($itemcount{4503} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(13589);} #25
elsif ($itemcount{13589} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24479);} #25
elsif ($itemcount{24479} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63434);} #25
elsif ($itemcount{63434} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66147);} #25
elsif ($itemcount{66147} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89079);} #25
elsif ($itemcount{89079} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89160);} #25
elsif ($itemcount{89160} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(4503);} #25
elsif ($itemcount{7539} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(10920);} #25
elsif ($itemcount{10920} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15785);} #25
elsif ($itemcount{15785} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24523);} #25
elsif ($itemcount{24523} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27714);} #25
elsif ($itemcount{27714} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29645);} #25
elsif ($itemcount{29645} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89166);} #25
elsif ($itemcount{89166} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(7539);} #25
elsif ($itemcount{3698} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(5057);} #25
elsif ($itemcount{5057} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8972);} #25
elsif ($itemcount{8972} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24480);} #25
elsif ($itemcount{24480} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(63418);} #25
elsif ($itemcount{63418} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(66152);} #25
elsif ($itemcount{66152} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86786);} #25
elsif ($itemcount{86786} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(3698);} #25
elsif ($itemcount{6726} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8750);} #25
elsif ($itemcount{8750} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27041);} #25
elsif ($itemcount{27041} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27060);} #25
elsif ($itemcount{27060} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38073);} #25
elsif ($itemcount{38073} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85590);} #25
elsif ($itemcount{85590} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(86857);} #25
elsif ($itemcount{86857} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6726);} #25
elsif ($itemcount{6887} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8957);} #25
elsif ($itemcount{8957} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8959);} #25
elsif ($itemcount{8959} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28343);} #25
elsif ($itemcount{28343} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38325);} #25
elsif ($itemcount{38325} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(75673);} #25
elsif ($itemcount{75673} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89145);} #25
elsif ($itemcount{89145} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(6887);} #25
elsif ($itemcount{25186} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27044);} #25
elsif ($itemcount{27044} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(27054);} #25
elsif ($itemcount{27054} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28352);} #25
elsif ($itemcount{28352} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(29602);} #25
elsif ($itemcount{29602} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31794);} #25
elsif ($itemcount{31794} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(52137);} #25
elsif ($itemcount{52137} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25186);} #25
elsif ($itemcount{9275} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(25436);} #25
elsif ($itemcount{25436} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31090);} #25
elsif ($itemcount{31090} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31463);} #25
elsif ($itemcount{31463} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(62324);} #25
elsif ($itemcount{62324} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(85538);} #25
elsif ($itemcount{85538} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(89151);} #25
elsif ($itemcount{89151} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(9275);} #25
elsif ($itemcount{8753} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15767);} #25
elsif ($itemcount{15767} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(15776);} #25
elsif ($itemcount{15776} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(24532);} #25
elsif ($itemcount{24532} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(28348);} #25
elsif ($itemcount{28348} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(31837);} #25
elsif ($itemcount{31837} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(38081);} #25
elsif ($itemcount{38081} == 1 ){quest::say("This item does not please you? How about this one?"); quest::summonitem(8753);} #25
}