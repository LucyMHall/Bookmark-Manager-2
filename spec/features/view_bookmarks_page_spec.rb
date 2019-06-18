feature 'view bookmarks' do
  scenario 'view a list of bookmarked URLs' do
    visit('/bookmarks')
    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
  end
end
