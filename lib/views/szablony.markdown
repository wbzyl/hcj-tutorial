#### {% title "Szablony" %}

Kilka szablonów, oraz link do [walidatora HTML5](http://validator.whatwg.org/).


## Szablon HTML5

Kompletny i poprawny szablon dokumentu HTML5:

    :::html
    <!doctype html>
    <html lang=pl>
      <head>
        <meta charset=utf-8>
        <title>HTML 5 complete</title>
        <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
        <style>
        article, aside, details, figcaption, figure, footer, header,
        hgroup, menu, nav, section { display: block; }
        </style>
      </head>
    <body>
      <p>ąćęłńóśźż ĄĆĘŁŃÓŚŹŻ</p>
    </body>
    </html>

Przykład pobrałem ze strony
[HTML5 Doctor](http://html5doctor.com/html-5-boilerplates/).

Bibliotekę jQuery pobieramy
z [Content Delivery Network](http://docs.jquery.com/Downloading_jQuery#CDN_Hosted_jQuery)
(w skrócie *CDN*).

Pytanie: *boilerplate* – jak to przetłumaczyć?


## Minimalny poprawny dokument HTML5

Jeszcze jedna ciekawostka:

    :::html
    <!doctype html>
    <meta charset=utf-8>
    <title>Minimalny dokument HTML5</title>
    <p>ąćęłńóśźż ĄĆĘŁŃÓŚŹŻ</p>


## Szablon tabeli

Tabelę budujemy z następujących elementów:

* table, tr, td, caption, thead, tbody, tfoot, colgroup, col

Korzystamy z atrybutów:

* colspan i rowspan.

Po wpisaniu *verbatim*:

          A test table with merged cells
    /-----------------------------------------\
    |          |      Average      |   Red    |
    |          |-------------------|  eyes    |
    |          |  height |  weight |          |
    |-----------------------------------------|
    |  Males   | 1.9     | 0.003   |   40%    |
    |-----------------------------------------|
    | Females  | 1.7     | 0.002   |   43%    |
    \-----------------------------------------/

Złożona z wykorzystaniem CSS użytego na tej stronie:

<table summary="This table gives some statistics about fruit
                flies: average height and weight, and percentage
                with red eyes (for both males and females).">
<caption>A test table with merged cells</caption>
<tr><th rowspan=2><th colspan=2>Average<th rowspan=2>Red<br>eyes
<tr><th>height      <th>weight
<tr><th>males       <td>1.9<td>0.003<td>40%
<tr><th>females     <td>1.7<td>0.002<td>43%
</table>

([źródło](http://www.w3.org/TR/html401/struct/tables.html#h-11.1))

Powyższa tabela korzysta z następujących elementów:
*table*, *caption*, *tr*, *th* i *atrybutów*, *rowspan*, *colspan*.

Kod dla tej tabeli:
{%= link_to "simple.html", "/html/tables/simple.html" %}.
A tak jest ona renderownaa przy domyślnych ustawieniach przeglądarki:
{%= link_to "simple.html", "/doc/html/tables/simple.html" %}


# Tworzymy szablon bloga

Jakich użyjemy znaczników z listy [HTML5 Elements](http://simon.html5.org/html5-elements)?

Cytat ułatwiajacy nieco przygotowanie szablonu:
„Sections are really logical separations, whereas articles describe real content.”

{%= image_tag "/images/blog.png", :alt => "[Blog: HTML4 i HTML5]" %}

Przykładowe implementacje:

* {%= link_to "wersja html4", "/doc/html/blog/html4.html" %}
  ({%= link_to "html4", "/html/blog/html4.html" %}, {%= link_to "css", "/html/blog/blog4.css" %})
* {%= link_to "wersja html5", "/doc/html/blog/html5.html" %}
  ({%= link_to "html5", "/html/blog/html5.html" %}, {%= link_to "css", "/html/blog/blog5.css" %})

