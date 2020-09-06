require 'rails_helper'

describe Course do
  let(:professor) { create(:professor) }
  let(:course) { create(:course, professor_id: professor.id) }

  describe '#upvote!' do
    before do
      expect(course.votes).to eq 0
      course.upvote!
    end

    it 'increases +1 the votes amount' do
      expect(course.votes).to eq 1
    end
  end
end