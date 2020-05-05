sub EVENT_ENTERZONE 
{

	quest::movepc(189,18, -147, 19.6, 0);

	if(!defined $qglobals{tutbind} && $ulevel == 1) 
	{
		quest::selfcast(2049);
		quest::setglobal("tutbind",1,1,"D30");
	}
	
	if(!defined $qglobals{tutpop}) 
	{
		quest::popup("Join the revolution!", "Welcome to the Revolt! You have been given two new quests:
			<br><br><c \"#FFFF00\">Rally with Rahtiz:</c><br>If you are ready to begin fighting for the revolt, 
			hail Guard Rahtiz and see where you are needed.<br><br><c \"#FFFF00\">Basic Training:</c><br>If you 
			would like more training on the finer points of Everquest, speak with Arias and he will direct you to other knowledgeable 
			members of the slave revolt.<br><br><c \"#F07F00\">Click 'OK' to continue.</c>");
			quest::assigntask(22);
			quest::assigntask(23);
			quest::setglobal("tutpop",1,1,"D30");
	}
	
	if($ulevel > 15 && $status < 80)
	{
		$client->Message(15,"You are too high in level to be in this zone.");

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

sub EVENT_TASK_STAGE_COMPLETE 
{
	if ($task_id == 34)
	{
		quest::ze(15, "A cheer arises from the slaves as the last of the Kobold overseers fall.");
	}
  if ($task_id == 28 && $activity_id == 1) {
    $client->Message(0,"Vahlara bows as you return. 'Just in time. Many are wounded and more arrive by the hour. If you can find any Gloomingdeep silk, bring it to me and I can reward you with more burlap clothing. It's not much, but it's nicer than the rags these kobolds left us with.'");
  }
} 

sub EVENT_CLICKDOOR {

	if( $doorid == 11 )
	{
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