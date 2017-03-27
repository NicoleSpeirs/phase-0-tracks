$(document).ready(function () {
  $('li').on('click', function(e) {
  e.preventDefault();
      $(this).toggle()
  });
});
