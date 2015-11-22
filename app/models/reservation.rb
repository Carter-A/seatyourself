class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validate :available?
  
  def available?
    return false if party_size <= 0 || !party_size.is_a?(Integer)
    if restaurant.reservations.where(date: self.date).where(time: self.time).sum(:party_size) + self.party_size > 100
      self.errors.add(:party_size, "Restaurant over capacity")
    end
  end
end
