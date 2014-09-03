$(document).ready(function() {

  $("#new_painting").on('ajax:success', function(event, responseData) {
    event.preventDefault();
    console.log(responseData)
    $(".paintings").append("<div class='gallery'><div class='thumb'>" +
                             "<h3>" + responseData.title + "</h3><br>" +
                             '<h3>' + responseData.image_url + '</h3>')
  });

  $("#new_post").on('ajax:error', function() {
    console.log("ERROR");
  });

});