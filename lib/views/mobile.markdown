#### {% title "Mobile apps" %}

* [jQuery Mobile](http://jquerymobile.com/)
  - [Getting Started with jQuery Mobile](http://jquerymobile.com/demos/1.1.0/docs/about/getting-started.html)
  - [Docs](http://jquerymobile.com/demos/1.1.0/)
  - [Data- attribute reference](http://jquerymobile.com/demos/1.1.0/docs/api/data-attributes.html)
  - [Theming the content area](http://jquerymobile.com/demos/1.1.0/docs/content/content-themes.html)
  - [Theming overview](http://jquerymobile.com/demos/1.1.0/docs/api/themes.html)
  - [Theme Roller](http://jquerymobile.com/themeroller/)
* [Responsive design](http://twitter.github.com/bootstrap/scaffolding.html#responsive)

Przykładowe strony:

* [Stanford University](http://m.stanford.edu/)
* [Khan Academy](http://www.jqmgallery.com/2011/03/07/khan-academy/)

Wygenerować (i pobrać) za pomocą [Theme Roller](http://jquerymobile.com/themeroller/) „skórkę”:

    :::html
    <!doctype html>
    <html>
    <head>
      <title>jQuery Mobile page</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/themes/random-colors.css" />
      <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile.structure-1.1.0.min.css" />
      <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
      <script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
    </head>

Play with **theme swatches**: page, header, list, input for the slider, or button.
Headers do not inherit, they default to swatch A.

**Data roles**:

* page
* header
* list (C is the default theme swatch)
* input for the slider
* button
* ...
