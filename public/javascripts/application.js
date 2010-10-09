function hideEditor() {
  $('#editor').fadeOut(400, function () {
    $('#new').fadeIn(100);
  });
}

function showEditor() {
  $('#new').fadeOut(100, function () {
    $('#editor').show();
  });
}
