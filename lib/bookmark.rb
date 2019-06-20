require 'pg'

class Bookmark

  def self.create(choosen_url, title)
    database_connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{choosen_url}', '#{title}');")
  end

  def self.all
    result = database_connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark["title"] }
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
