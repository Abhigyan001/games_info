require 'rails_helper'

RSpec.feature 'Articles creation', type: :feature do
  describe 'sign in and enters article new page' do
    before :each do
      user = User.create!(name: 'test1', email: 'test1@gmail.com')
      article = Article.create!(author: user, title: 'A title', text: 'Some text')
      Vote.create!(user: user, article: article)
      visit 'log_in'
      fill_in 'session_name', with: 'test1'
      click_button 'Log in!'
      click_link('Create Article, test1')
    end

    it 'displays new article page' do
      expect(page).to have_content 'Write your article!'
    end

    it 'does not allows a new article when logged out' do
      click_link('Logout')
      visit 'articles/new'
      expect(page).to have_content 'You must be logged in to perform this action'
    end
  end
end
