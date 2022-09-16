require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'rowling'
    fill_in 'Price', with: '5.0'
    #select('2000', from:'book_published_1i')
    #select('January', from:'book_published_2i')
    #select('01', from:'book_published_3i')
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('rowling')
    expect(page).to have_content(5.0)
    expect(page).to have_content("2022-09-16")
  end
end
