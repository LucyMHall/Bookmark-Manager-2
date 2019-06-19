require 'spec_database_helper'
feature 'view bookmarks' do

  before(:each) do
    reset_test_table
  end

  scenario 'when no bookmarks have been added the page is empty' do
    visit('/bookmarks')
    expect(page).to have_content([])
  end
end
