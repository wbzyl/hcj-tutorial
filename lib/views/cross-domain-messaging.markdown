#### {% title "Przesyłanie wiadomości między domenami" %}

O co chodzi w przykładzie? No o co chodzi!

* [HTML5 Web Messaging](http://dev.w3.org/html5/postmsg/)
* [MDC»DOM»window.postMessage](https://developer.mozilla.org/en/DOM/window.postMessage)

TODO: omówić przykład jquery/cdm.

# window.postMessage

{%= image_tag '/images/cdm.png', :alt => "[html5 web messaging]" %}

Na komputerze **192.168.0.1** umieszczamy *index.html*:

    :::html
    <!doctype html>
    <html lang="pl">
      <head>
        <script src="js/application.js"></script>
      </head>
      <body>
        <section id="form">
          <h2>Summer Class, 2011</h2>
          ...
        </section>
        <section id="contacts">
          <iframe src="http://sigma.ug.edu.pl/~wbzyl/hobbits.html"></iframe>
        </section>
      </body>
    </html>


oraz plik *application.js* z kodem odbierajacym wiadomość wysłaną
z *sigma.ug.edu.pl*::

    :::jquery_javascript js/application.js
    $(document).ready(function() {
      $(window).bind("message", function(event) {
        $("#key").val(event.originalEvent.data);
      });
    });

A na komputerze **sigma.ug.edu.pl** plik *hobbits.html* z kontaktami,
który zawiera kod javascript przypisujący do zdarzenia *onclick*
funkcję przesyłającą wiadomość:

    :::jquery_javascript sigma.ug.edu.pl
    $(function(){
      $("#contacts li").click(function(event) {
        var email = $(this).find(".email").text();
        var origin = "http://192.168.0.103/support/index.html";
        window.parent.postMessage(email, origin);
      });
    });

A tak sprawdzamy adres ip komputera do którego prześlemy zawartość
pliku *hobbits.html*:

    /sbin/ifconfig
      ...
      inet addr:192.168.0.103

Przy takich ustawieniach przesyłanie wiadomości jest możliwe z **sigma.ug.edu.pl**
tylko do komputera z ip **192.168.0.103**. Full security.

Ale jeśli adres IP wpiszemy „gwiazdkę*, to wiadomość będzie przesłana zawsze.
Security: ale wtedy powinniśmy sprawdzić z jakiego komputera pochodzi
message:

    :::jquery_javascript
    $(document).ready(function() {
      $(window).bind("message", function(event) {
        if (event.originalEvent.origin == 'http://sigma.ug.edu.pl') {
          $("#key").val(event.originalEvent.data);
        } else {
          alert('Security alert!');
        }
      });
    });
