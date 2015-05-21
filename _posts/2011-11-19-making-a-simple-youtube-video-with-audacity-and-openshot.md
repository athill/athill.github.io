---
title: Making a Simple YouTube Video with Audacity and OpenShot
author: andy
layout: post
permalink: /2011/11/19/making-a-simple-youtube-video-with-audacity-and-openshot/
categories:
  - Audio-video
  - Linux
tags:
  - audacity
  - audio-video
  - linux
  - open source
  - openshot
  - youtube
---
I have often wanted to extract a good clip from an audio file and publish it on YouTube. I finally got around to doing it and it was easier than I had imagined (once I figured it out). All I&#8217;m doing here is creating a video with a still picture and audio.

  1. I&#8217;m using <a href="http://fedoraproject.org/" target="_blank">Fedora Linux</a>. I had <a href="http://audacity.sourceforge.net/" target="_blank">Audacity</a>(audio editor) installed, but it did not have MP3 (which was the type of my audio file) support. Thankfully, there was an easy fix: 
      1. $ sudo yum remove audacity
      2. $ sudo yum install audacity-freeworld
      3. Thanks to <a href="http://insidesocal.com/click/2010/08/audacity-in-fedora-cant-import.html" target="_blank">http://insidesocal.com/click/2010/08/audacity-in-fedora-cant-import.html</a>
  2. My .mp3 file was almost two hours long. I wanted about three minutes of it. I opened the .mp3 file and found the location of the clip and then did the following: 
      1. Clicked on the wave pattern about where I wanted the clip to start
      2. Shift-clicked on the wave pattern about where I wanted it to end
      3. Hit the space bar to play/pause the clip.
      4. When paused, edit the start and end points by Shift+left-arrow/right-arrow to expand the selection and Control+Shift+left-arrow/right-arrow to contract. Click on the timeline above the wave pattern to start at that point (when tweaking the end of the selection).
      5. When you&#8217;re happy with your selection, go to Edit->Trim
      6. Move the selection to the start of the timeline by going to Tracks->Align Tracks->Align to Zero
      7. Go to File->Export &#8230; , select .mp3 as the format. and hit Save.
      8. <a href="http://manual.audacityteam.org/man/Tutorial_-_Editing_an_Existing_File" target="_blank">More thorough instructions from the Audacity team</a>
  3. Now open <a href="http://www.openshot.org/" target="_blank">OpenShot</a>. 
      1. Right-click in the top right panel and choose &#8220;Import Files&#8221; to add the .mp3 clip and an image.
      2. Drag the audio into Track 2.
      3. Drag the image into Track 1.
      4. Right-click on the audio in Track 2 and choose &#8220;Properties&#8221;, so to the &#8220;Length&#8221; tab and copy the value for &#8220;Out&#8221;.
      5. Follow the same steps for the image in Track 1, but paste in the value you copied from the audio
      6. Got to File->Export Video &#8230;
      7. Give it a name and select where to export it
      8. For Profile, select Web
      9. For Target, select YouTube
     10. Click &#8220;Export Video&#8221;
     11. <a href="http://www.openshotusers.com/help/1.3/en/" target="_blank">Instructions with screenshots</a>

Congratulations, you&#8217;re ready to upload your video to YouTube!