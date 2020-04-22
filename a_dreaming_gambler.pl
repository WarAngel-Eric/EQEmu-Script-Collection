#2597 a_dreaming_gambler in poknowledge v.0
#Dream chess
#Author: Salvanna
#Date: 9 Jan 2019

sub EVENT_SPAWN {
	$npc->SetAppearance(3);
	$npc->SetOOCRegen(0);
	quest::settimer("hp", 5);
}

sub EVENT_TIMER {
	if($timer eq "hp") {
		$npc->SetHP($npc->GetMaxHP() * .3);
	}
}

sub EVENT_SAY {
	if($text=~/hail/i && $ulevel < 50) {
		quest::emote("seems unchanged as your presence lacks the prowess to disturb her sleep.");
		$client->Message(315, "You must be level 50+ to participate in this event.");
	}
	if($text=~/hail/i && $ulevel > 49) {
		quest::emote("speaks directly into your thoughts. I am trapped in this unending game of [" . quest::saylink("Vasavadatta") . "]. You may also [" . quest::saylink("disturb her sleep") . "] to destroy any old instances.");
	}
	if($text=~/Vasavadatta/i && $ulevel > 49) {
		quest::emote("speaks directly into your thoughts. I can attempt to pull you and your group of companions into my dream if you [" . quest::saylink("wish") . "].");
	}
	if($text=~/disturb her sleep/i && $ulevel > 49) {
		my $dream = quest::GetInstanceID("mansion", 1);
		$client->Message(315, "a dreaming gambler stirs only slightly as she begins a new dream.");
		quest::RemoveAllFromInstance($dream);
		quest::DestroyInstance($dream);
	}
	if($text=~/wish/i && $ulevel > 49) {
		my $InstId = quest::GetInstanceID("mansion", 1);
		if ($InstId > 0) {
			quest::MovePCInstance(437, $InstId,150,30,117,0);
		}
		elsif ($ulevel > 0) {
			my $i_id = quest::CreateInstance("mansion", 1, 21600);
			quest::AssignGroupToInstance($i_id);
			quest::AssignToInstance($i_id);
			quest::MovePCInstance(437, $i_id,150,30,117,0);
		}
		else {
		}
	}
}

