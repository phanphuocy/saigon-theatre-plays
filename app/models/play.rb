class Play < ApplicationRecord
  def free?
    from_price.blank? || from_price.zero?
  end

  def self.upcoming
    where("starts_at >= ?", 15.day.ago).order("starts_at")
  end
end
