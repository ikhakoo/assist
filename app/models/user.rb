class User < ActiveRecord::Base
	has_secure_password
	has_many :bookings
  has_many :services through :bookings
  has_many :assistants
end
