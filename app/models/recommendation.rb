class Recommendation < ApplicationRecord
  belongs_to :play
  belongs_to :user
end
