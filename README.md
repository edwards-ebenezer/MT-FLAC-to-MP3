# MT-FLAC-to-MP3

Multithreaded FLAC to MP3 trancoding bash script

# Requirememnts:
  flac
  
  lame
  
  parallel
  
  time
  
  
You can install the prerequisite packages with the following command.

    sudo apt-get install flac lame parallel time

Download the scrip with wget and make sure you have the proper permission bits set.

    wget transcode https://raw.githubusercontent.com/edwards-ebenezer/MT-FLAC-to-MP3/master/transcode
    sudo chmod 755 transcode
  
Move scripts into your /usr/local/bin/ directory.

    sudo mv transcode /usr/local/bin/
  
# Proper Use:
Now you are free to navigate to any folder containing FLAC files you wish to convert to mp3.
To preform a multi-threaded transcode simply navigate into the desired Dir and run the following command.

    transcode
  
Upon execution the user will be prompted for a SOURCE (i.e. Where the FLAC came from). 
![alt tag](https://user-images.githubusercontent.com/20598737/30212927-e700977a-9474-11e7-9061-67e4946ddbb2.png)

# Further Explaination:
Upon execution the script will find all the flac files in the current directory and pass them to the parallel package which will use as manny threads as your CPU has to then decode the files with the flac package. Then after each thread is done decoding, it's file will be passed into the lame package which will encode them into both mp3-V0 & mp3-320 (to further explain the script will finish decoding and encoding all the files into mp3-V0 first before starting the process for mp3-320). At first these new mp3 files will be generated inside /tmp/ Upon completion of encoding the MP3 files will then be moved into the current working directory contained inside of a folder that matches the following naming convention.

    ARTIST - ALBUM - YEAR [SOURCE - MP3 - BITRATE]
    
This script fully utilizes all available cores on the host machine; evidence of such can be seen below.
![alt tag](https://user-images.githubusercontent.com/20598737/30219088-fc3f9fc8-9488-11e7-932b-42ca2a320824.png)

# Sources
  O. Tange (2011): GNU Parallel - The Command-Line Power Tool,
  ;login: The USENIX Magazine, February 2011:42-47.
  
  Support this guy; his project is awesome!!
  https://github.com/martinda/gnu-parallel
