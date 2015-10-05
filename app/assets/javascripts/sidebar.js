var bind_sortable = function() {
  $('.sortable').sortable({
    dropOnEmpty: true,
    stop: function(evt, ui) {
      var data = $(this).sortable('serialize', {attribute: 'data-sortable'});

      $.ajax({
        data: data,
<<<<<<< HEAD
        type: 'PUT',
=======
        type: 'POST',
>>>>>>> 50909944e588210042c3523701cf9bb09dea7a4f
        dataType: 'json',
        url: '/admin/sidebar/sortable',
        statusCode: {
          200: function(data, textStatus, jqXHR) {
            $('#sidebar-config').replaceWith(data.html);
            bind_sortable();
          },
          500: function(jqXHR, textStatus, errorThrown) {
            alert('Oups?');
          }
        }
      });
    },

  });

<<<<<<< HEAD
  $('.draggable').draggable({
=======
  $('.draggable').draggable({ 
>>>>>>> 50909944e588210042c3523701cf9bb09dea7a4f
    connectToSortable: '.sortable',
    helper: "clone",
    revert: "invalid"
  });
<<<<<<< HEAD
  $('#available_box').disableSelection();
  $('.sidebar_item').on('ajax:success', function(data, textStatus, xhr) {
    $(this).parent().replaceWith(data);
  });

  $('.deletion_link').on('ajax:success', function(data, textStatus, xhr) {
    $(this).parent().remove();
  });
}

=======
  $('.sidebar_item').on('ajax:success', function(data, textStatus, xhr) {
    $(this).parent().replaceWith(data);
  }
  );
  $('.deletion_link').on('ajax:success', function(data, textStatus, xhr) {
    $(this).parent().remove();
  }
  );
};
>>>>>>> 50909944e588210042c3523701cf9bb09dea7a4f
$(document).ready(function() {
  bind_sortable();
});
