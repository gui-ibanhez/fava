document.addEventListener('DOMContentLoaded', function() {
    const elems = document.querySelectorAll('select');
    M.FormSelect.init(elems);
  });

  document.addEventListener('DOMContentLoaded', function() {
    const elems = document.querySelectorAll('.datepicker');
    M.Datepicker.init(elems);
  });

  document.addEventListener('DOMContentLoaded', function() {
    const elems = document.querySelectorAll('.modal');
    M.Modal.init(elems);
  });

  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.autocomplete');
    M.Autocomplete.init(elems);
  });