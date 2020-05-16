############################
#:: Usage :			This script is to be renamed for the Boss NPC's database name.
#:: Description :		Used to spawn in minions to help a Boss NPC.
############################
	#my $HPThreshold;

sub EVENT_SPAWN
{
	quest::setnexthpevent(98); #setting up the first stage of a threshold.
    my $HPThreshold = 0; #Another extra form of control.

	$npc->TempName("I_have_a_new_name"); #Local set name, does not affect the database name.

}

sub EVENT_HP
{
	quest::debug("Spawn minions start");

    if ($hpevent == 98) {
        if ($HPThreshold == 0)
		{
            $HPThreshold = 1;
			quest::debug("Start of 98 HP EVENT");
			quest::shout("I will destroy you!");
			quest::emote("I will destroy you!");
			#quest::spawn2(4010,0,0,-50,-65,1,506); #Works, but you have to go through the pain of figuring out the xyz yourself.
			quest::spawn2(4010,0,0,$x-10,$y,$z,$h); #Spawn2 now spawns at the NPCs loc...works
            quest::setnexthpevent(70); #Ready for next threshold of hp going down. Different function call if going up...
        }
    }
    elsif ($hpevent == 70) {
        if ($HPThreshold == 1) {
            $HPThreshold = 2;
			quest::debug("Start of 70 HP EVENT");
			quest::spawn2(4010,0,0,$x,$y-10,$z,$h);
            quest::setnexthpevent(60);
        }
    }
	elsif ($hpevent == 60) {
        if ($HPThreshold == 2) {
			quest::debug("Start of 60 HP EVENT");
			quest::spawn2(4010,0,0,$x,$y,$z+10,$h);

        }
    }
}
