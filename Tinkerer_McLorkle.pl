#############
#Quest Name: Luclin Weapon Turn-ins
#Author: Salvanna
#NPC's Involved: Tinkerer McLorkle
#Items Involved: 4-slot box (5974), unforged weapon (6280), captured moonlight (6456), weapons per classes, beer, empty mug
#hilt (5825), rod (5824), wrappings (5832), scales (5969)
#############

sub EVENT_SAY
{
 if ($text =~/Hail/i)
 {
quest::say ("Hello, $name.  My drinking buddy [Dooglesworth] told me all about you at our last drinking sess..., er, business meeting.");
 }
 if ($text =~/Dooglesworth/i)
 {
quest::emote("glances at you sideways.");
quest::say ("You look like the enterprising sort that Dooglesworth would be hanging out with.  What if I told you I could forge for you an interesting [weapon] of unimaginable worth.");
 }
 if ($text =~/weapon/i)
 {
quest::say ("Yes yes!  Would you be interested in going to the moon?  Mind you, it could be [dangerous].");
 }
 if ($text =~/dangerous/i)
 {
quest::say ("Indeed.  Of course, anything truly worth having is worth taking risks.  In my travels to Luclin, I have discovered many [strange items] which may seem useless, but I believe could be combined into an extraordinary tool.");
 }
 if ($text =~/strange items/i)
 {
quest::say ("I am looking for a broken Luclin weapon hilt found on the site of an old ruins, a sparkling metal rod found in the house of madness, and some mummy cloth and sheddings from the native reptilians in the ancient temple.  Here is a container to place these items in.  Return the unforged weapon to me.");
quest::summonitem(5974); #4-slot no-trade box when combined with the four items inside grants unforged weapon 6035.
 }
 if ($text =~/beer/i)
 {
quest::say ("I certainly will not refuse a [good brew] from a fine $race such as yourself, this skin of ale is nearly empty.  Let's see what you have there.");
 }
 if ($text =~/good brew/i)
 {
quest::say ("Old Man McKenzie makes the best ale, youngster!");
 }
 if ($text =~/moonlight/i)
 {
quest::say ("Strange we call it that, since it does not come from Luclin, but Ro instead. The inhabitants of dawn bathe in it. Return some with your new lunar weapon and I shall expose it to the light.");
 }
}

my %weapon = ("Warrior" => 6035, "Rogue" => 6035, "Monk" => 6035, "Berserker" => 6035, "Shadowknight" => 6035, "Paladin" => 6035, "Ranger" => 6035, "Bard" => 6035, "Beastlord" => 6035, "Cleric" => 6035, "Druid" => 6035, "Shaman" => 6035, "Wizard" => 6035, "Magician" => 6035, "Enchanter" => 6035, "Necromancer" => 6035);
my %weapon2 = ("Warrior" => 6040, "Rogue" => 6043, "Monk" => 6044, "Berserker" => 6045, "Shadowknight" => 6047, "Paladin" => 6049, "Ranger" => 6050, "Bard" => 6051, "Beastlord" => 6052, "Cleric" => 5997, "Druid" => 6054, "Shaman" => 6055, "Wizard" => 6057, "Magician" => 6058, "Enchanter" => 6059, "Necromancer" => 6060);

sub EVENT_ITEM {
if ($class eq 'Warrior' || $class eq 'Rogue' || $class eq 'Monk' || $class eq 'Berserker' || $class eq 'Shadowknight' || $class eq 'Paladin' || $class eq 'Ranger' || $class eq 'Bard' || $class eq 'Beastlord' || $class eq 'Cleric' || $class eq 'Druid' || $class eq 'Shaman' || $class eq 'Wizard' || $class eq 'Magician' || $class eq 'Enchanter' || $class eq 'Necromancer') {
######## Luclin Weapon ########
  if(defined($weapon{$class})) {
    if (plugin::check_handin(\%itemcount, ($weapon{$class}) => 1)) {
      my %rewards = (
      "Warrior" => 6040, "Rogue" => 6043, "Monk" => 6044, "Berserker" => 6045, "Shadowknight" => 6047, "Paladin" => 6049, "Ranger" => 6050, "Bard" => 6051, "Beastlord" => 6052, "Cleric" => 5997, "Druid" => 6054, "Shaman" => 6055, "Wizard" => 6057, "Magician" => 6058, "Enchanter" => 6059, "Necromancer" => 6060
      );
        if(defined($rewards{$class})) {
          quest::emote("places the lunar metal in the forge." );
          quest::say("Ahh, $name, here you go!  That deserves a [beer]... ...for me, that is.");
          quest::exp(100);
		  quest::ding();
          quest::summonitem($rewards{$class});
        }
      }
	}
  if(defined($weapon2{$class})) {
    if (plugin::check_handin(\%itemcount, ($weapon2{$class}) => 1, 6456 => 1)) { #turnin first weapon reward and Captured Moonlight
      my %rewards2 = (
      "Warrior" => 6431, "Rogue" => 6432, "Monk" => 6435, "Berserker" => 6442, "Shadowknight" => 6443, "Paladin" => 6446, "Ranger" => 6447, "Bard" => 6448, "Beastlord" => 6449, "Cleric" => 6450, "Druid" => 6451, "Shaman" => 6452, "Wizard" => 6458, "Magician" => 6453, "Enchanter" => 6454, "Necromancer" => 6455
      );
        if(defined($rewards2{$class})) {
          quest::emote("expertly exposes the lunar metal to the intense light in the container." );
          quest::say("Ahh, $name, here you go!  That deserves a [beer]... ...for me, that is.");
          quest::exp(100);
		  quest::ding();
          quest::summonitem($rewards2{$class});
        }
      }
	}
}
  if(plugin::check_handin(\%itemcount, 3542 => 1)) {
    quest::emote("takes the mug and rapidly drinks the entire contents, splashing beer and foam over your armor!" );
    quest::say("Hiccup!  Now that's fine Dwarven beer!  ...and quite strong.");
    quest::emote("stumbles as he hands you the empty mug.");
    quest::say("If you run across any more of that, think of your friend McLorkle!  Hiccup!");
    quest::say("I heard a rumor about making lunar weapons more powerful... ...I was drinking with Dooglesworth at the time.  However, the stranger we met mentioned something about bathing in [moonlight].");
    quest::exp(100);
    quest::summonitem(8754);
  }
  else  {
		plugin::return_items(\%itemcount);
  }
}

