sub EVENT_SAY {

my $say_bind = quest::saylink("bind", 1);
my $say_zone = quest::saylink("zone", 1);
my $say_teach = quest::saylink("teachings", 1);

my $say_alchemy = quest::saylink("alchemy", 1);
my $say_smithing = quest::saylink("smithing", 1);
my $say_poison = quest::saylink("poison", 1);
my $say_tinkering = quest::saylink("tinkering", 1);
my $say_research = quest::saylink("research", 1);
my $say_baking = quest::saylink("baking", 1);
my $say_tailoring = quest::saylink("tailoring", 1);
my $say_fletching = quest::saylink("fletching", 1);
my $say_brewing = quest::saylink("brewing", 1);
my $say_jewelry = quest::saylink("jewelry", 1);
my $say_pottery = quest::saylink("pottery", 1);

$myskills = $client->GetSkillPoints()-1;
$maxskills = $ulevel*10;

if($text=~/hail/i){
quest::say("Greetings, $name. Have you come to me for my $say_teach? I can only teach you more of what you started learning from your Guildmaster and only if it does not exceed your level. Make sure to $say_zone after I am done teaching you. Maybe you wish for me to $say_bind you here? If it is knowledge of the many worlds you seek, perhaps you could speak to Sister Gretak in the great library of the Plane of Knowledge. If you are in need of aid for traveling, perhaps Brother Zotav in the Bazaar can help you with gate, binding, or spirit of wolf potions. There is also a dirty barbarian in the Plane of Knowledge named Warduk who is freely casting spells that would make one move faster on their feet. If you need some rare crafting items, maybe Brother Dremel can help. You could probably find him in the Bazaar along with many of our brothers and sisters selling very valuable items.");
}

if($text=~/bind/i){
	quest::say("Binding your soul. You will return here when you die.");
	quest::selfcast(2049);
}

if($text=~/zone/i){
quest::say("Yes, you must leave this zone after learning from me so you will see the results of your lessons. Even your Guildmaster will not recognize your achievements if you do not zone first.");
}

if($text=~/teachings/i){
$pcskills = $client->GetSkillPoints();
quest::say("I can teach you many things with your $pcskills skill points. I can teach you more about $say_alchemy, $say_baking, $say_smithing, $say_brewing, $say_fletching, $say_jewelry making, $say_poison making, $say_pottery, $say_research, $say_tailoring and $say_tinkering.");
}

if($text=~/alchemy/i){
  if ($client->GetRawSkill(59)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(59)>0){
    $skill_from = $client->GetRawSkill(59);
    $client->IncreaseSkill(59);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(59);
    quest::say("I have taught you a little more about alchemy from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about alchemy.");
  }
}

if($text=~/smithing/i){
  if ($client->GetRawSkill(63)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(63)>0){
    $skill_from = $client->GetRawSkill(63);
    $client->IncreaseSkill(63);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(63);
    quest::say("I have taught you a little more about blacksmithing from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about blacksmithing.");
  }
}

if($text=~/poison/i){
  if ($client->GetRawSkill(56)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(56)>0){
    $skill_from = $client->GetRawSkill(56);
    $client->IncreaseSkill(56);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(56);
    quest::say("I have taught you a little more about making poisons from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about making poisons.");
  }
}

if($text=~/tinkering/i){
  if ($client->GetRawSkill(57)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(57)>0){
    $skill_from = $client->GetRawSkill(57);
    $client->IncreaseSkill(57);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(57);
    quest::say("I have taught you a little more about tinkering from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about tinkering.");
  }
}

if($text=~/research/i){
  if ($client->GetRawSkill(58)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(58)>0){
    $skill_from = $client->GetRawSkill(58);
    $client->IncreaseSkill(58);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(58);
    quest::say("I have taught you a little more about research from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about research.");
  }
}

if($text=~/baking/i){
  if ($client->GetRawSkill(60)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(60)>0){
    $skill_from = $client->GetRawSkill(60);
    $client->IncreaseSkill(60);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(60);
    quest::say("I have taught you a little more about baking from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about baking.");
  }
}

if($text=~/tailoring/i){
  if ($client->GetRawSkill(61)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(61)>0){
    $skill_from = $client->GetRawSkill(61);
    $client->IncreaseSkill(61);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(61);
    quest::say("I have taught you a little more about tailoring from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about tailoring.");
  }
}

if($text=~/fletching/i){
  if ($client->GetRawSkill(64)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(64)>0){
    $skill_from = $client->GetRawSkill(64);
    $client->IncreaseSkill(64);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(64);
    quest::say("I have taught you a little more about fletching from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about fletching.");
  }
}

if($text=~/brewing/i){
  if ($client->GetRawSkill(65)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(65)>0){
    $skill_from = $client->GetRawSkill(65);
    $client->IncreaseSkill(65);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(65);
    quest::say("I have taught you a little more about brewing from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about brewing.");
  }
}

if($text=~/jewelry/i){
  if ($client->GetRawSkill(68)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(68)>0){
    $skill_from = $client->GetRawSkill(68);
    $client->IncreaseSkill(68);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(68);
    quest::say("I have taught you a little more about jewelry making from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about jewelry making .");
  }
}

if($text=~/pottery/i){
  if ($client->GetRawSkill(69)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(69)>0){
    $skill_from = $client->GetRawSkill(69);
    $client->IncreaseSkill(69);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(69);
    quest::say("I have taught you a little more about pottery from $skill_from to $skill_this.");
  }
  else {
    quest::say("You are not ready to learn more about pottery.");
  }
}

}