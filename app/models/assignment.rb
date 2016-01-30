class Assignment < ApplicationRecord
  belongs_to :membership
  has_one :user, through: :membership
  has_one :team, through: :membership

  def request_sub
    # 1. Find next 4 Sundays you are not volunteering starting from today
    # 2. Find similar memberships without a assignment for that sunday
    # 3. For each of those memberships, find the next availble sunday
    # 4. Send email to those users with "Powerpoint on March 8?" subject and proposed sub

    # After today, not you, same team
    potentials_subs = Assignment.where('date > ?', date)
  end
end
