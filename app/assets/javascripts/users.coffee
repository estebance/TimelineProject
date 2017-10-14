# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
# make toast disappear
  $('.comment_form').hide()

  $('.create_comment').click ->
    element_id = $(this).attr('data_post_id')
    $('#comment_post_' + element_id + '_form').show();
    return

  return


