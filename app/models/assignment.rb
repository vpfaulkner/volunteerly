class Assignment < ApplicationRecord
  belongs_to :membership
  has_one :user, through: :membership
  has_one :team, through: :membership

  def potential_subs
    team
      .assignments
      .where(date: Date.today..(date + 4.weeks))
      .reject { |a| a.membership == membership }
  end
end
