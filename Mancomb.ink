VAR Mancomb_available = true
VAR Mancomb_name = "Pirate"
VAR Mancomb_friendly = true

=== talking_with_Mancomb ===
    ~ temp already_said_goodbye = false
    {talking_with_Mancomb: 
    - 1:
        {Mancomb_name} : "Ahoy there, stranger. New in town?"
    - else:
        {Mancomb_name} : "Hey, nice to see you again." 
    }
    - (continue)
    {not already_said_goodbye: 
        {Mancomb_friendly:
            {not Mancomb_talking_about_important_pirates:
                * [Tell your name to the pirate.]
                    You : "My name's Guybrush Threepwood. I'm new in town."
                    {Mancomb_name} : "Guybrush Threepwood? Ha ha ha!!! That's the stupidest name I've ever heard!"
                    -> Telling_your_name_to_Mancomb(already_said_goodbye) -> continue
                * [Ask the pirate to become one of his crew member.]
                    You : "Are you a pirate? Can I be on your crew?"
                    {Mancomb_name} : "Well, I am a pirate. But, alas, I'm not a captain." 
                    -> Mancomb_talking_about_important_pirates(true) -> continue
            }
            * {not Mancomb_talking_about_important_pirates && not Mancomb_talking_about_the_governor} [Ask to see the boss.]
                    You : "Who's in charge here?"
                    {Mancomb_name} : "Well, this island has a governor... but we pirates have our own leaders."
                    ** [Tell that you want to talk to the leaders of the pirates.]
                        You : "I want to talk to the leaders of the pirates."
                        -> Mancomb_talking_about_important_pirates(false) -> continue
                    ** [Ask the pirate where is the Governor of the island.]    
                        You : "Where can I find the Governor of the island?"
                        -> Mancomb_talking_about_the_governor(already_said_goodbye) -> continue
            * {Mancomb_talking_about_important_pirates && not Mancomb_talking_about_the_governor} [Ask where is the governor.]
                    You : "Where can I find the Governor?"
                    -> Mancomb_talking_about_the_governor(already_said_goodbye) -> continue
            * {not Mancomb_talking_about_important_pirates && Mancomb_talking_about_the_governor} [Tell that you want to talk to the leaders of the pirates.]
                    You : "I want to talk to the leaders of the pirates."
                    -> Mancomb_talking_about_important_pirates(false) -> continue                    
        -else:
            * [Ask the pirate his name.]
                You : "So what was your name, anyway?"
                {Mancomb_name} : "My name is Mancomb Seepgood."
                ~ Mancomb_name = "Mancomb"
                -> done
        }
    }
    - (done)        
    {Mancomb_talking_about_important_pirates && Mancomb_talking_about_the_governor || (not Mancomb_friendly && Mancomb_name == "Mancomb"):
        {Mancomb_name} : "Uh-oh, it looks like my grog is going flat, so you'll have to excuse me."
        ~ Mancomb_available = false
    }    
    + {not already_said_goodbye} [Say goodbye.]
        You : "Nice talking to you."
        {Mancomb_name} : "Nice talking to you. Have fun on Mêlée Island."
        ->->
    + 
        {Mancomb_name} : "Nice talking to you. Have fun on Mêlée Island."
        ->->

=== Mancomb_talking_about_important_pirates(to_become_a_pirate) ===
    {Mancomb_name} : "You should go talk to the important-looking pirates in the next room. They're pretty much in charge around here. {to_become_a_pirate: They can tell you where to go and what to do.}"
    - ->->
    
=== Mancomb_asking_what_you_are_doing_here(ref already_said_goodbye) ===
    {Mancomb_name} : "So, what brings you to Mêlée Island anyway?"
    * [Answer that you want to be a pirate.]
        You : "I want to be a pirate!"
        {Mancomb_name} : "Oh, really?" 
        -> Mancomb_talking_about_important_pirates(true) ->->
    * [Answer that you're seeking your fortune.]
        You : "I've come seeking my fortune!"
        {Mancomb_name} : "Oh, you have, have you?" 
        -> Mancomb_talking_about_important_pirates(true) ->->
    * [Answer that you don't know.]
        You : "I really don't know."
        {Mancomb_name} : "Well, it sure wasn't for the sunshine. I think you need some guidance."
        -> Mancomb_talking_about_important_pirates(true) ->->
    * [End this conversation abruptly.]
        You : "None of your business. Goodbye"
        ~ already_said_goodbye = true
        {Mancomb_name} : "Well, excuse me Mr. Secretive."
        ->->
        
=== Telling_your_name_to_Mancomb(ref already_said_goodbye) ===
    * [Tell that you like your name.]
        You : "I don't know... I kind of like 'Guybrush.'"
        {Mancomb_name} : "But it's not even a name!"
        -> Telling_your_name_to_Mancomb(already_said_goodbye) ->->
    * [Ask the pirate his name.]
        You : "Well, what's YOUR name?"
         {Mancomb_name} : "My name is Mancomb Seepgood."
        ~ Mancomb_name = "Mancomb"
        -> Mancomb_asking_what_you_are_doing_here(already_said_goodbye) ->->
    * [Tell that you don't like your name.]
        You : "Yeah, it is pretty dumb, isn't it?"
        {Mancomb_name} : "That's okay. Mine is Mancomb Seepgood."
        ~ Mancomb_name = "Mancomb"
        -> Mancomb_asking_what_you_are_doing_here(already_said_goodbye) ->->
    * [End this conversation being angry.]
        You : "I'm insulted. Goodbye."
        ~ already_said_goodbye = true
        {Mancomb_name} : "Sorry to see you go away mad. Don't be a stranger."
        ~ Mancomb_friendly = false
        ->->

=== Mancomb_talking_about_the_governor(ref already_said_goodbye) ===
    {Mancomb_name} : "Governor Marley? Her mansion is on the other side of town. But pirates aren't as welcome around her place as they used to be."
    * [Ask why the pirates aren't welcome.]
        You : "Why not?"
        {Mancomb_name} : "Well, the last time she had a pirate over for dinner, he fell in love with her. It's made things rather uncomfortable for everybody."
        ** [Ask what happened.]
            You : "How's that?"
            -> Mancomb_talking_about_Estevan ->->
        ** [Ask the name of this pirate.]
            You : "Who is this pirate?"
            {Mancomb_name} : "It was none other than the fearsome pirate LeChuck."
            -> Mancomb_talking_about_Estevan ->->
        ** [End this conversation.]
            You : "That's too bad. Well, see you later."
            ~ already_said_goodbye = true
            ->->
    * [Tell that you go where you want.]
        You : "I'm welcome everywhere I go."
        {Mancomb_name} : "Whatever you say. Just watch out for those guard dogs!"
        ->->
    * [Tell that you'll go to her mansion right now.]
        You : "I think I'll go there right now. Bye."
        ~ already_said_goodbye = true
        {Mancomb_name} : "Okay, but watch out for those guard dogs!"
        ->->
    
=== Mancomb_talking_about_Estevan ===
    {Mancomb_name} : "Well, there's a whole big story about what happened next... But I don't believe a word of it. Estevan over there at the other table might tell you about it. He takes the whole thing seriously. VERY seriously."
    - ->->