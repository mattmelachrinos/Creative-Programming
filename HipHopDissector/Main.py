from Tkinter import *

root = Tk()

var = StringVar()
text = Text(root)

scrollbar = Scrollbar(root)
scrollbar.pack( side = RIGHT, fill=Y )
text.insert(INSERT, '''[Intro]
Yeah, uh, uh
Turn the music up in the headphones
Watch me get gone
Yeah, yeah, yeah, yeah

[Verse 1]
Amerikkkan Idol, one hand on my bible, one hand on my rifle
I'm aimin' at my rival, sure to leave him dead on arrival
They say it's all about survival, never lackin' the vitals
So I came to kill the game and still gave it revival
I'm coming for the title, man it's best you throw in the towel
Last nigga who tried to vio, now facin' a trial
I'ma be here for a while, gettin' richie like Lionel
Now she all up in denial 'cause she gettin' the dial
While I'm only gettin' better, so she back on my D now
I wanna be down but she denounced
I got my shot, then made her, bounce
Now you tryna rebound, I'm livin' in the now
While the future figure me out
Told mommy pick a place, yo, and we out
'Cause Bed Stuy a little unsafe for me now
That's why I keep the .40 loaded with no safety around
Never thought I'd have to hold it, I'm just holdin' it down
Protect my neck and my crown, patrol throughout the town
And they judgin' just 'cause my skin color is brown
And for that, they wanna leave me dead in the ground
And have the nerve to blame it all on my background
Sorry white Amerikkka, but I'm about to black out
Got a message for the world and I won't back out
So turn the kid raps loud, I'm about to spazz out
Watch out, another nigga runnin' in the White House
But I won't stop 'til this whole shit painted in all black
And we on top, 'cause my people been paining before crack
Media's got this whole thing tainted, that's all fact
Feedin' you lies like this whole thing wasn't built on our backs
Assimilate our history then made it a mystery
Now they all inherit the bittersweet victory
Look at what they did to me, can I get a witness please?
Justice never served, reparations never sent to me
It's clear who the enemy, they declare war on the end of me
Assassinate my character, buryin' my entity
But they can't kill my energy, so when it's said and done
They forever gon' remember me
The fuck is you tellin' me?
Fuck is you tellin' me?
Way more than a celebrity
And fuck white supremacy, huh

[Chorus]
I'm out for dead presidents to represent me
Dead fuckin' presidents to represent me
I'm out for dead presidents to represent me
Because I've never known a live one that represent me
Well, dead presidents to represent me
I'm out for dead presidents to represent me
Dead fuckin' presidents to represent me
Because I've never known a live one that represent me

[Refrain]
It's no contest, can't fuck with the congress
Me and my niggas goin' off like bomb threats
It's no contest, can't fuck with the congress
Me and my niggas goin' off like bomb threats
Me and my niggas goin' off like bomb threats
Me and my niggas goin' off like bomb threats
Me and my niggas goin' off like bomb threats
Me and my niggas goin' off

[Verse 2]
This that Bada$$-assination
Topic of conversation, my proclamation to the nation and its congregation
Been makin' observations like it's my occupation
Debatin' speculation like it ain't just second nature
Thou shall love thy neighbor, don't let that nigga hate you
'Cause he know where you lay up, when it's karma, time to pay up
Climb the ladder of success, I'm steady on my way though
Devisin' plans while you sleepin' I'm just tryna stay woke

[Bridge]
You leave me no choice, I'm about to bring noise
Got to fill this void, I got to be the voice
Yeah yeah yeah
I said leave me no choice, about to bring noise
Got to fill this void, I got to be the voice

[Verse 3]
What the government is doin' amongst our people is downright evil
Disturbin', but not surprisin', that's for certain
With all of the conflict of propaganda, I believe they are simply tryna slander
Start a Civil War within the USA amongst black and white and those alike
They are simply pushin' us to our limit so that we can all get together and get with it
They want us to rebel, so that it makes easier for them to kill us and put us in jails
Alton Sterlings are happenin' every day in this country and around the world
The scary part, boys and girls
Is most of these stories don't make it to the news and reach mass consciousness
It is for sure time that we as a people stand up for acknowledgement
And accomplishment of what we call human rights
It is time to rebel, better yet, raise hell
I just want everyone to be cautious about how they go about it
Because this is all part of the government's plan and what they been plottin'
They're literally beggin' for this to happen, so they can kill us off
Usin' uprisin' and rebellion as the excuse in a timely fashion
The cancerous foods, the chemical warfare, economic sufferin' is not workin' fast enough
There are many steps ahead of us and manifestin' the future that they want
We have to work together, not only rattlin' them on a physical plane
But to outsmart them on an intellectual mental level the same
As black men, I think our gangs need to do a better job at protectin' us
The people, our communities and not assistin' in destroyin' them brutally
It's time to even the score
'Cause who do we call when the police break the law?
We are so quick to pick up a gun and kill one another
But not quick enough to pick it up and protect each other
The code words to killin' a black man by police is, "He's got a gun"
Damned if he do, damned if he don't, damned if he runs
Or what about them? Them murderers got it
We need solutions, you better start plottin' now
It's always been clear that they don't value our lives
My people been sufferin' way too long
And I'm tired of singin' the same old song
People actin' like this shit isn't happenin', it's downright wrong
Justice won't be served by a hashtag, and that's the very reason I ask that
What are we to do? We're scattered around
With no clue of this ugly truth
All we know is who they ridiculed and who gets minisculed
Time to wake the fuck up and do our own research
And not form opinions based on just what we've heard
Ameri-K-K-K-a is force feedin' you lies down your throats with a silver spoon
And eventually, we'll all be doomed
Real, real, real soon''')
scrollbar.set(text.yscrollcommand)

root.mainloop()
