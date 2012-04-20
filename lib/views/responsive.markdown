#### {% title "Responsive Web Design" %}

Słowa „responsive” użył po raz pierwszy Ethan Marcotte w artykule
[Responsive Web Design](http://www.alistapart.com/articles/responsive-web-design)/
opublikowanym na [A List Apart](http://www.alistapart.com/).

* Mark Otto.
  [Building Twitter Bootstrap](http://www.alistapart.com/articles/building-twitter-bootstrap/)
* Ethan Marcotte.
  [Fluid Images](http://www.alistapart.com/articles/fluid-images/)
* Mat Marquis.
  [Responsive Images: How they Almost Worked and What We Need](http://www.alistapart.com/articles/responsive-images-how-they-almost-worked-and-what-we-need/)
* Jonathan Smiley.
  [Dive into Responsive Prototyping with Foundation](http://www.alistapart.com/articles/dive-into-responsive-prototyping-with-foundation/)
* Ben Frain.
  [Responsive Web Design with HTML5 and CSS3](http://www.packtpub.com/responsive-web-design-with-html-5-and-css3/book):

Użyteczne rzeczy:

* Dodatki:
  [Firesizer](https://addons.mozilla.org/en-US/firefox/addon/firesizer/) (*Firefox*),
  [Windows Resizer](https://chrome.google.com/webstore/detail/kkelicaakdanhinjdeammmilcgefonfh) (*Chrome*)
* [A quick and simple image placeholder service](http://placehold.it)
* Tiffany B. Brown.
  [Modern Debugging Tips and Tricks](http://www.alistapart.com/articles/modern-debugging-tips-and-tricks/)
* Ben Frain.
  [Website Design: Easily display the viewport size of your page (for responsive designs](http://benfrain.com/easily-display-the-viewport-size-of-your-page-for-responsive-designs/)
* [Download the Android SDK](http://developer.android.com/sdk/index.html)
* [HTML5 outliner](http://gsnedders.html5.org/outliner/)

Responsive Web pages, przykłady:

* [Bootstrap, from Twitter](http://twitter.github.com/bootstrap/) –
  simple and flexible HTML, CSS, and Javascript for popular user interface components and interactions
* [Think Vitamin](http://thinkvitamin.com/) –
  a blog for web designers and developers
* [dConstruct 2012](http://2012.dconstruct.org/) –
  a gathering of smart and entertaining people poking at the intersection of technology and culture


*Uwaga:* W poniższym kodzie usunąłem wszystkie odległości pionowe.
Dlaczego? Ponieważ w „responsive design” istotne są tylko „szerokości”.


## Media queries

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


## Fixed layout

Zaczynamy od XHTML:

* {%= link_to "xhtml-template.html", "doc/responsive/xhtml-template.html" %}
  ({%= link_to "źródło", "responsive/xhtml5-template.html" %})


## Blokowanie *auto resizing*

    :::css
    <meta name="viewport" content="initial-scale=2.0,width=device-width" />

* {%= link_to "xhtml-no-auto-resize.html", "doc/responsive/xhtml-no-auto-resize.html" %}
  ({%= link_to "źródło", "responsive/xhtml-no-auto-resize.html" %})


## Viewport – widths

css pixels = device pixels:

    :::css
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

Media gueries nie wystarczają. Przy zmianach CSS, w *vieport* nie mieści się cała strona.
Potrzebny jest jakiś mechanizm likwidujący tę skokową zmianę.

Będziemy stosować technikę *fluid* oraz do przeliczania wymiarów
wzór Marcotta:

    :::text
     target
    --------- = result
     context

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
        width: 96%; /* albo 100%, albo 90%, albo cokolwiek sensownego */
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


## Fluid fonts

Używamy jednostek *em* a nie *px*. Obecnie, we wszystkich przeglądarkach (sprawdzić!)
domyślny rozmiar fontu to **16px*.

    :::css
    #navigation ul li a {
        /* font-size: 20px; */
        font-size: 1.25em;


## Podmienianie obrazków

**TODO**:

* [Adaptive Images](http://adaptive-images.com/)
* [Responsive Images: Experimenting with Context-Aware Image Sizing](http://filamentgroup.com/lab/responsive_images_experimenting_with_context_aware_image_sizing/)
