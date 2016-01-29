require 'rails_helper'

describe Slot do
  describe '#request_sub' do
    it 'finds open slot' do
      original_slot = create(:slot, date: Date.new(2016, 01, 31))
      activity = original_slot.activity
      other_commitment = create(:commitment, activity: activity)
      other_slot = create(:slot, commitment: other_commitment, date: Date.new(2016, 02, 07))
      expect(original_slot.request_sub).to eq [other_slot]
    end
  end
end
