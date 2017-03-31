class UsersChannel < ApplicationCable::Channel
  def subscribed
	stream_from "UsersChannel"
	if !current_user.blank?
		user = User.find(current_user.id)
		user.conected = 1
		user.save
		ActionCable.server.broadcast 'UsersChannel',method: "conected",user_id: current_user.id
	end
  end

  def unsubscribed
	user = User.find(current_user.id)
	user.conected =  0
	user.save
	ActionCable.server.broadcast 'UsersChannel',method: "disconected",user_id: current_user.id
  end

  def login data

  end
end
