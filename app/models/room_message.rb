class RoomMessage < ApplicationRecord
	belongs_to :room
	belongs_to :user
	after_create_commit { RoomMessageJob.perform_later self}
end
