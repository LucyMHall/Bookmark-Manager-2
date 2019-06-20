require 'pg'

def reset_test_table
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks;")
end

def create_test_data
  Bookmark.create("www.google.com", "Google")
end
