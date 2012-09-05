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
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/themes/random-colors.css">
      <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile.structure-1.1.0.min.css">
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


## Kompilowane szablony Handlebars

* [{{handlebars}}](http://handlebarsjs.com/)
  - [precompilation](http://handlebarsjs.com/precompilation.html)

Instalujemy *Node.js* i moduł *handlebars*:

    :::bash
    npm install -g handlebars

Szablon handlebar:

    :::rhtml js/templates/figure.handlebar
    {{#each images}}
    <section data-role="page" data-theme="a" id="{{id}}">
      <figure data-role="content">
        <img src="images/{{image}}" alt="{{title}}">
        <figcaption>{{title}}</figcaption>
      </figure>
    </section>
    {{/each}}

Kompilacja szablony:

    :::bash
    cd js/templates
    handlebars figure.handlebar -f figure.js

Plik JavaScript:

    :::js js/application.js
    $(function() {
      var template = Handlebars.templates['figure'];
      var context  = {
        images : [
          {id: "image1", image: "tatry904.jpg", title: "Hala Gąsienicowa, luty 2012"},
          {id: "image4", image: "tatry956.jpg", title: "Kasprowy, luty 2012"}
        ]
      };
      var html     = template(context);
      $('body').append(html);
    });

Plik *index.html*:

    :::html
    <!doctype html>
    <html>
      <head>
        <title>WB Mobile Pages</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/themes/random-colors.css">
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile.structure-1.1.0.min.css">
        <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
        <script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>

        <script src="js/handlebars.runtime-1.0.0.beta.6.js"></script>

        <script src="js/templates/figure.js"></script>
        <script src="js/application.js"></script>
      </head>

      <body>

        <section data-role="page" data-theme="a" id="page1">
          <header data-role="header">
            <h1>Tatry</h1>
          </header>
          <article data-role="content">
            <ul data-role="listview" data-inset="true" data-filter="true">
              <li data-role="divider">Hala Gąsienicowa</a></li>
              <li><a href="#image1">Hala Gąsienicowa, luty 2012</a></li>
              <li><a href="#image4">Kasprowy, luty 2012</a></li>
              <li data-role="divider">Pozostałe dolinki…</a></li>
            </ul>
          </article>
        </section>

      </body>
    </html>
