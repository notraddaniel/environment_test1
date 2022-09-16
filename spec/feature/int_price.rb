require 'rails_helper'

RSpec.describe 'Creating a book with author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'rowling'
    fill_in 'Price', with: 5
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('rowling')
    expect(page).to have_content(5)
  end
end
