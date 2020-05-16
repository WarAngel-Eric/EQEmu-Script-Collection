sub EVENT_SAY {
   if ($text=~/hail/i) {
      if ($faction <= 7) {
         quest::say("G'day, I am looking for a few conscripts to help in the [effort] of taking down the warbands of Havoc.");
      }
      else {
         quest::say("You're going to need to prove yourself more before we have a discussion.");
      }
   }
   elsif ($text=~/effort/i) {
      if ($faction <= 4) {
         quest::say("G'Day, conscript, Can you go and find some pure copper ingots from the havoc warbands in the common lands. I will reward you with some coin in return, once you have defeated enough, I will have a new [assignment]");
      }
      else {
         quest::say("Yes, there is a large effort from the towns here in Purgatorium to push back the warbands of Havoc, however, you're not quite ready to join in the task.");
      }
   }
   elsif ($text=~/assignment/i) {
      if ($faction <= 2) {
         quest::say("We have had a long standing [feud] with the city of east freeport. This has been going on since the Epoc of Saga's.");
      }
      else {
         quest::say("Once you are a loyal member, we will talk further.");
      }
   }
   elsif ($text=~/feud/i) {
      if ($faction <= 2) {
         quest::say("Yes, they're treacherous, they hail their undying devotion to the god of Glyish, Malakar. Vile they are, always scheming, looting, and pillaging settlements. They have the access to the barrow sea, that is where they gain their wealth. I have a task for you, it is of [importance]");
      }
      else {
         quest::say("Once you are a loyal member, we will talk further.");
      }
   }
   elsif ($text=~/importance/i) {
      if ($faction <= 2) {
         quest::say("In order to prevent them from gaining enough strength to take out our free city, we must keep down their ranks. I want you to bring me their militia helms, once we have enough of their ranks removed, we maybe able to take down their [dread pirate] captains.");
      }
      else {
         quest::say("Once you are a loyal member, we will talk further.");
      }
   }
   elsif ($text=~/dread pirate/i) {
      if ($faction <= 1) {
         quest::say("I am talking about their Captain Dygran. He is in the port authority, he is the one who sends out their raiding parties. He has the maps to all of the Barrow Sea, and maybe the map of the pathways to Glyish. If we can get a hold of that map, we can send in raiding parties to their realms! There also is [another]");
      }
      else {
         quest::say("Once you have slain enough of their ranks we will talk further.");
      }
   }
   elsif ($text=~/Another/i) {
      if ($faction <= 1) {
         quest::say("Jindoharn, The duke of Glyish and Brigadier General of their armies. He is stationed here to make my life miserable, we have to fend off attacks because of him. If you bring me his head, I will give a great sword that represents our great free city of west freeport!");
      }
      else {
         quest::say("Once you have slain enough of their ranks we will talk further.");
      }
   }
}

sub EVENT_ITEM { 
  if ($faction <= 4) {
    if (plugin::check_handin(\%itemcount, 33788 => 1)){
      quest::faction(520,-50);
      quest::faction(521,100);
      quest::faction(523,15);
      quest::givecash(1,26,0,0);
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
  }
}