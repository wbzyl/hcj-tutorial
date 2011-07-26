#### {% title "CoffeScript" %}

Idzie nowe… Dlaczego?

* [All your commas are belong to Array](http://wtfjs.com/)
* Paul Graham. [Succinctness is Power](http://www.paulgraham.com/power.html)
* Marijn Haverbeke. [Eloquent JavaScript](http://eloquentjavascript.net/) –
  a modern introduction to programming
* Ivo Wetzel, Zhang Yi Jiang. [JavaScript Garden](http://javascriptgarden.info/)
* [JavaScript Lint](http://www.javascriptlint.com/)


## Instalacja modułu CoffeeScript

Standardowa instalacja: instalujemy NodeJS i NPM,
następnie instalujemy moduł *coffee-script*.
[Jak to zrobić?](http://sinatra.inf.ug.edu.pl/nosql/srodowisko)


## Konfigurujemy edytor

Jak skonfigurować edytor:

* [text editor plugins](https://github.com/jashkenas/coffee-script/wiki/Text-editor-plugins)
* [emacs mode](https://github.com/defunkt/coffee-mode)
* [How To Write A Emacs Major Mode For Syntax Coloring](http://xahlee.org/emacs/elisp_syntax_coloring.html)

Możemy też skorzystać z edytora online:

* [Cloud9](http://cloud9ide.com/)


## Zaczynamy

Sporo przykładów jest na stronie CoffeeScript:

* [CoffeScript home](http://jashkenas.github.com/coffee-script/)


## Hello world!

Jak zwykle zaczynamy od programu „hello world”:

    :::plain hello.coffee
    console.log 'Witaj świecie!'

Kompilujemy i uruchamiamy program:

    coffee hello.coffee

Tylko kompilacja:

    coffee -c hello.coffee

Uruchamianie skompilowanego kodu:

    node hello.js
