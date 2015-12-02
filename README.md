# music_now

Open Spotify, iTunes, SoundCloud, and YouTube right from your terminal in 2.4812 seconds.

Usefull for people that spend more time in their terminal than friends and family, listen to music from multiple apps and websites. For people that use flags in their commands becuase writing 'git add', and 'git commit' on seperate lines is a waste of their time.

Type 'music' in your terminal, from any directory, and choose to open the Spotify or iTunes app with (of course) the key shortcuts 's' or 'i'. If you want to find a specific song, artist, album, or instrumental just type it is as if you are searching it on the web ex: "j cole warm up." From there it will search YouTube or SoundCloud for your awesome music.

Quick. Fast. Simple.


REQUIREMENTS

- Must have Ruby installed
- Likely only to work on Mac
- Spotify and iTunes must be installed in the path '~/../../Applications/' and have the file extention '.app' (this can be changed in lines 17/21).


SET UP

1. Save the code localy.

2. Create an alias by entering the code below:
    alias music="ruby ~/< path to file from root directory>/music_now/main.rb"

3. enjoy


TROUBLE SHOOTING
- If your music alias is not running the program, try one of the following:
  1. run #2 in setup again and make sure you have the .rb file extention at the end of the path
  2. make sure the path after '~/' is correct. To see where that path starts from type 'cd ~/' to go to root directoy then 'pwd' to print working directory as a refernce. Run #2 in setup again with the correct path from that directory to the file main.rb.

- If the application cannot find the spotify app, itunes app or claims that directory does not exist, try one of the following:
  1. Change the location of the selected music application to ~/../../Applications/APP_NAME.app
  2. Change the path in lines 17 or 21 in main.rb, to the path where the corisponding music application is located
  3. Give up