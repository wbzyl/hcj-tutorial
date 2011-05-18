#### {% title "Coffescript" %}

Idzie nowe… Dlaczego?

* [All your commas are belong to Array](http://wtfjs.com/)
* Paul Graham. [Succinctness is Power](http://www.paulgraham.com/power.html)
* Marijn Haverbeke. [Eloquent JavaScript](http://eloquentjavascript.net/) –
  a modern introduction to programming
* Ivo Wetzel, Zhang Yi Jiang. [JavaScript Garden](http://javascriptgarden.info/)
* [JavaScript Lint](http://www.javascriptlint.com/)


## Instalacja modułu CoffeeScript

Najpierw musimy zainstalować NodeJS i NPM.
[JTZ?](http://sinatra.inf.ug.edu.pl/nosql/srodowisko)

Moduł CoffeeScript instalujemy korzystając z NPM:

    npm install -g coffee-script
      /home/wbzyl/.node/bin/coffee -> /home/wbzyl/.node/lib/node_modules/coffee-script/bin/coffee
      /home/wbzyl/.node/bin/cake -> /home/wbzyl/.node/lib/node_modules/coffee-script/bin/cake
      coffee-script@1.1.1 /home/wbzyl/.node/lib/node_modules/coffee-script


## Edytor

Jak skonfigurować edytor:

* [text editor plugins](https://github.com/jashkenas/coffee-script/wiki/Text-editor-plugins)
* [emacs mode](https://github.com/defunkt/coffee-mode)
* [How To Write A Emacs Major Mode For Syntax Coloring](http://xahlee.org/emacs/elisp_syntax_coloring.html)

Dla projektów napisanych w NodeJS:

* [Cloud9](http://cloud9ide.com/)

## Zaczynamy

* [CoffeScript home](http://jashkenas.github.com/coffee-script/)


### Hello world!

Program:

    :::plain_text hello.coffee
    console.log 'Witaj świecie!'

Kompilacja + uruchamianie:

    coffee hello.coffee

Kompilacja:

    coffee -c hello.coffee

Uruchamianie:

    node hello.js
