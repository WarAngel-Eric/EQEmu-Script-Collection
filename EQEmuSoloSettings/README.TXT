This was setup with database version 9152.

This entire package changes an Everquest server to be more solo-friendly. It is meant for servers with very low populations, or servers you play in 
single player mode.

This does quite a few different things. It will scale monsters back to a level where you can fight them alone, meaning the ones where a group is meant 
to combat them. Due to this, you should not need any bots to play here. This should then allow you to play a race and class unique to its abilities and 
not have the cookie-cutter group doing the same tactics. Monsters should not readily help their comrades, and they will have a smaller radius of noticing 
you. This lets you fight monsters one at a time and avoid getting ganged up on. The spawn times have been increased for those that spawned quickly. This 
lets you clear out dungeons easier since you will be in the area alone. NOTE: These affect creatures level 20 or over, as this is where the balance shifts 
toward more group oriented battles.

The Bazaar will also be filled with merchants with tons of wares and unique items. It gives you a place to spend your mountains of gold later on. This is to 
help you acquire items that better aid playing alone, and also give the Bazaar some life. There will also be spell merchants there that sell unusual spells 
that are really hard to get. This should exclude things like research spells and spells you get from monsters.

If you use all of the included features, then the starting cities will not have any Plane of Knowledge books. This is to bring back the classic mode of play 
where you had to begin in your starting city, and travel far across the land to get to other locations. The other books will remain, but in places where you 
would get to them at a much higher level.

Within the Plane of Knowledge are 2 unique NPCs. One is a barbarian that will freely cast Spirit of Wolf on folks. The other is a witch that will teleport you 
to almost any zone you want to go. This is another reason that the Plane of Knowledge should not be discovered until a character has adventured for awhile. 

The Priests of Discord are replaced with teachers that will help you spend your skill points on skills you may have learned from your 
guildmaster. This was added to fix a flaw in the skill distribution system, so although that may be fixed, these teachers are here just in case.

Each city will have a sorceress that you can ask for spells you may buy for your level. They will try and tell you who in the world sells that spell and 
where they are located. Each of the search results will have a link so you can better inspect the items searched. She can also tell you what class gets 
what spells at certain levels. While viewing this list, you can also see the details of it and where you can go buy it. You may ask about what spells you 
get for a certain level. Tell her the level you are wondering about and she will tell you all of the spells you can get and where you can buy them from.

There are some rule settings for item and experience loss on death, along with drop and lore flags being removed. Many items have their prices set or set to a 
lower amount. This is because of the quests added to the system and because the Bazaar sells some of these items and there was no price set for them originally. 
Quest rewards would make a character rich very quickly, so these prices were greatly lowered at times. Mounts have had their prices reduced, so one can 
purchase them without needing a small fortune. The mana and health regenerate faster while resting, so you can get back into the action.

Brother Dremel is in the Bazaar, and he will trade rare items used in crafting, for various items that the witches give for quest rewards. So if you need a 
rare ingredient, Dremel may have it. He would tell you the exact item he wants in trade and which of the witches gives that item as a reward. This is to help 
solo characters actually craft items, without needing a high population of players to make the ingredients for you. There is a new table loaded for this NPC 
called _item_search, which is included in the SQL file.

There is also artisans in all of the cities. They have the same items as Brother Dremel, except he will accept payment for such items. There is a new 
table loaded for this NPC called _craft_merchant, which is included in the SQL file.

There is also arcanum merchants in all of the cities. They have a bunch of expensive adventuring gear and items but they will only show you items that your
class, race, and level can use. They don't use the standard merchant system because they can have over 1,000 items to show you.

The included global_npc.pl script will have your monsters potentially drop a random item(s) based on their level.

The last part, and probably the biggest part, is the quest system included with this. There are about 447 tasks that are available. Each starting city will have 
a Witch of the Velvet Order nearby. They will give quests to adventurers, and these quests have some purpose/goal in the area the witch is in. So each witch will have 
unique tasks for each starting city area. They are far enough away from guards, so hostile races can get quests from them as well without having the local 
guards kill them. The Plane of Knowledge has such a witch as well, and she will give higher level quests that can be anywhere in the world. These quests give no 
experience points, but they do have various rewards that could help an adventurer. The witch will be clear on the task you need to do, along with the choice of 
items you can get if you finish the task. Since it uses the newer task system, your progress will be tracked for you. The witches give you plenty to do and you 
can do these tasks as many times as you want. Each one indicates a recommended level as well.

When you have a server successfully running, then shut down the EQ server and then follow the directions below. When you are done, start it up and enjoy!

1. Only do this if you want to make the Plane of Knowledge only accessible to those that travel far from cities.
   Copy the below files into your quests\tutorialb directory, overwriting the files in it.
   The books will vanish from starting cities if you use the included SQL file, but the ones further away will remain
   so you can enter the Plane of Knowledge later on. This is meant to give that classic feel when you started your
   adventure in your homeland. These 2 files will cause those that leave Gloomingdeep to go to their starting city instead of the Plane of Knowledge.
   See the solo_knowledge.sql file for more details.
	#Arias.pl
	player.pl

2. Copy the other *.pl files (not including the 2 noted above in #1) into your quests\global directory.

3. Source the following SQL file into your database.
	solo_server.sql