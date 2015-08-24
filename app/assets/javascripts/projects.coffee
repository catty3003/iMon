# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->
  $('#project_deadline').datepicker({
    format: "yyyy-mm-dd",
    calendarWeeks: true,
    autoclose: true,
    todayHighlight: true
  });

# Änderung von Checkbox-Werten speichern
$(document).on 'ready page:load', ->
  $(".checkable").click ->
    $(this).parents('form').submit();


#damit Karousel beim Laden der Seite direkt startet
$(document).on 'ready page:load', ->
    $('.carousel').carousel({
      interval: 4000
    });





