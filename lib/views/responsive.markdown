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

Responsive Web pages, przykłady:

* [Bootstrap, from Twitter](http://twitter.github.com/bootstrap/) –
  simple and flexible HTML, CSS, and Javascript for popular user interface components and interactions
* [Think Vitamin](http://thinkvitamin.com/) –
  a blog for web designers and developers
* [dConstruct 2012](http://2012.dconstruct.org/) –
  a gathering of smart and entertaining people poking at the intersection of technology and culture


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




<!--

Media queries:

    :::css
body {
background-color: grey;
}
@media screen and (max-width:
body {
background-color: red;
}
}
@media screen and (max-width:
body {
background-color: orange;
}
}
@media screen and (max-width:
body {
background-color: yellow;
}
}
@media screen and (max-width:
body {
background-color: green;
}
}

    :::css
a {
display: block;
height: 40px;
float: left;
font-size: 1.2em;
padding-right: 0.8em;
background: url(images/headerRight.png) no-repeat scroll top right;
}
a span {
background: url(images/headerLeft.png) no-repeat;
display: block;
line-height: 40px;
padding-left: 0.8em;
}
a {
float: left;
height: 40px;
line-height: 40px;
padding-left: 0.8em;
padding-right: 0.8em;
border-top-left-radius: 8px;
border-top-right-radius: 8px;
background-image: url(images/headerTiny.png);
background-repeat: repeat-x;
}


<header>
<nav>
<ul id="nav-list">
<li><a href="#" title="Home">Home</a></li>
<li><a href="#" title="About">About</a></li>
</ul>
</nav>
</header>

-->
