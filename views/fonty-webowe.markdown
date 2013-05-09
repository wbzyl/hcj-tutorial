#### {% title "Fonty Webowe" %}

<blockquote>
 {%= image_tag "/images/font-face.jpg", :alt => "[@font-face]" %}
 <p>„Real sites are made with webfonts.”</p>
</blockquote>


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
  (można użyć gotowych arkuszy LESS)


## YES or NO to Faux Bolding

<blockquote>
 {%= image_tag "/images/faux-bold-yes.png", :alt => "[YES to Faux Bold]" %}
</blockquote>

Zaczynamy od przykładu:

    :::html
    <!doctype html>
    <html lang=pl>
      <head>
        <meta charset=utf-8>
        <title>Say Yes to Faux Bolding</title>
        <link href='http://fonts.googleapis.com/css?family=Diplomata' rel='stylesheet'>
        <style>
          body { font-family: 'Diplomata', serif; }
        </style>
      </head>
      <body>
        <h1>Say Yes to Faux Bolding</h1>
        <p>Browsers can do terrible things to type.
      </body>
    </html>

Fix:

    :::css
    h1, h2, h3 { font-weight: normal; font-family: 'Diplomata', serif; }

<blockquote>
 {%= image_tag "/images/faux-bold-no.png", :alt => "[NO to Faux Bold]" %}
</blockquote>

Ale takie rozwiązanie jest lepsze
(tzw. *duplicating @font-face rules trick*: „tells the browser to use the same
font file (specified with the *src* declaration) for both normal and bold font-weight
when you apply the «DiplomataSCRegular» font-family”):

    :::css
    @font-face {
      font-family: DiplomataSCRegular;
      font-weight: bold;    /* get a bold fallback font when fallback happens */
      font-style:  normal;

      src: url('diplomatasc-regular.eot');
      src: url('diplomatasc-regular.eot') format('embedded-opentype'),
           url('diplomatasc-regular.woff') format('woff'),
           url('diplomatasc-regular.ttf') format('truetype'),
           url('diplomatasc-regular.svg#DiplomataSCRegular') format('svg');
    }
    h1, h2, h3 { font-family: DiplomataSCRegular, serif; }

Powyżej użyto, dla odmiany, fontu *DiplomataSCRegular*.

*Uwaga:* W katalogu *css/faux-bold* są pliki HTML ilustrujące to
zagadnienie.
