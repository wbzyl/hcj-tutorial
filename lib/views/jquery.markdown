#### {% title "jQuery" %}

jQuery:

* [How jQuery Works](http://docs.jquery.com/Tutorials:How_jQuery_Works)
* [Learning jQuery](http://www.learningjquery.com)
* [jQuery plugins](http://plugins.jquery.com)

Javascript:

* notatki – NoSQL/SpiderMonkey
* [Learning Advanced JavaScript](http://ejohn.org/apps/learn/)

## Instalujemy wtyczkę

Przykład: [Tooltip](http://plugins.jquery.com/project/tooltip).

    :::html
    <head>
      <meta charset=utf-8>
      <title>jQuery Plugins</title>
      <script src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
      <script src="jquery.tooltip.min.js"></script>
      <style>
      article, aside, details, figcaption,
        figure, footer, header,
        hgroup, menu, nav, section { display: block; }
      #tooltip {
        position: absolute;
        z-index: 1;
        border: 1px solid #111;
        background-color: #eee;
        opacity: 0.5;
      }
      </style>
    </head>
    <body>

    <p><a title="A tooltip with default settings, the href is displayed below the title"
       href="http://maps.google.pl">Link to Google Maps</a></p>

    <script>
      $(function() {
        $("a").tooltip({showURL: false});
      });
    </script>
    </body>
    </html>

Inne wtyczki:

* [15 jQuery Plugins To Create A User Friendly Tooltip](http://www.webdesignbooth.com/15-jquery-plugins-to-create-an-user-friendly-tooltip/)
* [10 Excellent ToolTip Plugins with jQuery](http://www.reynoldsftw.com/2009/03/10-excellent-tooltip-plugins-with-jquery/)

JTZ:

* [Build a Better Tooltip with jQuery Awesomeness](http://net.tutsplus.com/tutorials/javascript-ajax/build-a-better-tooltip-with-jquery-awesomeness/)
