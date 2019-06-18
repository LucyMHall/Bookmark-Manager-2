require 'bookmark'

describe Bookmark do
  describe '::all' do
    it 'should return all instances of bookmark' do
      @bookmarks = ["http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com"]
      expect(Bookmark.all).to include("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.google.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
    end
  end
end
