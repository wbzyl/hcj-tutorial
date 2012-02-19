#### {% title "Szablony" %}

<blockquote>
 {%= image_tag "/images/jeff_keedy_1995.jpg", :alt => "[Jeff Keedy]" %}
 <p>
  Styl z gatunku „to się mi podoba” znaczy „jestem idiotą”.
 </p>
 <p class="author">— Jeff Keedy</p>
</blockquote>

Czyli kilka szablonów, oraz link do [walidatora HTML5](http://validator.whatwg.org/).


## Szablon HTML5

Kompletny i poprawny szablon dokumentu HTML5:

    :::html
    <!doctype html public "♥♥♥">
    <html lang=pl>
    <head>
      <meta charset=utf-8>
      <title>Szablon strony HTML5</title>
      <script src="http://code.jquery.com/jquery.min.js">
      </script>
      <style>
        body { background: #E2DF9A; }
      </style>
    </head>
    <body>
      <p>ąćęłńóśźż ĄĆĘŁŃÓŚŹŻ</p>
    </body>
    </html>

Więcej przykładów –
[HTML5 Doctor](http://html5doctor.com/html-5-boilerplates/).

Bibliotekę jQuery pobieramy z [jQuery CDN](http://code.jquery.com/),
czyli z *jQuery Content Delivery Network*.

Pytanie: *boilerplate* – jak to przetłumaczyć?


## Minimalny poprawny dokument HTML5

Jeszcze jedna ciekawostka:

    :::html
    <!doctype html>
    <html lang=pl>
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
A tak jest ona renderowna przy domyślnych ustawieniach przeglądarki:
{%= link_to "simple.html", "/doc/html/tables/simple.html" %}.

Przykład tabeli z zagnieżdżonym znacznikiem *style*:
{%= link_to "Today's Sudoku", "/html/tables/scoped.html" %}.
A tak jest ona renderowna przy domyślnych ustawieniach przeglądarki:
{%= link_to "scoped.html", "/doc/html/tables/scoped.html" %}
([źródło przykładu](http://www.w3.org/TR/html5/tabular-data.html#tabular-data)).


<blockquote>
 <p>
   Pewien programista przeczytał na blogu lokalnego zoo,
   że codziennie można oglądać jagnię pasące się
   w klatce z lwem. Tak to go zafacynowało, że natychmiast
   wszedł na stronę zoo, aby to zobaczyć.
   I rzeczywiście, jagnię i lew spały obok siebie.
 </p>
 <p>
   Podejrzewając jakąś sztuczkę napisał emaila do dyrektora
   zoo z prośbą o wyjaśnienie. Oto odpowiedź dyrektora:
   „To nie jest żadna sztuczka. Dzieje się to już od
   kilku miesięcy. Ale <b>mogę powiedzieć panu w zaufaniu</b>,
   że jagnię musimy bardzo często zastępować nowym.”
 </p>
 <p class="author">[stara anegdotka]</p>
</blockquote>

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

Należy jeszcze dorobić w implementacji „dociągnięcie” elementów *sidebar* i *nav*
do elementu *footer* (tak jak jest to narysowane na obrazkach powyżej).
Jak to zrobić jest opisane w artykule Dana Cederholma,
[Faux Columns](http://www.alistapart.com/articles/fauxcolumns/).

Skąd się bierze problem zostało wyjaśnione:

* Noah Stokes. [CSS Floats 101](http://www.alistapart.com/articles/css-floats-101/)
* Peter-Paul Koch. [Clearing floats](http://www.quirksmode.org/css/clearing.html)
* [Clearance](http://www.mezzoblue.com/archives/2005/03/03/clearance/)
* Eric A. Meyer. [Containing Floats](http://complexspiral.com/publications/containing-floats/)
