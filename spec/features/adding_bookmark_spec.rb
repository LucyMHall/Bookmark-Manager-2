require 'spec_database_helper'

feature 'adding bookmarks' do

  before(:each) do
    reset_test_table
  end

  scenario 'when no bookmarks have been added the page is empty' do
    visit('/bookmarks')
    expect(page).to have_content([])
  end

  scenario 'bookmarks added via index page form will be displayed' do
    visit('/')
    fill_in 'url', with: 'www.google.com'
    fill_in 'title', with: 'Google'
    click_on 'submit'
    expect(page).to have_content('Google')
  end

end
