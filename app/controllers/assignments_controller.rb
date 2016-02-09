class AssignmentsController < ApplicationController
  def index
    sundays = (Date.today..Date.today + 1.year).select(&:sunday?)
    all_assignments = current_user
                      .assignments
                      .where(date: sundays)
                      .all
    @assignments_by_sunday = sundays.each_with_object({}) do |sunday, assignments_hash|
      assignments_hash[sunday] = all_assignments.select { |a| a.date == sunday }
    end
  end
end
