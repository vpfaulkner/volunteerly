class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :assignments
end
