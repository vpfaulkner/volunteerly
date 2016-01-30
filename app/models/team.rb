class Team < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships
  has_many :assignments, through: :memberships
end
