#### {% title "Fonty Webowe" %}

**„Real sites are made with webfonts”**

* [Fonts](http://www.fonts.com/) – po zalogowaniu
  przejrzeć kilka klasycznych rodzin fontów;
  sprawdzić, które zawierają polskie diakrytyki.
* Użyć jakiegoś fontu z *fonts.com* na stronie www swojego
  repozytorium na *github.io*.<br>
  JTZ: kliknąć w zakładkę *WEB Fonts* i dalej
  *Create a New Web Font Project*.

Kilka fontów pobranych z [Google Fonts](http://www.google.com/fonts/):

* [Diplomata, Diplomata SC](https://dl.dropboxusercontent.com/u/634385/diplomata-fonts.zip)
* [AbrilFace, Oregano](https://dl.dropboxusercontent.com/u/634385/web-fonts.zip)

Przerobić przykład z tej strony:

* Alan Stearns. [Say No to Faux Bold](http://www.alistapart.com/articles/say-no-to-faux-bold/).

Mozilla Developer Network:

* [@font-face](https://developer.mozilla.org/pl/docs/CSS/@font-face)

[Can I use *@font-face*](http://caniuse.com/#search=@font-face)?

* [FontSquirrel @font-face generator](http://www.fontsquirrel.com/tools/webfont-generator)
* [Convert Fonts @font-face generator](http://convertfonts.com/)

Fonty z ikonkami:

* [Font Awesome](http://fortawesome.github.com/Font-Awesome/) –
  the iconic font designed for use with Twitter Bootstrap
* [Elusive–Icons Webfont](http://shoestrap.org/downloads/elusive-icons-webfont/)
  (użyć gotowych arkuszy LESS)


## Say No to Faux Bold

Zaczynamy od przykładu:

    :::html
    <!doctype html>
    <html lang=pl>
      <head>
        <meta charset=utf-8>
        <title>Say Yes to Faux Bold</title>
        <link href='http://fonts.googleapis.com/css?family=Diplomata' rel='stylesheet'>
        <style>
          body { font-family: 'Diplomata', serif; }
        </style>
      </head>
      <body>
        <h1>Say Yes to Faux Bold</h1>
        <p>Browsers can do terrible things to type.
      </body>
    </html>

Fix:

    h1, h2, h3 { font-weight: normal; font-family: 'Diplomata', serif; }

Ale takie rozwiązanie jest lepsze:

    :::css
    @font-face {
      font-family: DiplomataSCRegular;
      font-style:  normal; /* normal weights can also be used for bold */
      font-weight: bold;   /* get a bold fallback font when fallback happens */

      src: url('diplomatasc-regular.eot');
      src: url('diplomatasc-regular.eot') format('embedded-opentype'),
           url('diplomatasc-regular.woff') format('woff'),
           url('diplomatasc-regular.ttf') format('truetype'),
           url('diplomatasc-regular.svg#DiplomataSCRegular') format('svg');
    }
    body { font-family: DiplomataSCRegular, serif; }

Powyżej użyto, dla odmiany, fontu *DiplomataSCRegular*.


*Uwaga:* Użyte powyżej pliki są w katalogu *css/faux-bold*.
