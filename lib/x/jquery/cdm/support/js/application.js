/* cross domain messaging */

$(document).ready(function() {

  $(window).bind("message", function(event) {
    $("#key").val(event.originalEvent.data);
    // console.log('support');
    // console.log(event);
    // sprawdzamy, skąd są dane
    // event.originalEvent.origin == http://sigma.ug.edu.pl
  });

});
