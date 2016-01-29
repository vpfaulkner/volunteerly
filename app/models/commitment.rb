class Commitment < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :slots
end
