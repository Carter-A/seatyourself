class User < ActiveRecord::Base
	has_secure_password
  has_many :reservations
  has_many :restaurant, through: :reservations
end
