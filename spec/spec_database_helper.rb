require 'pg'

def reset_test_table
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks;")
end

def create_test_data
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
  connection.exec("SELECT * FROM bookmarks;")
end
