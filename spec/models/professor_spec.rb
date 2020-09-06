require 'rails_helper'

describe Professor do
  let(:professor) { create(:professor) }

  describe '#upvote!' do
    before do
      expect(professor.votes).to eq 0
      professor.upvote!
    end

    it 'increases +1 the votes amount' do
      expect(professor.votes).to eq 1
    end
  end
end