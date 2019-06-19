require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
      result = connection.exec("SELECT * FROM bookmarks;")
      @array_of_bookmarks = result.map { |bookmark| bookmark["url"] }
      @array_of_bookmarks
  end
end
