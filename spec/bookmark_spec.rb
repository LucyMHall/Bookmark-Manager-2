require 'bookmark'

describe Bookmark do
  describe '::all' do
    it 'should return all instances of bookmark' do
      bookmarks = ['www.google.com']
      expect(Bookmark.all).to eq(bookmarks)
    end
  end
end
