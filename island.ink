INCLUDE Mancomb.ink
/*
    https://gamefaqs.gamespot.com/pc/562681-the-secret-of-monkey-island/faqs/23891
    https://www.gamesradar.com/cheats/18136/
    https://www.retrogames.cz/play_492-DOS.php?language=EN
*/


-> lookout_point_start

=== lookout_point_start === 
    You're standing at the Lookout Point - an overlook located on top of the highest point of Mêlée Island.
    An old man is watching the sea...
    
    * [Talk to the old man] 
        You say to the old man: "Hi! My name's Guybrush Threepwood, and I want to be a pirate!"
    - Old man : "Yikes! Don't sneak up on me like that!"
    You : "Er... I'm over this way."
    Old man : "Ah! Well, then, Triftweed--"
    You : "THREEPWOOD. Guybrush THREEPWOOD."
    Old man : "I see. So, you want to be a pirate, eh? You look more like a flooring inspector. But if you're serious about pirating, go talk to the pirate leaders. You'll find them in the Scumm Bar near the dock."
    You : "Gosh, thanks! I'll do that! Bye, now. I'm off to seek my fortune."
    Old man : "Good luck."
    
    You walk away, but suddenly stops.
    You : "Um... Where did you say those pirate leaders were?"
    Old man : "The SCUMM BAR."
    * [Thank the old man]
        You : "Right. Thanks."
    
    - From this overlook, you can see the whole island and its surrounding. Three paths start from where you are.
    The first goes down the cliff, to the dock next to the village.
    The second passes near a deep forest and a clearing, after that it seems to finish at another little island.
    And the last one goes first through a bridge, then an ever-glowing area and terminates at a house standing on the other side of the island.
    
    + [Go to the dock.]
        You go to the dock.
        -> dock
    + [Go to the village.]
        You go to the village.
    + [Go to the deep forest.]
        You go to the deep forest.
    + [Go to the clearing.]
        You go to the clearing.
    + [Go to the little island.]
        You go to the little island.
    + [Go to the bridge.]
        You go to the bridge.
    + [Go to the ever-glowing area.]
        You go to the ever-glowing area.
    + [Go to the house on the other side of the island.]
        You go to the house on the other side of the island.

=== dock ===
    The dock is strangely empty: no boat.
    From here, you can see the Lookout Point and the nearby village.
    You hear some noise coming from a building. 'SCUMM BAR' is written above the door.
    + [Go to the Lookout Point.]
        You go to the Lookout Point.
        -> lookout_point
    + [Go into the 'SCUMM BAR'.]
        You enter into the 'SCUMM BAR'.
        -> scumm_bar
    + [Go to the village.]
        You go to the village.
    
=== scumm_bar ===

= front_room
    You're in the front room of the bar. It's full of pirates drinking and talking loud. 
    {Mancomb_name=="Mancomb": <> Nearby the door, you see the pirate named Mancomb. {not Mancomb_available: <> He's drinking his grog and looks like he doesn't want to talk.}}
    There's a large curtain at the opposite of the room. A cook comes sometimes from behind this curtain. And you can see that there's another room behind.
    - (choices)
    + [Go back to the dock.]
        You go out of the 'SCUMM BAR'.
        -> dock
    + [Go through the curtain.]
        You pass the curtain.
        -> rear_room
    + {Mancomb_available} [Talk to {Mancomb_name=="Mancomb": Mancomb|the pirate nearby the door}.]
        -> talking_with_Mancomb -> choices
    
= rear_room
    You are in the rear room of the 'SCUMM BAR'. Three important looking pirates seat at a table.
    A cook comes times to times from the door of the kichen. He walks through the place, his hands full of foods and goes to the front room. When he comes back, his hands are empty and he goes directly to the kitchen.
    + [Go back to the front room.]
        You go to the front room of the 'SCUMM BAR'.
        -> front_room
    + [Go to the kitchen.]
        You go to the kitchen.
        -> kitchen
    
= kitchen
    You are in the kitchen of the 'SCUMM BAR'.
    There's another door that goes to the outside.
    + [Go back to the rear room.]
        You go to the rear room of the 'SCUMM BAR'.
        -> rear_room
    + [Go to the outside.]
        You go to the outside of the kitchen.
        -> outside
    
= outside
    You are outside, just next to the kitchen of the 'SCUMM BAR'.
    You're in front of the sea. This is a dead end. 
    The cook should use this place to throw out the wastes.
    + [Go back to the kitchen.]
        You go to the kitchen of the 'SCUMM BAR'.
        -> kitchen


    
=== lookout_point ===
    You're at the overlook located on top of the highest point of Mêlée Island.
    The old man is still watching the sea.