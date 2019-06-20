require 'bookmark'
require 'spec_database_helper.rb'

describe Bookmark do

  describe '::create' do
    it 'takes a url and a title as arguments and add them to the database' do
      Bookmark.create('www.fakeurl.com','FakeUrl')
      expect(Bookmark.create('www.fakeurl.com','FakeUrl')).to be_an_instance_of(PG::Result)
      expect(Bookmark.all).to include("FakeUrl")
    end
  end

  describe '::all' do
    it 'returns the title for all bookmarks which have been added' do
      Bookmark.create('http://www.makersacademy.com', 'Makers')
      Bookmark.create('http://www.destroyallsoftware.com', 'Destroy')
      Bookmark.create('http://www.google.com', 'Google')
      expect(Bookmark.all).to include("Makers")
      expect(Bookmark.all).to include("Google")
      expect(Bookmark.all).to include("Destroy")
    end
  end


end
