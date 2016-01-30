class Slot < ApplicationRecord
  belongs_to :membership
  has_one :user, through: :membership
  has_one :team, through: :membership

  def request_sub
    # 1. Find next 4 Sundays you are not volunteering starting from today

    potentials_subs = Slot.where('date > ?', date)


    # 2. Find similar commitments without a slot for that sunday
    # 3. Find that slot's next activity slot during which the user is free
    # 4. Send email to those users with "Powerpoint on March 8?" subject and proposed sub
  end
end
