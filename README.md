# MT-FLAC-to-MP3

Multithreaded FLAC to MP3 trancoding bash script

# Requirememnts:
  flac
  
  lame
  
  parallel
  
  time
  
  
You can install the prerequisite packages with the following command.

    sudo apt-get install flac lame parallel time

Make sure you have the proper permission bits set.

    sudo chmod 755 transcode flac2mp3V.sh flac2mp320.sh
  
Move STtranscode.sh into your /usr/local/bin/ directory.

    sudo mv STtranscode.sh flac2mp3V.sh flac2mp320.sh /usr/local/bin/
  
# Proper Use:
Now you are free to navigate to any folder containing FLAC files you wish to convert to mp3.
To preform a multi-threaded transcode simply navigate into the desired Dir and run the following command.

    transcode
  
The user will be prompted for data that will be used to generate a propper directory for the files to be stored in. 
This should be pretty self explainitory but in case you were wondering "Source" is the media type (CD, WEB, VINYL..etc)

# Further Explaination:
Upon execution the script will find all the flac files in the current directory and pass them to the parallel package which will use as manny threads as your CPU has to then decode the files with the flac package. Then after each thread is done decoding, it's file will be passed into the lame package which will encode them into both mp3-V0 and/or mp3-320 (to further explain the script will finish decoding and encoding all the files to mp3-V0 first before starting the process for mp3-320). At first these new mp3's will be generating inside the current directory; upon completion of encoding they will then be moved to a user designated location inside of a folder that matches the following naming convention

    ARTIST - ALBUM - YEAR [SOURCE - MP3 - BITRATE]
