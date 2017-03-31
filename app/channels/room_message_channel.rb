class RoomMessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from "RoomMessageChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak data
	  RoomMessage.create(user_id: current_user.id,content: data['message'],room_id: data['room_id'] )
  end
end
