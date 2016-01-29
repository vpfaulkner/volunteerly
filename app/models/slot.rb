class Slot < ApplicationRecord
  belongs_to :commitment
  has_one :user, through: :commitment
  has_one :activity, through: :commitment
end
