require 'bookmark'
require 'spec_database_helper.rb'

describe Bookmark do

  describe '::all' do
    it 'should return all instances of bookmark' do

      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      expect(Bookmark.all).to include("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.google.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
    end
  end

  describe '::create' do
    it 'should take a url as an argument and add the url to the database' do
      Bookmark.create('www.fakeurl.com')
      expect(Bookmark.all).to include('www.fakeurl.com')
    end
  end

end
