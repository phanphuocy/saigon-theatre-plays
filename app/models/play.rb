class Play < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :recommendations, dependent: :destroy
  has_many :recommenders, through: :recommendations, source: :user

  validates :name, :description, presence: true
  validates :description, length: {minimum: 25}
  validates :from_price, numericality: {greater_than_or_equal_to: 0}
  validates :capacity, numericality: {only_integer: true, greater_than: 0}
  validates :image_file_name, allow_blank: true, format: {
      with: /\w+\.(gif|jpg|jfif|png)\z/i,
      message: "must reference a GIF, JPG, or PNG image"
  }
  
  def free?
    from_price.blank? || from_price.zero?
  end

  def self.upcoming
    where('starts_at >= ?', 15.day.ago).order('starts_at')
  end

  def seats_left
    capacity - bookings.size
  end

  def sold_out?
    seats_left <= 0
  end
end
