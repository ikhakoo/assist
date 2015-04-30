class Assistant < ActiveRecord::Base
	belongs_to :user
	has_many :bookings
	has_many :services through :bookings
end
