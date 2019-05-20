# sh-organize
I often organize the songs inside folders of each artist to listen on the car radio. So I made a little bash to collect and organize many songs listed in a plain text, using routines as youtube-dl and eyeD3
In the plain text is inserted the full song name (containing the name of the artist hyphenated with the title) and his link. I used to collect this info directly from output to youtube-dl, but some uploaders do not follow this pattern.
```
Patti Smith - Whirl Away
https://www.youtube.com/watch?v=EgjLTg4DaYw

Mungo Jerry - Sugar Mama
https://www.youtube.com/watch?v=PQYgvrLGtQ4

Vanusa - What to do
https://www.youtube.com/watch?v=fOnciH5Sy08

Alice Cooper - Yeah, yeah, yeah
https://www.youtube.com/watch?v=YXgPAXvFdqQ
```
The bash script is called through the command line `mp3Get.sh mp3Link mp3Folder`; where the mp3Link is the plain text and the mp3Folder the directory where the songs will be hosted.

I hope it will be useful to someone else as it was for me, and I'm sorry for the possible mistakes (it was my first bash -.-).

## Requirements
1. [youtube-dl](https://github.com/ytdl-org/youtube-dl/)
2. [eyeD3](https://github.com/nicfit/eyed3)
