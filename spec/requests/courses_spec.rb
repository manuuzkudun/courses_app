require 'rails_helper'

describe 'Courses API' do
  let(:professor) { create(:professor) }
  let(:course) { create(:course, professor_id: professor.id) }

  describe 'PATCH /courses/:id/upvote' do    
    subject { patch "/courses/#{course.id}/upvote" }

    before do
      expect(course.votes).to eq 0
    end

    it 'increases +1 the votes amount' do
      subject
      expect(course.reload.votes).to eq 1
    end

    it 'redirects to root_path' do
      expect(subject).to redirect_to(root_path)
    end
  end
end
