require 'pg'

class Bookmark

  def self.create(choosen_url)
    @choosen_url = choosen_url
    database_connection.exec("INSERT INTO bookmarks(url) VALUES('#{@choosen_url}');")
  end

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
