/* local storage */

$(document).ready(function() {

  var host = location.hostname || '@home';
  $('#caption').html('Notes form ' + host);

});

$(window).load(function() {

  updateItemsList();

  $("input[value='Save']").click(function() {
    var value = $('#text').val();
    var key = $('#key').val();
    localStorage.setItem(key, value);
    updateItemsList();
    $("#text").val('');
  });

  $("#items").bind("click", function(event) {
     // makeItem: <p><b>name</b><input Load..<input Delete..
     var key = $(event.target).closest('p').children('b').text();
     var button = $(event.target).val();
     switch (button) {
       case "Load":
         $('#text').val(localStorage.getItem(key));
         break;
       case "Delete":
         localStorage.removeItem(key);
         updateItemsList();
         break;
     };
  });

  // funkcje pomocnicze

  function updateItemsList() {
    var list = [];
    for (var i = 0, len = localStorage.length; i < len; i++) {
      list.push(makeItem(localStorage.key(i)));
    }
    $('#items').html(list.sort().join("\n"));
  };

  function makeItem(name) {
     return '<p><b>' + name + '</b>' +
       '<input type="button" value="Delete"><input type="button" value="Load"></p>';
  };

});
