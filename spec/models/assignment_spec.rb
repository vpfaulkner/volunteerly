require 'rails_helper'

describe Assignment do
  describe '#request_sub' do
    it 'does not find your own slot' do
      original_assignment = create(:assignment, date: Date.new(2016, 01, 31))
      your_second_assignment = create(:assignment,
                                      team: original_assignment.team,
                                      membership: original_assignment.membership,
                                      date: Date.new(2016, 02, 07))
      available_assignment = create(:assignment,
                                    team: original_assignment.team,
                                    date: Date.new(2016, 02, 07))
      expect(original_assignment.potential_subs).to eq [available_assignment]
    end

    it 'looks only at next 4 weeks' do
      original_assignment = create(:assignment, date: Date.new(2016, 01, 31))
      available_assignment = create(:assignment,
                                    team: original_assignment.team,
                                    date: Date.new(2016, 02, 07))
      distant_assignment = create(:assignment,
                                  team: original_assignment.team,
                                  date: Date.new(2016, 04, 07))
      expect(original_assignment.potential_subs).to eq [available_assignment]
    end

    it 'only looks at assignments within the same team' do
      original_assignment = create(:assignment, date: Date.new(2016, 01, 31))
      available_assignment = create(:assignment,
                                    team: original_assignment.team,
                                    date: Date.new(2016, 02, 07))
      other_team_assignment = create(:assignment,
                                     team: create(:team),
                                     date: Date.new(2016, 02, 07))
      expect(original_assignment.potential_subs).to eq [available_assignment]
    end
  end
end
