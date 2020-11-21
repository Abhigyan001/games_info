require 'rails_helper'

RSpec.feature 'Authentications', type: :feature do
  describe 'the login/out process' do
    before :each do
      user = User.create!(name: 'test1', email: 'test1@gmail.com')
      article = Article.create!(author: user, title: 'A title', text: 'Some text')
      Vote.create!(user: user, article: article)
      visit 'log_in'
      fill_in 'session_name', with: 'test1'
      click_button 'Log in!'
    end

    it 'signs me in' do
      expect(page).to_not have_content 'Login'
    end

    it 'signs me out' do
      click_link('Logout')
      expect(page).to have_content 'Login'
    end
  end
end
