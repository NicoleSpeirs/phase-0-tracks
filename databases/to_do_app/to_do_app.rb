# To Do List



# require gems
require 'sqlite3'
require 'faker'

#  SQLite3 database
db = SQLite3::Database.new("to_do_list.db")
db.results_as_hash = true

# table
create_table_cmd = <<-SQL
  CREATE TABLE IF to_do_list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    urgent BOOLEAN
  )
SQL



