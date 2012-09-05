// przykład z window.postMessage
//
// sprawdzamy adres ip komputera do którego prześlemy zawartość pliku 2011.html:
//   /sbin/ifconfig
//   inet addr:192.168.0.103
//
$(function(){
  $("#contacts li").click(function(event) {
    var email = $(this).find(".email").text();
    var origin = "http://192.168.0.103/support/index.html";
    window.parent.postMessage(email, origin);
    // window.parent.postMessage(email, 'http://127.0.0.1/support/index.html');
  });
});
