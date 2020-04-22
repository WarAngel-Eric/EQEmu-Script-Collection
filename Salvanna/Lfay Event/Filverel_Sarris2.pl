#2741 Filverel_Sarris in lfaydark v.0

sub EVENT_SAY {
    my $animals = quest::saylink("animals", 2);
    my $species = quest::saylink("species", 2);
    my $shadow = quest::saylink("shadow", 2);

	if($text=~/hail/i){
		quest::say("Greetings, hunter. What unusual [$animals] have you found?");
	}
	if($text=~/animals/i){
		quest::say("Some non-native [$species] have entered the forest. If you wish to help, bring me one alive. If they won't come peacefully, I suppose a fresh corpse will suffice.");
	}
	if($text=~/species/i){
		quest::say("I'm looking for a black wolf 'lupine', a brown bear 'ursine', a puma 'feline', or an owlbear 'strigine.' I also hear of a strange [$shadow] in the woods.");
	}
	if($text=~/shadow/i){
		quest::say("So you've seen it as well? It appears to be a very ancient grave. I'll continue my studies here. Return to me if you learn more.");
	}
	if($text=~/ancient spells/i){
		quest::say("Interesting. I've seen the same. The images of the beasts each appear with two spells. Which ['amimaline' spells] would you like to hear about?");
	}
	if($text=~/lupine spells/i){
		quest::say("The spells appearing with the wolf imagry are Spirit of Wolf and Boon of the Garou, along with a Tuft of Wolf Fur and Werewolf Talon.");
		quest::say("Collect these four items and place them in the shallow grave.");
	}
	if($text=~/ursine spells/i){
		quest::say("The spells appearing with the bear imagry are Spirit of Bear and Form of the Great Bear, along with a Tough Bear Hide and Brown Bear Femur.");
		quest::say("Collect these four items and place them in the shallow grave.");
	}
	if($text=~/feline spells/i){
		quest::say("The spells appearing with the puma imagry are Feet like Cat and Spirit of the Puma, along with a Puma Claw and Greater Cat Tooth.");
		quest::say("Collect these four items and place them in the shallow grave.");
	}
	if($text=~/strigine spells/i){
		quest::say("The spells appearing with the owlbear imagry are Koadic's Endless Intellect and Eyes of the Owl, along with a Owlbear Spinal Fluid and Owlbear Feathers.");
		quest::say("Collect these four items and place them in the shallow grave.");
	}
	if($text=~/embodiment/i){
		quest::say("Collect these from animal spirits and place them in the shallow grave.");
	}
}

sub EVENT_ITEM {
	if (plugin::check_handin(\%itemcount,9472=>1)) {
		quest::emote("deftly examines the wolf's corpse while muttering about how badly mutalated it is.");
		quest::say("This is what I could recover, perhaps you will find it useful.");
		quest::summonitem(quest::ChooseRandom(13782,13782,13782,13782,9400)); #80% chance of ruined wolf pelt, 20% chance of Tuft of Wolf Fur
	}
	if (plugin::check_handin(\%itemcount,9473=>1)) {
		quest::emote("deftly examines the bear's corpse while muttering about how badly mutalated it is.");
		quest::say("This is what I could recover, perhaps you will find it useful.");
		quest::summonitem(quest::ChooseRandom(13781,13781,13781,13781,9451)); #80% chance of ruined wolf pelt, 20% chance of Tough Bear Hide
	}
	if (plugin::check_handin(\%itemcount,9492=>1)) {
		quest::emote("deftly examines the puma's corpse while muttering about how badly mutalated it is.");
		quest::say("This is what I could recover, perhaps you will find it useful.");
		quest::summonitem(quest::ChooseRandom(13783,13783,13783,13783,9452)); #80% chance of ruined wolf pelt, 20% chance of Puma Claw
	}
	if (plugin::check_handin(\%itemcount,9514=>1)) {
		quest::emote("deftly examines the owlbear's corpse while muttering about how badly mutalated it is.");
		quest::say("This is what I could recover, perhaps you will find it useful.");
		quest::summonitem(quest::ChooseRandom(9516,9516,9516,9516,9453)); #80% chance of ruined wolf pelt, 20% chance of Owlbear Spinal Fluid
	}
	plugin::return_items(\%itemcount);
}

# Elddar Druid encounter in lfaydark (lvl 55 clicky item rewards)
# items to spawn each beast, given to #2736 Above_the_shallow_grave <Moon's Shadow> in lfaydark at end of path
# wolf: Spell: Spirit of Wolf (15278, purchased), Spell: Boon of the Garou (30474, purchased), Tuft of Wolf Fur (9400, turnin reward from drop in lfaydark from a_black_wolf #2727), Werewolf Talon (13746, drop a gypsy or werewolf in mistmoore)
# bear: Spell: Spirit of Bear (15279, purchased), Spell: Form of the Great Bear (30431, purchased), Tough Bear Hide (9451, turnin reward from drop in lfaydark from a_brown_bear #2728), Brown Bear Femur (27393, drop from brown bears in Qeynos Hills or West Karana)
# cat: Spell: Feet like Cat (15269, purchased), Spell: Spirit of the Puma (77866), purchased), Puma Claw (9452, turnin reward from drop in lfaydark from a_puma #2729), Greater Cat Tooth (9917, drop from cats in Antonica zones)
# owl: Spell: Koadic's Endless Intellect (7670, purchased), Spell: Eyes of the Owl (78477, purchased), Owlbear Spinal Fluid (9453, turnin reward from drop in lfaydark from an_owlbear #2730), Owlbear Feathers (3813, drop from owlbears in Hollowshade Moor and Paludal Caverns)
# Lupine: #2731 Lupine Spirit drops Lupine Embodiment (9454)
# Ursine: #2732 Ursine Spirit drops Ursine Embodiment (9455)
# Feline: #2733 Feline Spirit drops Feline Embodiment (9456)
# Strigine: #2734 Strigine Spirit drops Strigine Embodiment (9457)
# turning in all four embodiments spawns the four #2737-2740 (non aggro and untargetable) who walk to the druid's grave, then he spawns as #2735 Moonshadow
# he despawns one animal at a time and becomes that form for that portion of the fight
# bringing each form from 100% HP to various lower percentages causes him to adopt the next form
# once in final werewolf form he despawns after 10 min if not killed
# rewards: 1 of these 4 will drop
# Firetooth Necklace of the Loup-garou (9458) neck, 13 AC, 130 HME, clicky illusion werewolf (increase atk by 129)
# Cape of the Faydark Bear (9459) back, 22 AC, 145/120/120 HME, clicky form of defense I (increase AC by 27)
# Cat-scratched Mythril Ring (9460) finger, 14 AC, 125 HME, clicky primal guard (5% V3 overhaste buff, 5 HP regen)
# Mana-infused Owlbone Earring (9461) earring, 8 AC, 105/155/105 HME, clicky ether skin (absorb 975 dmg, 3 mana regen/tick, recast delay 12 sec)

