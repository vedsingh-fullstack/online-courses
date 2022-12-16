# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validate data' do
    let(:author) { build(:author, first_name: 'test', last_name: 'user') }

    it 'has a valid factory' do
      expect(author).to be_valid
    end
  end

  describe 'transfer course on delete' do
    let!(:author) { create(:author, first_name: 'test2', last_name: 'user2') }
    let!(:course) { create(:course, author: author_deleted) }
    let!(:author_deleted) { create(:author, first_name: 'test3', last_name: 'user3') }

    it 'should transfer the course to another author' do
      expect(author_deleted.destroy).to eq(author_deleted)
      expect(course.reload.author).to eq(author)
    end
  end
end
