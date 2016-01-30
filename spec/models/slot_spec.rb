require 'rails_helper'

describe Slot do
  describe '#request_sub' do
    it 'finds open slot' do
      original_slot = create(:slot, date: Date.new(2016, 01, 31))
      team = original_slot.team
      other_membership = create(:membership, team: team)
      other_slot = create(:slot, membership: other_membership, date: Date.new(2016, 02, 07))
      expect(original_slot.request_sub).to eq [other_slot]
    end
  end
end
