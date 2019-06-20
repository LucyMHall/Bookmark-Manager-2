require 'spec_database_helper'

feature 'adding bookmarks' do

  before(:each) do
    reset_test_table
  end

  scenario 'bookmarks added via index page form will be displayed' do
    visit('/')
    fill_in 'url', with: 'www.google.com'
    click_on 'submit'
    expect(page).to have_content('www.google.com')
  end

end
