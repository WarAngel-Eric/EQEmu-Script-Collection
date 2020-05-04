///////////////////////////////////////////////////////////




use DBI;
use DBD::mysql;

my $dbh = DBI->connect ("DBI:mysql:peq:localhost", root, Logrus8);
	
sub EVENT_SAY 
{ 
	my $workorders = quest::saylink("workorders");
	my $redeem = quest::saylink("redeem");
	if($text=~/Hail/i)
	{
		plugin::Whisper("Through my research, I have discovered a way to transmute a weapon into an ornamentation. It takes some time, but the magic will only work on weapons. If you would like me to turn a weapon of yours into an ornamentation, you will need to provide me with a weapon along with some money, you know, for my time and hard work. It will take roughly 24 hours but that is a small wait to have a tailor-made ornamentation. These ornamentations can only be inserted into the ornamentation slot on your weapon. If you would like to check your $workorders, or if you wish to $redeem any finished items.") ;
	}
	
	if($text=~/workorders/i)
	{
		#Get current work orders that need to be fulfilled for player.
		my $workorders = $dbh->prepare( "SELECT * from augment_work_orders where player_id = '$charid'");
		$workorders->execute( );
		
		#my $hasWorkOrder = false;
		while ( my @workorderrow = $workorders->fetchrow_array( ) )  {
			$hasWorkOrder = true;
			my $newAugId = @workorderrow[1];
			
			#get the stats for this augment
			my $workOrderItem = $dbh->prepare("SELECT * from items where id = '$newAugId'");
			$workOrderItem->execute();
			my @row = $workOrderItem->fetchrow_array();
			
			#display information to the client about their item
			plugin::Whisper("--------$row[2]:---------'");
			plugin::Whisper("Damage: $row[51], Delay: $row[54]") ;  
			plugin::Whisper("HP: $row[77], Mana: $row[90]") ; 
			plugin::Whisper("AC: $row[4]");
			plugin::Whisper("STR: $row[11]") ; 		
			plugin::Whisper("STA: $row[10]") ; 		
			plugin::Whisper("AGI: $row[3]") ; 			
			plugin::Whisper("DEX: $row[7]") ; 		
			plugin::Whisper("WIS: $row[28]") ; 		
			plugin::Whisper("INT: $row[8]") ; 		
			plugin::Whisper("CHA: $row[6]") ; 		
			plugin::Whisper("PR: $row[100]") ; 		
			plugin::Whisper("MR: $row[96]") ; 		
			plugin::Whisper("DR: $row[57]") ; 		
			plugin::Whisper("FR: $row[73]") ;			
			plugin::Whisper("CR: $row[50]") ; 	
			plugin::Whisper("Backstab Damage: $row[242]");
		}
		
		#if there weren't any work orders, tell them
		if(!$hasWorkOrder)
		{
			plugin::Whisper("I currently do not have any work orders from you.");
		}
	}
		if($text =~/redeem/i)
	{
		#get the augments that have been added long enough to go through a server restart
		my $workorders = $dbh->prepare( "SELECT * from augment_work_orders where player_id = '$charid' and order_date != CURDATE()");
		$workorders->execute( );
		while ( my @workorderrow = $workorders->fetchrow_array( ) ) 
		{
			#give item to player
			quest::summonitem(@workorderrow[1]);
			
			#remove work order from the augment_work_order table
			my $removeWorkOrder = $dbh->prepare( "delete from augment_work_orders where player_id = '$charid' and item_id = '@workorderrow[1]'");
			$removeWorkOrder->execute( );
		}
		plugin::Whisper("I have nothing more to return to you at this time.");
		
	}
}
sub EVENT_ITEM 
{
	#get the stats on each of the items given to the NPC
	my $sth = $dbh->prepare( "SELECT * FROM items where id = '$item1'");
	$sth->execute( );
	
	#create variables for all of the stats to be added together
	my $itid = 0;
	my $itemname = 0;
	my $dmg = 0;       	
	my $hp = 0; 		
	my $mana = 0;
	my $endurance = 0;
	my $ac = 0; 		
	my $str = 0; 		
	my $sta = 0; 		
	my $agi = 0; 		
	my $dex = 0; 		
	my $wis = 0; 		
	my $int = 0; 		
	my $cha = 0;		
	my $pr = 0; 		
	my $mr = 0; 		
	my $dr = 0; 		
	my $fr = 0;			
	my $cr = 0;			
	my $augtype = 0;
	my $hstr = 0;
	my $hsta = 0;
	my $hagi = 0;
	my $hdex = 0;
	my $hwis = 0;
	my $hint = 0;
	my $hcha = 0;
	my $bsdmg = 0;
	my $extradamskill = 0;
	my $extradamamt = 0;
	
	while ( my @row = $sth->fetchrow_array( ) )  {
		#increment stats for each item
		$itid = $row[1];
		$itemname = $row[2];
		$dmg = $row[51];       	
		$hp = $row[77]; 				
		$mana = $row[90];			
		$endurance = $row[62];
		$ac = $row[4]; 					
		$str = $row[11]; 			
		$sta = $row[10]; 				
		$agi = $row[3]; 					
		$dex = $row[7]; 					
		$wis = $row[28]; 				
		$int = $row[8]; 					
		$cha = $row[6]; 				
		$pr = $row[100]; 				
		$mr = $row[96]; 					
		$dr = $row[57]; 					
		$fr = $row[73];					
		$cr = $row[50];
		$svcorrup = $row[171];
		$augtype = 524288;
		$slot = $row[112];
		$icon = $row[79];
		$class = $row[44];
		$proceffect = $row[145];
		$procrate = $row[101];
		$hstr = $row[226];
		$hsta = $row[231];
		$hdex = $row[230];
		$hagi = $row[229];
		$hwis = $row[228];
		$hint = $row[227];
		$hcha = $row[232];
		$hpr = $row[233];
		$hdr = $row[234];
		$hfr = $row[235];
		$hcr = $row[236];
		$hmr = $row[237];
		$elemdmgtype = $row[60];
		$elemdmgamt = $row[61];
		$hcorrup = $row[238];
		$healamt = $row[239];
		$spelldmg = $row[240];
		$clairvoyance = $row[241];
		$dsmit = $row[225];
		$stunresist = $row[116];
		$strikethrough = $row[115];
		$spellshield = $row[114];
		$shielding = $row[108];
		$enduranceregen = $row[92];
		$manaregen = $row[91];
		$regen = $row[78];
		$dotshielding = $row[56];
		$damageshield = $row[52];
		$combateffects = $row[46];
		$avoidance = $row[27];
		$attack = $row[12];
		$accuracy = $row[5];
		$focuseffect = $row[72];
		$worneffect = $row[150];
		$worntype = $row[151];
		$focustype = $row[155];
		$skillmodtype = $row[110];
		$skillmodvalue = $row[111];
		$graphic = $row[80];
		$bsdmg = $row[242];
		$extradamskill = $row[47];
		$extradamamt = $row[48];
		
	}
	
		
	#pricing structure for stat types
	$regularStatPrice = 25; #same and resists
	$achpmanaPrice = 35; #same
	$hStatsCost = 45; # heroics
	$DmgregenCost = 45; #mod2s
	
	
	#calculate regular stats totals and add to cost
	my $regularStats = $str + $sta + $agi + $dex + $wis + $int + $cha + $pr + $mr + $dr + $fr + $cr + $svcorrup; 
	$cost = $regularStatPrice * $regularStats;
	
	#calculate AC + HP + Mana totals and add to cost
	my $achpmanaStats = $hp + $mana + $ac;
	$cost = $cost + ($achpmanaStats * $achpmanaPrice);
	
	#calculate resists totals and add to cost
	my $hStats = $hstr + $hsta + $hagi + $hdex + $hwis + $hint + $cha + $hpr + $hdr + $hfr + $hcr + $hmr + $hcorrup;
	$cost = $cost + ($hStatsCost * $hStats);
	
	#calculate DMG and Regen totals and add to cost
	my $DmgregenStat = $dmg + $bsdmg + $extradamamt + $skillmodvalue + $healamt + $spelldmg + $clairvoyance + $dsmit + $attack + $avoidance + $combateffects + $damageshield + $dotshielding + $regen + $manaregen + $enduranceregen + $shielding + $spellshield + $strikethrough + $stunresist + $accuracy + $elemdmgamt;
	$cost = $cost + ($DmgregenCost * $DmgregenStat);
	
		
	#display price to client
	plugin::Whisper("The total cost to turn this weapon into an augment is $cost platinum pieces.") ;
	
	#if they included the correct amount of money, create the item and the work order
	if($platinum == $cost)
		{
			
			
			my $ItemID1 = $dbh->prepare(("SELECT name FROM items where id = '$itid'"));
			$ItemID1->execute( );
			my $Const = ("Ornament of ");
			my $Exists = $dbh->prepare(("SELECT id from items where name = Concat($Const, $ItemID1) order by id desc limit 1"));					
			$Exists->execute( );
			if($Exists > 0)
				{
				$client->Message(315, "$NPCName whispers to you, 'You're in luck $name, I have this ornament in stock. Here you go.");
				quest::summonitem($Exists);
				}
			
			else
			{
			
			my $newAugStatement = "INSERT INTO `peq`.`items`(`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK219`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`)
				 VALUES ((SELECT MAX(id) FROM items C) +1, '0', 'Ornament of $itemname', '$agi', '$ac', '$accuracy', '$cha', '$dex', '$int', '0', '$sta','$str', '$attack', '0', '0', '1', '0', '1', '0', '1', '0','1', '0', '1', '0', '1', '$augtype', '$avoidance', '$wis', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '','0', '$class', '4278190080', '$combateffects', '$extradamskill', '$extradamamt', '0', '$cr', '$dmg', '$damageshield','0', '0', '47018', '$dotshielding', '$dr', '0', '0', '$elemdmgtype', '$elemdmgamt', '$endurance','0', '0', '0', '0', '0', '0', '0', '0', '', '$focuseffect','$fr', '0', '0', '0', '$hp', '$regen', '$icon', '$graphic', '0', '54','0', '16', '1', '0', '$name made this Ornamentation with $itemname .', '0', '0', '$mana', '$manaregen', '$enduranceregen','0', '0', '0', '$mr', '0', '1', '0', '$pr', '$procrate', '65535', '0','0', '0', '0', '1', '$shielding', '0', '$skillmodtype', '$skillmodvalue', '$slot', '-1','$spellshield', '$strikethrough', '$stunresist', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2010-09-11 11:23:49', '', '0', '1', '0', '0', '0', '0', '0', '', '0', '$proceffect', '0', '0', '0', '0', '$worneffect', '$worntype', '0', '0', '0', '$focustype', '0', '0', '0', '-1', '0', '0', '0', '0', NULL, '2009-04-10 17:38:02', NULL, 'Mortow', '0', '', '0', '$svcorrup', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0000000000000000000', '0', '', '-1', '0', '0', '0', '0', '', '-1', '0', '0', '0', '0', '0', '', '-1', '0', '0', '0', '0', '0', '', '-1', '0', '0', '0', '0', '0', '', '-1', '0', '0', '0', '0', '0', '', '', '', '', '', '', '$dsmit', '$hstr', '$hint', '$hwis', '$hagi', '$hdex', '$hsta', '$hcha', '$hpr', '$hdr', '$hfr', '$hcr', '$hmr', '$hcorrup', '$healamt', '$spelldmg', '$clairvoyance', '$bsdmg', '20031014223933', '0', '70', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '', '-1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);";
			my $createAug = $dbh->prepare("$newAugStatement");
			$createAug->execute( );
			
			#get the new items id
			my $lastid = $dbh->prepare(("SELECT id from `items` order by id desc limit 1"));
			$lastid->execute( );
			my $newAugId = 0;
			while ( my @row2 = $lastid->fetchrow_array( ) )  {
				$newAugId = @row2[0];
			}
			
			
			#create new augment work order with newly created item
			#has to work like this since items are not automatically added to the game when added in DB
			my $workOrderCreate = $dbh->prepare("insert into `peq`.`augment_work_orders` (player_id, item_id, order_date) values ('$charid', '$newAugId', NOW());");
			$workOrderCreate->execute();
			
			
			#Notify the Player that the work order was successful
			$client->Message(315, "$NPCName whispers to you, 'I am sorry $name, I do not have this ornament in stock. Come back tomorrow and I will have it made for you.");
			plugin::Whisper("Work order created successfully");
			}
		}
	else
		{
			plugin::return_items(\%itemcount);
		}
}




//////////////////////////////////////////////////////





Kingly_Krab


use strict;
use warnings;
sub CreateI {
    my ($name, $id, $minhp, $maxhp, $minac, $maxac, $mins, $maxs, $minhs, $maxhs, $mincs, $maxcs, $minsh, $maxsh) = (shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift);
    my $material;
    chomp $name;
    $name =~ s/\'/\\'/ig;
    open my $file, ">>$name Armor.sql";
    my $n = 0;
    my $slot = 0;
    my %typeHash = (1 => ["Hood", "Robe", "Wristlet", "Covers", "Pantaloons", "Slippers", "Gloves"],
    2 => ["Visor", "Chain Body", "Bracelet", "Shoulderpads", "Greaves", "Boots", "Gauntlets"],
    3 => ["Helmet", "Breastplate", "Bracer", "Vambraces", "Greaves", "Boots", "Gauntlets"],
    4 => ["Cap", "Cheststraps", "Wristband", "Armbands", "Pants", "Shoes", "Gloves"]);
    my @slotArray = (4, 131072, 1536, 128, 262144, 524288, 4096);        
    my @materialArray = (10, 11, 12, 13, 14, 15, 16);
    my %classesHash = (1 => 15360, 2 => 33544, 3 => 151, 4 => 16480);
    my %iconsHash = (1 => [639, 838, 638, 670, 631, 525, 517],
    2 => [625, 538, 620, 543, 630, 545, 526],
    3 => [628, 624, 516, 622, 540, 524, 531],
    4 => [640, 632, 637, 634, 635, 633, 636]);
    
    my @hpa = (($minhp > 0) ? ($minhp..$maxhp) : (0));
    my @aca = (($minac > 0) ? ($minac..$maxac) : (0));
    my @stata = (($mins > 0) ? ($mins..$maxs) : (0));
    my @hsa = (($minhs > 0) ? ($minhs..$maxhs) : (0));
    my @csa = (($mincs > 0) ? ($mincs..$maxcs) : (0));
    my @sha = (($minsh > 0) ? ($minsh..$maxsh) : (0));
    
    foreach my $type (sort {$a <=> $b} keys %typeHash) {
        foreach my $item (@{$typeHash{$type}}) {
            $material = (($type == 1 && $item eq "Robe") ? $materialArray[rand @materialArray] : $type);
            print "ID: $id Name: $name $item Type: $item\n";
            my $query = "INSERT INTO `items` SET `id` = '$id', ";
            $query .= "`name` = '$name $item', ";
            $query .= "`slots` = '" . $slotArray[$slot] . "', ";
            $query .= "`classes` = '" . $classesHash{$type} . "', ";
            $query .= "`icon` = '" . $iconsHash{$type}[$n] . "', ";
            $query .= "`material` = '$material', ";
            $query .= "`hp` = '" . $hpa[rand @hpa] . "', ";
            $query .= "`mana` = '" . $hpa[rand @hpa] . "', ";
            $query .= "`endur` = '" . $hpa[rand @hpa] . "', ";
            $query .= "`regen` = '" . int($hpa[rand @hpa] / 10) . "', ";
            $query .= "`manaregen` = '" . int($hpa[rand @hpa] / 10) . "', ";
            $query .= "`enduranceregen` = '" . int($hpa[rand @hpa] / 10) . "', ";
            $query .= "`ac` = '" . $aca[rand @aca] . "', ";
            $query .= "`attack` = '" . $aca[rand @aca] . "', ";
            $query .= "`aagi` = '" . $stata[rand @stata] . "', ";
            $query .= "`acha` = '" . $stata[rand @stata] . "', ";
            $query .= "`adex` = '" . $stata[rand @stata] . "', ";
            $query .= "`aint` = '" . $stata[rand @stata] . "', ";
            $query .= "`asta` = '" . $stata[rand @stata] . "', ";
            $query .= "`astr` = '" . $stata[rand @stata] . "', ";
            $query .= "`awis` = '" . $stata[rand @stata] . "', ";
            $query .= "`cr` = '" . $stata[rand @stata] . "', ";
            $query .= "`dr` = '" . $stata[rand @stata] . "', ";
            $query .= "`fr` = '" . $stata[rand @stata] . "', ";
            $query .= "`mr` = '" . $stata[rand @stata] . "', ";
            $query .= "`pr` = '" . $stata[rand @stata] . "', ";
            $query .= "`svcorruption` = '" . $stata[rand @stata] . "', ";
            $query .= "`heroic_agi` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_cha` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_dex` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_int` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_sta` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_str` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_wis` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_cr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_dr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_fr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_mr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_pr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_svcorrup` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`spellshield` = '" . $csa[rand @csa] . "', ";
            $query .= "`strikethrough` = '" . $csa[rand @csa] . "', ";
            $query .= "`stunresist` = '" . $csa[rand @csa] . "', ";
            $query .= "`clairvoyance` = '" . $csa[rand @csa] . "', ";
            $query .= "`dsmitigation` = '" . $csa[rand @csa] . "', ";
            $query .= "`healamt` = '" . $sha[rand @sha] . "', ";
            $query .= "`spelldmg` = '" . $sha[rand @sha] . "', ";
            $query .= "`itemtype` = '10', ";
            $query .= "`nodrop` = '0', ";
            $query .= "`races` = '65535', ";
            $query .= "`idfile` = 'IT63', ";
            $query .= "`augslot1visible` = '1', ";
            $query .= "`augslot2visible` = '1', ";
            $query .= "`augslot3visible` = '1', ";
            $query .= "`augslot4visible` = '1', ";
            $query .= "`augslot5visible` = '1', ";
            $query .= "`magic` = '1', ";
            $query .= "`norent` = '1', ";
            $query .= "`stacksize` = '1', ";
            $query .= "`clickeffect` = '-1', ";
            $query .= "`proceffect` = '-1', ";
            $query .= "`worneffect` = '-1', ";
            $query .= "`scrolleffect` = '-1', ";
            $query .= "`maxcharges` = '-1', ";
            $query .= "`unk132` = '-1';";
            say $file $query;
            $query = "";
            $id++;
            $n++;
            $slot++;
        }
        $n = 0;
        $slot = 0;
    }
    CreateA($name, $id, $minhp, $maxhp, $minac, $maxac, $mins, $maxs, $minhs, $maxhs, $mincs, $maxcs, $minsh, $maxsh);
    close $file;
    return;
}

sub CreateA {
    my ($name, $id, $minhp, $maxhp, $minac, $maxac, $mins, $maxs, $minhs, $maxhs, $mincs, $maxcs, $minsh, $maxsh) = (shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift, shift);
    open my $file, ">>$name Accessories.sql";
    my $n = 0;
    my $slot = 0;
    my %typeHash = (1 => ["Visor", "Ear Ring", "Necklace", "Pauldrons", "Cloak", "Ring", "Girdle"],
    2 => ["Mask", "Hoop", "Choker", "Covers", "Cape", "Band", "Belt"]);
    my @slotArray = (8, 18, 32, 64, 256, 98304, 1048576);
    my %classesHash = (1 => 33245, 2 => 32290);
    my %iconsHash = (1 => [506, 535, 848, 626, 663, 615, 503],
    2 => [528, 757, 505, 664, 658, 616, 719]);
    
    my @hpa = (($minhp > 0) ? ($minhp..$maxhp) : (0));
    my @aca = (($minac > 0) ? ($minac..$maxac) : (0));
    my @stata = (($mins > 0) ? ($mins..$maxs) : (0));
    my @hsa = (($minhs > 0) ? ($minhs..$maxhs) : (0));
    my @csa = (($mincs > 0) ? ($mincs..$maxcs) : (0));
    my @sha = (($minsh > 0) ? ($minsh..$maxsh) : (0));
    
    foreach my $type (sort {$a <=> $b} keys %typeHash) {
        foreach my $item (@{$typeHash{$type}}) {
            print "ID: $id Name: $name $item\n";
            my $query = "INSERT INTO `items` SET `id` = '$id', ";
            $query .= "`name` = '$name $item', ";
            $query .= "`slots` = '" . $slotArray[$slot] . "', ";
            $query .= "`classes` = '" . $classesHash{$type} . "', ";
            $query .= "`icon` = '" . $iconsHash{$type}[$n] . "', ";
            $query .= "`hp` = '" . $hpa[rand @hpa] . "', ";
            $query .= "`mana` = '" . $hpa[rand @hpa] . "', ";
            $query .= "`endur` = '" . $hpa[rand @hpa] . "', ";
            $query .= "`regen` = '" . int($hpa[rand @hpa] / 10) . "', ";
            $query .= "`manaregen` = '" . int($hpa[rand @hpa] / 10) . "', ";
            $query .= "`enduranceregen` = '" . int($hpa[rand @hpa] / 10) . "', ";
            $query .= "`ac` = '" . $aca[rand @aca] . "', ";
            $query .= "`attack` = '" . $aca[rand @aca] . "', ";
            $query .= "`aagi` = '" . $stata[rand @stata] . "', ";
            $query .= "`acha` = '" . $stata[rand @stata] . "', ";
            $query .= "`adex` = '" . $stata[rand @stata] . "', ";
            $query .= "`aint` = '" . $stata[rand @stata] . "', ";
            $query .= "`asta` = '" . $stata[rand @stata] . "', ";
            $query .= "`astr` = '" . $stata[rand @stata] . "', ";
            $query .= "`awis` = '" . $stata[rand @stata] . "', ";
            $query .= "`cr` = '" . $stata[rand @stata] . "', ";
            $query .= "`dr` = '" . $stata[rand @stata] . "', ";
            $query .= "`fr` = '" . $stata[rand @stata] . "', ";
            $query .= "`mr` = '" . $stata[rand @stata] . "', ";
            $query .= "`pr` = '" . $stata[rand @stata] . "', ";
            $query .= "`svcorruption` = '" . $stata[rand @stata] . "', ";
            $query .= "`heroic_agi` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_cha` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_dex` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_int` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_sta` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_str` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_wis` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_cr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_dr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_fr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_mr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_pr` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`heroic_svcorrup` = '" . $hsa[rand @hsa] . "', ";
            $query .= "`spellshield` = '" . $csa[rand @csa] . "', ";
            $query .= "`strikethrough` = '" . $csa[rand @csa] . "', ";
            $query .= "`stunresist` = '" . $csa[rand @csa] . "', ";
            $query .= "`dsmitigation` = '" . $csa[rand @csa] . "', ";
            $query .= "`clairvoyance` = '" . $csa[rand @csa] . "', ";
            $query .= "`healamt` = '" . $sha[rand @sha] . "', ";
            $query .= "`spelldmg` = '" . $sha[rand @sha] . "', ";
            $query .= "`itemtype` = '10', ";
            $query .= "`nodrop` = '0', ";
            $query .= "`races` = '65535', ";
            $query .= "`idfile` = 'IT63', ";
            $query .= "`augslot1visible` = '1', ";
            $query .= "`augslot2visible` = '1', ";
            $query .= "`augslot3visible` = '1', ";
            $query .= "`augslot4visible` = '1', ";
            $query .= "`augslot5visible` = '1', ";
            $query .= "`magic` = '1', ";
            $query .= "`material` = '0', ";
            $query .= "`norent` = '1', ";
            $query .= "`stacksize` = '1', ";
            $query .= "`clickeffect` = '-1', ";
            $query .= "`proceffect` = '-1', ";
            $query .= "`worneffect` = '-1', ";
            $query .= "`scrolleffect` = '-1', ";
            $query .= "`maxcharges` = '-1', ";
            $query .= "`unk132` = '-1';";
            say $file $query;
            $id++;
            $n++;
            $slot++;
        }
        $n = 0;
        $slot = 0;
    }
    print "Done!";
    close $file;
    return;
}
print "Hello, what would you like the name in front of your items to be?\n";
my $name = <STDIN>;
print "Okay, what would you like the starting ID to be?\n";
my $id = int(<STDIN>);
print "What would you like to set the health range on the items to?\n";
my @hp = split(/ /, <STDIN>);
print "What would you like to set the armor class range on the items to?\n";
my @ac = split(/ /, <STDIN>);
print "What would you like to set the stat range on the items to?\n";
my @s = split(/ /, <STDIN>);
print "What would you like to set the heroic stat range on the items to?\n";
my @hs = split(/ /, <STDIN>);
print "What would you like to set the combat stats range on the items to?\n";
my @cs = split(/ /, <STDIN>);
print "What would you like to set the heal amount and spell damage range on the items to?\n";
my @sh = split(/ /, <STDIN>);
print "Okay, thank you!\n";
CreateI($name, $id, $hp[0], $hp[1], $ac[0], $ac[1], $s[0], $s[1], $hs[0], $hs[1], $cs[0], $cs[1], $sh[0], $sh[1]);









////////////////////////////////////////////////////////////////////////////////////



Kingly_Krab


use strict;
use warnings;
sub CreateI {
    my ($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt) = (shift, shift, shift, shift, shift, shift, shift, shift);
    my $material;
    chomp $name;
    $name =~ s/\'/\\'/ig;
    open my $file, ">>$name Armor.sql";
    my $n = 0;
    my $slot = 0;
    my %typeHash = (1 => ["Hood", "Robe", "Wristlet", "Covers", "Pantaloons", "Slippers", "Gloves"],
    2 => ["Visor", "Chain Body", "Bracelet", "Shoulderpads", "Greaves", "Boots", "Gauntlets"],
    3 => ["Helmet", "Breastplate", "Bracer", "Vambraces", "Greaves", "Boots", "Gauntlets"],
    4 => ["Cap", "Cheststraps", "Wristband", "Armbands", "Pants", "Shoes", "Gloves"]);
    my @slotArray = (4, 131072, 1536, 128, 262144, 524288, 4096);        
    my @materialArray = (10, 11, 12, 13, 14, 15, 16);
    my %classesHash = (1 => 15360, 2 => 33544, 3 => 151, 4 => 16480);
    my %iconsHash = (1 => [639, 838, 638, 670, 631, 525, 517],
    2 => [625, 538, 620, 543, 630, 545, 526],
    3 => [628, 624, 516, 622, 540, 524, 531],
    4 => [640, 632, 637, 634, 635, 633, 636]);
    foreach my $type (sort {$a <=> $b} keys %typeHash) {
        foreach my $item (@{$typeHash{$type}}) {
            $material = (($type == 1 && $item eq "Robe") ? $materialArray[rand @materialArray] : $type);
            print "ID: $id Name: $name $item Type: $item\n";
            my $query = "INSERT INTO `items` SET `id` = '$id', ";
            $query .= "`name` = '$name $item', ";
            $query .= "`slots` = '" . $slotArray[$slot] . "', ";
            $query .= "`classes` = '" . $classesHash{$type} . "', ";
            $query .= "`icon` = '" . $iconsHash{$type}[$n] . "', ";
            $query .= "`material` = '$material', ";
            $query .= "`hp` = '$health', ";
            $query .= "`mana` = '$health', ";
            $query .= "`endur` = '$health', ";
            $query .= "`regen` = '" . int($health / 10) . "', ";
            $query .= "`manaregen` = '" . int($health / 10) . "', ";
            $query .= "`enduranceregen` = '" . int($health / 10) . "', ";
            $query .= "`ac` = '$ac', ";
            $query .= "`attack` = '$ac', ";
            $query .= "`aagi` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`acha` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`adex` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`aint` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`asta` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`astr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`awis` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`cr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`dr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`fr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`mr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`pr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`svcorruption` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`heroic_agi` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_cha` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dex` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_int` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_sta` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_str` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_wis` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_cr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_fr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_mr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_pr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_svcorrup` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`spellshield` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`strikethrough` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`stunresist` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`clairvoyance` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`dsmitigation` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`healamt` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`spelldmg` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`itemtype` = '10', ";
            $query .= "`nodrop` = '0', ";
            $query .= "`races` = '65535', ";
            $query .= "`idfile` = 'IT63', ";
            $query .= "`augslot1visible` = '1', ";
            $query .= "`augslot2visible` = '1', ";
            $query .= "`augslot3visible` = '1', ";
            $query .= "`augslot4visible` = '1', ";
            $query .= "`augslot5visible` = '1', ";
            $query .= "`magic` = '1', ";
            $query .= "`norent` = '1', ";
            $query .= "`stacksize` = '1', ";
            $query .= "`clickeffect` = '-1', ";
            $query .= "`proceffect` = '-1', ";
            $query .= "`worneffect` = '-1', ";
            $query .= "`scrolleffect` = '-1', ";
            $query .= "`maxcharges` = '-1', ";
            $query .= "`unk132` = '-1';\n";
            print $file $query;
            $query = "";
            $id++;
            $n++;
            $slot++;
        }
        $n = 0;
        $slot = 0;
    }
    CreateA($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt);
    close $file;
    return;
}

sub CreateA {
    my ($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt) = (shift, shift, shift, shift, shift, shift, shift, shift);
    open my $file, ">>$name Accessories.sql";
    my $n = 0;
    my $slot = 0;
    my %typeHash = (1 => ["Visor", "Ear Ring", "Necklace", "Pauldrons", "Cloak", "Ring", "Girdle"],
    2 => ["Mask", "Hoop", "Choker", "Covers", "Cape", "Band", "Belt"]);
    my @slotArray = (8, 18, 32, 64, 256, 98304, 1048576);
    my %classesHash = (1 => 33245, 2 => 32290);
    my %iconsHash = (1 => [506, 535, 848, 626, 663, 615, 503],
    2 => [528, 757, 505, 664, 658, 616, 719]);
    foreach my $type (sort {$a <=> $b} keys %typeHash) {
        foreach my $item (@{$typeHash{$type}}) {
            print "ID: $id Name: $name $item\n";
            my $query = "INSERT INTO `items` SET `id` = '$id', ";
            $query .= "`name` = '$name $item', ";
            $query .= "`slots` = '" . $slotArray[$slot] . "', ";
            $query .= "`classes` = '" . $classesHash{$type} . "', ";
            $query .= "`icon` = '" . $iconsHash{$type}[$n] . "', ";
            $query .= "`hp` = '$health', ";
            $query .= "`mana` = '$health', ";
            $query .= "`endur` = '$health', ";
            $query .= "`regen` = '" . int($health / 10) . "', ";
            $query .= "`manaregen` = '" . int($health / 10) . "', ";
            $query .= "`enduranceregen` = '" . int($health / 10) . "', ";
            $query .= "`ac` = '$ac', ";
            $query .= "`attack` = '$ac', ";
            $query .= "`aagi` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`acha` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`adex` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`aint` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`asta` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`astr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`awis` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`cr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`dr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`fr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`mr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`pr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`svcorruption` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`heroic_agi` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_cha` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dex` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_int` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_sta` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_str` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_wis` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_cr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_fr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_mr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_pr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_svcorrup` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`spellshield` = '" . (($combat_stats > 127)? 127 : $combat_stats) . "', ";
            $query .= "`strikethrough` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`stunresist` = '" .  (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`dsmitigation` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`clairvoyance` = '" . ($combat_stats > 127 ? 127 : $combat_stats) . "', ";
            $query .= "`healamt` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`spelldmg` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`itemtype` = '10', ";
            $query .= "`nodrop` = '0', ";
            $query .= "`races` = '65535', ";
            $query .= "`idfile` = 'IT63', ";
            $query .= "`augslot1visible` = '1', ";
            $query .= "`augslot2visible` = '1', ";
            $query .= "`augslot3visible` = '1', ";
            $query .= "`augslot4visible` = '1', ";
            $query .= "`augslot5visible` = '1', ";
            $query .= "`magic` = '1', ";
            $query .= "`material` = '0', ";
            $query .= "`norent` = '1', ";
            $query .= "`stacksize` = '1', ";
            $query .= "`clickeffect` = '-1', ";
            $query .= "`proceffect` = '-1', ";
            $query .= "`worneffect` = '-1', ";
            $query .= "`scrolleffect` = '-1', ";
            $query .= "`maxcharges` = '-1', ";
            $query .= "`unk132` = '-1';\n";
            print $file $query;
            $id++;
            $n++;
            $slot++;
        }
        $n = 0;
        $slot = 0;
    }
    print "Done! ";
    close $file;
    return;
}
print "Hello, what would you like the name in front of your items to be?\n";
my $name = <STDIN>;
print "Okay, what would you like the starting ID to be?\n";
my $id = int(<STDIN>);
print "What would you like to set the health modifier on the items to?\n";
my $health = int(<STDIN>);
print "What would you like to set the armor class on the items to?\n";
my $ac = int(<STDIN>);
print "What would you like to set the stat modifier on the items to?\n";
my $stats = int(<STDIN>);
print "What would you like to set the heroic stat modifier on the items to?\n";
my $heroic_stats = int(<STDIN>);
print "What would you like to set the combat stats modifier on the items to?\n";
my $combat_stats = int(<STDIN>);
print "What would you like to set the heal amount and spell damage on the items to?\n";
my $healamt = int(<STDIN>);
print "Okay, thank you!\n";
CreateI($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt);

////////////////////////////////////////////////////////////////////////

