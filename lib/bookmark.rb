require 'pg'

class Bookmark


  def self.all
    result = database_connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark["url"] }
  end

  private

  def self.database_connection
    if ENV['ENVIRONMENT'] = 'test'
      PG.connect(dbname: 'bookmark_manager_test')
    else
      PG.connect(dbname: 'bookmark_manager')
    end
  end

end
