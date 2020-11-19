sim = Category.create(name: "Simulation", priority: 1)
action = Category.create(name: "Action", priority: 2)
sports = Category.create(name: "Sports", priority: 3)
rpg = Category.create(name: "RPG", priority: 4)
admin = User.create(name: "admin", email: "admin@gmail.com")
user = User.create(name: "user", email: "user@gmail.com")

sim.articles.create(author: admin, title: "MICROSOFT FLIGHT SIMULATOR 2020", text: "Microsoft Flight Simulator (often abbreviated as MSFS or FS) is a series of amateur flight simulator programs for Microsoft Windows operating systems, and earlier for MS-DOS and Classic Mac OS. It is one of the longest-running, best-known, and most comprehensive home flight simulator programs on the market.")

rpg.articles.create(author: admin, title: "NEVERWINTER", text: "Across the main campaign, dungeons, and raids you’ll get to embark on some truly memorable adventuring, whether that’s finding a disgruntled demon somewhere to rest where they won’t be disturbed by doomguides, or taking part in a 12-part campaign to defeat Baphomet. Pretty much any key location you’ve heard of in the Forgotten Realms, from Ravenloft to Chult, and all content in Neverwinter, old and new, is free, just be ready for a grind when it comes to some items.")

sim.articles.create(author: admin, title: "HARD TRUCK 2", text: "As truck games go, Hard Truck 2 tries to tick all of the boxes. There’s plenty of management and sim elements when it comes to managing your jobs, running cargo, and hiring an ever-growing workforce, but there’s also a lot of racing and aggressive driving – think of it as Euro Truck Simulator 2 meets GTA 5.")

rpg.articles.create(author: admin, title: " THE WITCHER 3: WILD HUNT
", text: "Every quest is an opportunity to not just learn more about the war-ravaged lands and the gamut of its inhabitants, but to also be drawn into the knotty drama. A simple contract, such as directing series protagonist Geralt to slaughter a monster (there are many such quests, and for the first time it actually feels like we’re getting to see Geralt doing his actual job), can transform into an elaborate series of consequence-laden stories that span several hours, closing and opening doors as it hurtles towards a satisfying conclusion.")



action.articles.create(author: user, title: " Mortal Kombat X
", text: " Its exotic gaming mode includes 3v3 KOMBAT, Multi-Player Fraction Wars, and Weekly challenges, that hold you to this game, for a pretty long period. You can enjoy this game with your team as it offers you a multiplayer battleground.")


action.articles.create(author: user, title: " Batman: Arkham Knight
", text: " Batman has traveled from movies, comics to games, and has managed to rule the market for decades. Be a part of it and enter into an action-packed adventurous journey to unveil the hidden perks of this game.
Batman: Arkham Knight gaming mode includes Single-player, Challenge, and Online leadership board. So, get along with it and begin your gaming journey on various platforms that include PlayStation 4, Xbox One, and PC.
")

sports.articles.create(author: user, title: "Football Manager 2020", text: " SEGA's Football Manager series is an enigma to many outside observers, but its seemingly niche appeal has grown into a borderline obsession for a large, passionate fan base. This soccer simulation is an insanely detailed, text-heavy simulation of the world's most popular sport, wherein you take on the role of club manager overseeing player transfers, on-field tactics, staff instructions, and everything in between in a bid to lead your club to glory.")

sports.articles.create(author: user, title: "Mutant Football League", text: " Mutant Football League literally plays by that rule set by pitting skeletons, robots, orcs, aliens, and mutated humans against each other in not-so-friendly gridiron contests featuring landmines and cheat plays. Mutant Football League is definitely worth playing, and not because it's the rare American football PC game that isn't Madden NFL; it's legitimately good, despite some annoying dirty trick plays.")

Vote.create(user: user, article: Article.first)

