// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

(function($) {
  $(document).ready(function() {
    $(".add-choice").click(function(e) {
      e.preventDefault();
      var clone = $('<input type="text" name="election[choices][]"><br>');
      $(".choices-field").append(clone);
    });
  });
})(jQuery);
