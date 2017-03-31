class RoomMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
	  ActionCable.server.broadcast 'RoomMessageChannel', message: render_message(message),room_id: message.room_id
	 #ActionCable.server.broadcast 'room_channel',message: data['message']
  end
  private
  	def render_message(message)
	  	ApplicationController.renderer.render(partial: "rooms/message",locals: {message: message })
	end
end
