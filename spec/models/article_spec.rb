require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do
    it 'has associations' do
      should belong_to(:author).class_name('User')
    end
    it 'has associations' do
      should have_and_belong_to_many(:categories)
    end
    it 'has associations' do
      should have_many(:votes)
    end

    it 'validates' do
      should validate_presence_of(:title)
    end
    it 'validates' do
      should validate_presence_of(:text)
    end
    it 'validates' do
      should validate_uniqueness_of(:title).case_insensitive
    end
  end
end
