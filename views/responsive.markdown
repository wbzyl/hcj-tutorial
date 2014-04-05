#### {% title "Responsive Web Design" %}

<blockquote>
 {%= image_tag "/images/chickenthoreau.jpg", :alt => "[Chicken & Thoreau]" %}
 <p>Well established hierarchies are not easily uprooted;
  Closely held beliefs are not easily released;
  So ritual enthralls generation after generation.
 </p>
 <p class="author">Tao Te Ching; 38 Ritual</p>
</blockquote>


Słowa „responsive” użył po raz pierwszy Ethan Marcotte w artykule
[Responsive Web Design](http://www.alistapart.com/articles/responsive-web-design)/
opublikowanym na [A List Apart](http://www.alistapart.com/).
Składniki „responsive design”:

1. A flexible, grid-based layout.
2. Flexible images and media.
3. Media queries, a module from the CSS3 specification.

Lektura:

* Brad Frost.
  [Creating a Mobile-First Responsive Web Design](http://www.html5rocks.com/en/mobile/responsivedesign/)
* John Allsopp.
  [A Dao of Web Design](http://www.alistapart.com/articles/dao/)
* Mark Otto.
  [Building Twitter Bootstrap](http://www.alistapart.com/articles/building-twitter-bootstrap/)
* Ethan Marcotte.
  [Fluid Images](http://www.alistapart.com/articles/fluid-images/)
* Mat Marquis.
  [Responsive Images: How they Almost Worked and What We Need](http://www.alistapart.com/articles/responsive-images-how-they-almost-worked-and-what-we-need/)
* Ben Frain.
  [Responsive Web Design with HTML5 and CSS3](http://www.packtpub.com/responsive-web-design-with-html-5-and-css3/book)
* [Foundation](http://foundation.zurb.com/) – the most advanced responsive front-end framework in the world:
  - Jonathan Smiley.
  [Dive into Responsive Prototyping with Foundation](http://www.alistapart.com/articles/dive-into-responsive-prototyping-with-foundation/)
  - [A New Take on Responsive Tables](http://www.zurb.com/article/982/a-new-take-on-responsive-tables):
  Responsive Tables with CSS/JS [Playground](http://zurb.com/playground/responsive-tables)


Użyteczne rzeczy:

* Matt Kersley.
  [Responsive Web Design Testing Tool](http://mattkersley.com/responsive/)
* Dodatki:
  [Firesizer](https://addons.mozilla.org/en-US/firefox/addon/firesizer/) (*Firefox*),
  [Windows Resizer](https://chrome.google.com/webstore/detail/kkelicaakdanhinjdeammmilcgefonfh) (*Chrome*)
* [A quick and simple image placeholder service](http://placehold.it)
* Tiffany B. Brown.
  [Modern Debugging Tips and Tricks](http://www.alistapart.com/articles/modern-debugging-tips-and-tricks/)
* Ben Frain.
  [Website Design: Easily display the viewport size of your page…](http://benfrain.com/easily-display-the-viewport-size-of-your-page-for-responsive-designs/)
* [Download the Android SDK](http://developer.android.com/sdk/index.html)
* [HTML5 outliner](http://gsnedders.html5.org/outliner/)
* [em calculator](http://riddle.pl/emcalc/)

Wtyczki jQuery:

* [jQuery Masonry](http://masonry.desandro.com/) –
  a dynamic layout plugin for jQuery
* [Isotope](http://isotope.metafizzy.co/) – an exquisite jQuery plugin for magical layouts
  ([github](https://github.com/desandro/isotope))


Responsive Web pages, przykłady:

* [Bootstrap, from Twitter](http://twitter.github.com/bootstrap/) –
  simple and flexible HTML, CSS, and Javascript for popular user interface components and interactions
* [Think Vitamin](http://thinkvitamin.com/) –
  a blog for web designers and developers
* [dConstruct 2012](http://2012.dconstruct.org/) –
  a gathering of smart and entertaining people poking at the intersection of technology and culture
* [Robot or Not?](http://responsivewebdesign.com/robot/)
* [Responsive Data Table Roundup](http://css-tricks.com/responsive-data-table-roundup/);
  zob. też [Responsive Tables](http://www.zurb.com/playground/responsive-tables)


{%= image_tag "/images/this-is-the-web.jpg", :alt => "[This is the Web]" %}
<p>[<a href="http://bradfrostweb.com/blog/web/mobile-first-responsive-web-design/">Źródło</a>]</p>

*Uwaga:* W kodzie poniżej usunięto wszystkie odległości pionowe.
Dlaczego? Ponieważ w „responsive design” istotne są tylko „szerokości”.


## Fixed layout

Zaczynamy od XHTML prostego szablonu:

* {%= link_to "xhtml-template.html", "doc/responsive/xhtml-template.html" %}
  ({%= link_to "źródło", "responsive/xhtml-template.html" %})

Ta strona na „małych urządzeniach” jest nieczytelna
ponieważ strona ta jest *auto resized*.

Po zablokowaniu *auto resizing* strona wyświetla się tak:

* {%= link_to "xhtml-no-auto-resize.html", "doc/responsive/xhtml-no-auto-resize.html" %}
  ({%= link_to "źródło", "responsive/xhtml-no-auto-resize.html" %})

Jak blokujemy automatyczne przeskalowywanie? Tak:

    :::html
    <meta name="viewport" content="initial-scale=1.0,width=device-width" />

albo zmieniamy wartość współczynnika *initial-scale*, na przykład:

    :::html
    <meta name="viewport" content="initial-scale=0.5,width=device-width" />
    <meta name="viewport" content="initial-scale=2.0,width=device-width" />

Co dają takie zmiany? Jak to zapisać?


## Media queries

* [CSS media queries](https://developer.mozilla.org/en/CSS/Media_queries) – MDN

Jak?

    :::css
    <link rel="stylesheet" media="screen" href="screen.css">
    <link rel="stylesheet" media="screen and (orientation: portrait)" href="portrait-screen.css">
    <link rel="stylesheet" media="not screen and (orientation: portrait)" href="portrait-screen.css">
    <link rel="stylesheet" media="screen and (orientation: portrait) and (min-width: 800px)" href="800wide-portrait-screen.css">

Tak?

    :::css
    @media screen and (min-width: 800px) {
      ... CSS ...
    }


## Viewport – widths

css pixels = device pixels:

    :::html
    <meta name="viewport" content="initial-scale=1.0,width=device-width" />

iPad?

    :::css
    @media screen and (max-width: 768px) {
        #wrapper, #header, #footer, #navigation {
            width: 768px;
            margin: 0px;
        }
        #navigation {
            text-align: center;
        }
        #navigation ul li a {
            line-height: 40px;
            font-size: 30px;
        }
        #content, #sidebar {
            padding-right: 10px;
            padding-left: 10px;
            width: 728px;
        }
    }

Zamieniona kolejność elementów *sidebar* i *footer*.

* {%= link_to "xhtml-viewport-widths.html", "doc/responsive/xhtml-viewport-widths.html" %}
  ({%= link_to "źródło", "responsive/xhtml-viewport-widths.html" %})


## Fluid layout

Media gueries nie wystarczają.
Przy zmianach CSS, w **viewport** nie mieści się cała strona
(pojawia się pasek do przesuwania).

Potrzebny jest jakiś mechanizm likwidujący taką „nieciągłość”.

Zastosujemy technikę *fluid* oraz wzór Marcotta
do przeliczania wymiarów na procenty:

    :::text
    target  ÷  context  =  result

W naszym przykładzie kontekst, to najbardziej zewnętrzny *div*:

    :::css
    #wrapper {
        margin-right: auto;
        margin-left: auto;
        width: 960px;
    }

zmieniamy:

    :::css
    #wrapper {
        margin-right: auto;
        margin-left: auto;
        width: 96%; /* albo 100%, albo 90%, albo na cokolwiek sensownego */
    }

Przeliczenia ze wzoru Marcotta:

    :::css
    #header {
        /* margin-right: 10px; */
        /* margin-left: 10px; */
        margin-right: 1.0416667%; /* 10 ÷ 960 */
        margin-left: 1.0416667%; /* 10 ÷ 960 */
        /* width: 940px; */
        width: 97.9166667%; /* 940 ÷ 960 */;
    }
    #navigation {
        /* margin-left: 10px; */
        margin-left: 1.0416667%; /* 10 ÷ 960 */
        /* padding-right: 10px; */
        /* padding-left: 10px; */
        padding-right: 1.0416667%; /* 10 ÷ 960 */
        padding-left: 1.0416667%; /* 10 ÷ 960 */
        width: 97.9166667%; /* 940 ÷ 960 */;
    }
    #navigation ul li {
        display: inline-block;
        margin-right: 2.6595745%; /* 25 ÷ 940 */
    }
    #navigation ul li a {
        /* margin-right: 25px; */
        /* przeniesione do reguły powyżej */
        /* margin-right: 2.6595745%; /\* 25 ÷ 940 *\/ */
    }
    #content {
        /* margin-right: 10px; */
        margin-right: 1.0416667%; /* 10 ÷ 960 */
        /* width: 700px; */
        width: 72.9166667%; /* 700 ÷ 960 */
    }
    #sidebar {
        /* margin-left: 10px; */
        margin-left: 1.0416667%; /* 10 ÷ 960 */
        /* width: 220px; */
        width: 22.9166667%; /* 200 ÷ 960 */
    }
    #footer {
        /* margin-right: 10px; */
        margin-right: 1.0416667%; /* 10 ÷ 960 */
        margin-left: 1.0416667%; /* 10 ÷ 960 */
        /* width: 940px; */
        width: 97.9166667%; /* 940 ÷ 960 */;
    }

Przy przejściu na szerokość mniejszą od 768px korzystamy z media query:

    :::css
    @media screen and (max-width: 768px) {
        #header, #content, #sidebar, #footer {
            width: 100%;
            margin: 0px;
        }
    }

Reszta:

* {%= link_to "xhtml-fluid.html", "doc/responsive/xhtml-fluid.html" %}
  ({%= link_to "źródło", "responsive/xhtml-fluid.html" %})


## Fluid images

CSS:

    :::css
    img {
        max-width: 100%;
    }

    @media screen and (max-width: 768px) {
        #sidebar img {
            max-width: 50%;
            float: left;
            display: block;
        }
    }


* {%= link_to "xhtml-fluid-images.html", "doc/responsive/xhtml-fluid-images.html" %}
  ({%= link_to "źródło", "responsive/xhtml-fluid-images.html" %})


## Fluid typography: fonts

Oznacza to że będziemy stosować jednostki *em* a nie *px*.

Wszystkie przeglądarki mają ustawioną domyślną wielkość fontu na **16px**.
Ale rachunki są łatwiejsze dla wartości **10px**:

    :::css
    body {
      font-size: 62.5%; /* zmieniamy domyślny rozmiar fontu na 10px */
    }

Jak zostało wyliczone 62.5%:

    :::text
    target ÷ context = result
    10px   ÷ 16px    = 0.625

Teraz zamiast rachunków z 16px:

    :::css
    #navigation ul li a {
      /* font-size: 20px; */
      font-size: 1.25em;  /* 20px ÷ 16px */
    }

będą prostsze rachunki z 10px:

    :::css
    #navigation ul li a {
      /* font-size: 20px; */
      font-size: 2em;  /* 20px ÷ 10px */
    }


## Podmienianie obrazków

**TODO**:

* [Adaptive Images](http://adaptive-images.com/)
* [Responsive Images: Experimenting with Context-Aware Image Sizing](http://filamentgroup.com/lab/responsive_images_experimenting_with_context_aware_image_sizing/)
