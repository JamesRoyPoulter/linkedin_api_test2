# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('#browse_title').click ()->
  $('#browse_content').show()
  $('#search_content').hide()

$('#search_title').click ()->
  $('#search_content').show()
  $('#browse_content').hide()

$('#display_results').click ()->
  $('search_results').show()

