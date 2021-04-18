# mp3inCar
I often organize the songs into respectively directories to listen in the car (old radio, as you note).
I'm just lazy enough to write a little code in bash to download and organize many songs described in a plain text using libraries as the fabulous 'youtube-dl' and 'eyeD3'.

In the plain text you've to insert the label (e.g., artists name and title) in the line above their link. I used to save even this info directly from output to youtube-dl, but YouTube uploaders do not follow any pattern to name it.

```
# for example, do some like this in plain text:

Patti Smith - Whirl Away
https://www.youtube.com/watch?v=EgjLTg4DaYw

Mungo Jerry - Sugar Mama
https://www.youtube.com/watch?v=PQYgvrLGtQ4

Vanusa - What to do
https://www.youtube.com/watch?v=fOnciH5Sy08

Alice Cooper - Yeah, yeah, yeah
https://www.youtube.com/watch?v=YXgPAXvFdqQ

# and so on
```

The bash script runs through the command line `$ mp3Get.sh mp3Links dirToSave`; whereas 'mp3Links' refers to plain text file and the 'dirToSave' the directory whose the songs will be saved. It was useful to me, but may be for someone else too. 

## Requirements
1. [youtube-dl](https://github.com/ytdl-org/youtube-dl/)
2. [eyeD3](https://github.com/nicfit/eyed3)
