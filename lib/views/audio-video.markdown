#### {% title "Audio & wideo" %}

Zaczynamy od lektury:

* [Native Audio in the browser](http://html5doctor.com/native-audio-in-the-browser/)
* [Video on the Web](http://diveintohtml5.org/video.html)
* [audio.js](http://kolber.github.com/audiojs/) –
  a drop-in javascript library that allows HTML5’s
  *audio* tag to be used anywhere

Jak to działa w Firefoksie?

* [Using audio and video in Firefox](https://developer.mozilla.org/En/Using_audio_and_video_in_Firefox)


## Audio

Konwersja z MP3 na OGG:

    mpg123 input.mp3 -w - | oggenc -o output.ogg -

Oczywiście wcześniej instalujemy oba programy
*mpg123* (z pakietu *mpg321*)
i *oggenc* (z pakietu *vorbis-tools*).

Po konwersji sprawdzamy jakość konwersji:

    mpg123 input.mp3
    ogg123 output.ogg


## Video

Konwersja pliku w formacie Apple QuickTime movie
(*.MOV*) do formatu Theora (*.OGV*):

    ffmpeg2theora in.mov --starttime from --endtime to -o out.ogv

gdzie czasy *from*, *to* podajemy w sekundach.

Warto też zainstalować jakiś program do edycji wideo,
na przykład:

* [Avidemux](http://avidemux.sourceforge.net/)
* [Cinelerra](http://www.heroinewarrior.com/cinelerra.php)
