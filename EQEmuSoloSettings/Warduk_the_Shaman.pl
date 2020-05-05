sub EVENT_SAY {

my $say_wolf = quest::saylink("Spirit of Wolf", 1);

if($text=~/hail/i)
{
    quest::say("Hail, $name. If you must travel a great distance, I can surely cast $say_wolf on you before you go. It will let you travel much faster on foot.");
}

if($text=~/Spirit of Wolf/i)
{
        quest::say("Travel safe, $name.");
        $npc->CastSpell(278,$userid);
}
}
