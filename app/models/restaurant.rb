class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations

  def available?(party_size, time)
    return false if party_size <= 0 || !party_size.is_a?(Integer)
    self.reservations.where(time: time).sum(:party_size) + party_size <= 100
  end
end
