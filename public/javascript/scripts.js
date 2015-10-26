
$(document).ready(function(){/* off-canvas sidebar toggle */


  var checkoutForm = $('#book_checkout_form');
  checkoutForm.hide();

  $('#btn_borrow_book').on('click', function() {
    checkoutForm.show(); // .hide();
  });

  var map = $('#map');
  map.hide();
  $('#btn_close_map').hide();
  
  // Show Map
  $('#btn_show_map').on('click', function() {
    map.show();
    $('#btn_show_map').hide();
    $('#btn_close_map').show();
    $('.cover_map').hide();

  });
   // Close Map
  $('#btn_close_map').on('click', function() {
  map.hide();
  $('#btn_close_map').hide();
  $('#btn_show_map').show();
  $('.cover_map').show();

  });


  $('[data-toggle=offcanvas]').click(function() {
    	$(this).toggleClass('visible-xs text-center');
      $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
      $('.row-offcanvas').toggleClass('active');
      $('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
      $('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
      $('#btnShow').toggle();
  });
});