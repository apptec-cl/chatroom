App.users = App.cable.subscriptions.create "UsersChannel",
  connected: ->

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    if data['method'] == 'conected'
      $('#user_'+data.user_id).css('background-color', 'green')
    else if data['method'] == 'disconected'
      $('#user_'+data.user_id).css('background-color', 'red')

  login: ->
    @perform 'login',{login: login}
