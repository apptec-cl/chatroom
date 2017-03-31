# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	$(document).on 'click', '#send_message', ->
		App.room_message.speak $("#message_texarea").val(),$("#send_message").data('room')
		$("#message_texarea").val('')
	$(document).keypress (e) ->
		if e.which == 13
			App.room_message.speak $("#message_texarea").val(),$("#send_message").data('room')
			$("#message_texarea").val('')
		return
