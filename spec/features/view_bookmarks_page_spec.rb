require 'spec_database_helper'

feature 'viewing bookmarks' do

  before(:each) do
    reset_test_table
  end

  scenario 'when no bookmarks have been added the page is empty' do
    visit('/bookmarks')
    expect(page).to have_content([])
  end
  scenario 'when a bookmark is added it is visible on the page' do
    create_test_data
    visit('/bookmarks')
    expect(page).to have_content("ww.google.com")
  end
end
