class RoomsController < ApplicationController

	before_action :authenticate_user!
	before_action :set_room,only: [:show]
	before_action :set_rooms

	def index
	end

	def new
		@room = Room.new
	end

	def create
		@room = Room.new room_param
		if @room.save
			redirect_to @room
		else
		end
	end
	def show
	end
	private
		def room_param
			params.require(:room).permit(:name)
		end
		def set_room
			@room = Room.find(params[:id])
		end
end
