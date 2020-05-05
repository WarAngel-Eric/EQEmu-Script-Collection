#zone: tutorialb

sub EVENT_SAY {
  if ($text=~/hail/i && quest::istaskactivityactive(22,0)){
    quest::say("We found the other slaves! Not bad, my friend, not bad. No matter what happens in the mines, you should always be able to find your way back here. If you need to [escape] the mines, just let me know when you want to [leave] and I can have someone take you back to your home city.");
    quest::popup("The Find Command", "It's a big world out there. It helps to know where you are going.
	    <br><br><c \"#FFFF00\">The Find Command:</c><br>You can use the find command to locate other 
		imporant rebellion characters. <br><br><c \"#F07F00\">To open your find menu, press [CTRL+F] or press the Find button 
		on your hotbuttons bar.  Then click Absor's name under 'Weapons'.  A glowing pathway will appear 
		and lead you to that NPC.</c>");    	
	quest::updatetaskactivity(22,0); 
}
  elsif ($text=~/hail/i && quest::istaskactivityactive(22,6)){
    quest::say("Well done, my friend. Take this kobold skull charm. You are now ready to join ranks with the slaves and fight against the Gloomingdeep kobolds. Speak with Guard Rahtiz for your next assignment.");
    quest::updatetaskactivity(22,6); 
}
  elsif ($text=~/hail/i){
    quest::say("We found the other slaves! Not bad, my friend, not bad. No matter what happens in the mines, you should always be able to find your way back here. If you need to [escape] the mines, just let me know when you want to [leave] and I can have someone take you back to your home city.");
}
  if ($text=~/leave/i || $text=~/escape/i) {
    quest::say("My friend will show you how to get out. Come and help us again!");
	my $dbh = plugin::LoadMysql();
	
	$nth = $dbh->prepare("SELECT class, race, deity FROM character_data WHERE name='$name'");
	$nth->execute();
	@row = $nth->fetchrow_array();
	my $n_class = $row[0];
	my $n_race = $row[1];
	my $n_deity = $row[2];
	
	$sth = $dbh->prepare("SELECT zone_id, x, y, z, heading FROM start_zones WHERE player_class=$n_class AND player_deity=$n_deity AND player_race=$n_race");
	$sth->execute();
	@row = $sth->fetchrow_array();
	my $zn_id = $row[0];
	my $zn_x = $row[1];
	my $zn_y = $row[2];
	my $zn_z = $row[3];
	my $zn_head = $row[4];
	
	$dbh->disconnect();
	quest::movepc($zn_id, $zn_x, $zn_y, $zn_z, $zn_head);
 }
}