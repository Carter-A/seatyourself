class User < ActiveRecord::Base
  has_many :reservations
  has_many :restaurant, through: :reservations
end
