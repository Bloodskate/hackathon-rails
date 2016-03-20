# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 # Ajax search on submit
  $('#contacts_search').submit( ->
    $.get(this.action, $(this).serialize(), null, 'script')
    false
  )
  # Ajax search on keyup
  $('#contacts_search input').keyup( ->
    $.get($("#contacts_search").attr("action"), $("#contacts_search").serialize(), null, 'script')
    false
  )