App.room_message = App.cable.subscriptions.create "RoomMessageChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	$("#message_chat_room_"+data['room_id']).append(data['message'])
    # Called when there's incoming data on the websocket for this channel

  speak: (message, room_id) ->
    @perform 'speak',{message: message,room_id: room_id}

