# To Do List



# require gems
require 'sqlite3'
require 'faker'

#  SQLite3 database
db = SQLite3::Database.new("to_do_list.db")
db.results_as_hash = true

# table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS to_do_list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    complete BOOLEAN
  )
SQL

db.execute(create_table_cmd)

def add(item)
  db.execute("INSERT INTO to_do_list (item) VALUES (?)", [item])
  puts "#{item} has been added"
end

#### DRIVER CODE

puts "Welcome to To Do list!"

loop do
  puts "what would you like todo?"
  puts "enter 1 to add"
  puts "enter 2 to see your list"
  puts "type exit to exit"

  input = gets.chomp
  case input
  when "1"
    puts "What would you like to add?"
    item = gets.chomp
    add(item)

  when "2"
    display_list #make this method
  when "exit"
    puts "goodbye!"
    break
  else
    puts "That's an unknown command, please try again..."
  end
end
