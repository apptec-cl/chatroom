class HomeController < ApplicationController
	before_action :authenticate_user!
	before_action :set_rooms
	def index
	end
end
