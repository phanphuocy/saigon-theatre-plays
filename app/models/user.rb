class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :recommendations, dependent: :destroy
  has_many :recommended_plays, through: :recommendations, source: :play
  has_secure_password

  validates :name, presence: true
  validates :email,
      presence: true,
      format: /\A\S+@\S+\z/,
      uniqueness: {case_sensitive: false}

  def self.authenticate(email, password)
    user = find_by(email: email)
    user && user.authenticate(password)
  end
end
