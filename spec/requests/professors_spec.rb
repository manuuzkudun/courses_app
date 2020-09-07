require 'rails_helper'

describe 'Professors API' do
  describe 'PATCH /professors/:id/upvote' do
    let(:professor) { create(:professor) }
    
    subject { patch "/professors/#{professor.id}/upvote" }

    before do
      expect(professor.votes).to eq 0
    end

    it 'increases +1 the votes amount' do
      subject
      expect(professor.reload.votes).to eq 1
    end

    it 'redirects to root_path' do
      expect(subject).to redirect_to(root_path)
    end
  end
end



#   
#   let(:course) { create(:course, professor_id: professor.id) }

#   describe '#upvote!' do
#     before do
#       expect(course.votes).to eq 0
#       course.upvote!
#     end

#     it 'increases +1 the votes amount' do
#       expect(course.votes).to eq 1
#     end
#   end
# end