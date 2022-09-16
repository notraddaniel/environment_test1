require 'rails_helper'

RSpec.describe 'Creating a book with author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    Capybara.ignore_hidden_elements = false
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('rowling')
  end
end
