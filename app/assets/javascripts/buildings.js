$(document).ready(function() {
  $(".field").trigger('refresh_autonumeric');

  let count = 1
  $('#js-nested_fields_link').on('click', function() {
    setTimeout(function(){ 
      $(this).data('click', ++count)
      $('.nearest_stations:last').text(`最寄り駅${count}`)
    }, 0);
  });
});