require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  describe 'homepage' do
    before :each do
      visit root_path
    end

    it 'displays homepage' do
      expect(page).to have_content 'Simulation'
    end

    it 'does not display show categories page' do
      expect(page).to_not have_content 'Written by'
    end
  end
end
