#### {% title "Korzystamy z wtyczek" %}

Coś z internetu:

* Strona [jQuery Plugins](http://plugins.jquery.com/) zawiera za dużo wtyczek.
  Trudno tu coś wybrać.
* [15 jQuery Plugins To Create A User Friendly Tooltip](http://www.webdesignbooth.com/15-jquery-plugins-to-create-an-user-friendly-tooltip/)

Pisanie wtyczek dla jQuery nie jest trudne. Wystarczy podejrzeć
jak się to robi:

* Addy Osmani.
  [Smashing Magazine Essential jQuery Plugin Patterns](http://coding.smashingmagazine.com/2011/10/11/essential-jquery-plugin-patterns/)

A potem przeanalizować prosty przykład:

* [Build a Better Tooltip with jQuery Awesomeness](http://net.tutsplus.com/tutorials/javascript-ajax/build-a-better-tooltip-with-jquery-awesomeness/)


## Instalujemy wtyczkę *qTip2*

Poniższy kod pokazuje typową instalację wtyczki dla jQuery.

Wtyczka [qTip2](http://craigsworks.com/projects/qtip2/) - pretty powerful tooltips:

    :::html
    <!doctype html>
    <head>
      <meta charset=utf-8>
      <link type="text/css" rel="stylesheet" href="jquery.qtip.css">
      <title>jQuery Plugins</title>
    </head>
    <body>
      <p>Published by
      <a href="http://pl.wikipedia.org/wiki/Werner_Heisenberg" title="1901–1976">Werner Heisenberg</a>
      in 1927, the principle means that
      it is impossible to determine simultaneously both the position and
      the momentum of an electron or any other particle with any great
      degree of accuracy or certainty.</p>

      <script src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
      <script src="jquery.qtip.min.js"></script>
      <script>
        $('a[title]').qtip();
      </script>
    </body>
    </html>


## Wtyczka dla Google Maps V3

Przyjrzyjmy się wtyczce [$.goMap](http://www.pittss.lv/jquery/gomap/index.php).

Oto przykład użycia:

* W Zakopanem jest kilka cukierni {%= link_to "U Samanty", "/doc/jquery/google/u_samanty.html" %}.
  Na mapce zaznaczono trzy (z czterech?) cukiernie.
  Źródło {%= link_to "u_samanty.html", "/jquery/google/u_samanty.html" %}.
