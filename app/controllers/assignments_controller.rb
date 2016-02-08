class AssignmentsController < ApplicationController
  def index
    sundays = (Date.today..Date.today + 1.year).select(&:sunday?)
    all_assignments = current_user
                      .assignments
                      .where(date: sundays)
                      .all
    @assignments = sundays.inject({}) do |assignments_hash, sunday|
      assignments_hash[sunday] = all_assignment.select { |a| a.date == sunday }
    end
  end
end
